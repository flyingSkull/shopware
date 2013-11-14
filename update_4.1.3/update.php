#!/usr/bin/env php
<?php
define('SW_PATH', realpath(__DIR__ . '/../'));
define('UPDATE_PATH', __DIR__);

date_default_timezone_set('Europe/Berlin');

ini_set('display_errors', 1);
error_reporting(-1);

session_cache_limiter(false);

// Silence errors during session start, Work around session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5) failed: Permission denied (13)
@session_start();

@set_time_limit(0);

set_include_path(
    realpath(SW_PATH . '/engine/Library') . PATH_SEPARATOR
);

require 'Slim/Slim.php';
\Slim\Slim::registerAutoloader();

require UPDATE_PATH . '/src/functions.php';

// Get Database-Connection
$conn = getConnection(SW_PATH);

require_once SW_PATH . '/engine/Shopware/Components/Migrations/AbstractMigration.php';
require_once SW_PATH . '/engine/Shopware/Components/Migrations/Manager.php';

if (is_dir(UPDATE_PATH . '/assets/migrations')) {
    $migrationPath = UPDATE_PATH . '/assets/migrations';
} else {
    $migrationPath = SW_PATH . '/_sql/migrations';
}

$migrationManger = new \Shopware\Components\Migrations\Manager($conn, $migrationPath);

cls();
echo " ___| |__   ___  _ ____      ____ _ _ __ ___ " . "\n";
echo "/ __| '_ \ / _ \| '_ \ \ /\ / / _\` | '__/ _ \\" . "\n";
echo "\__ \ | | | (_) | |_) \ V  V / (_| | | |  __/" . "\n";
echo "|___/_| |_|\___/| .__/ \_/\_/ \__\,_|_|  \___|" . "\n";
echo "                |_|    " . "\n";
echo "______________________________________________" . "\n";

output(color_string("Shopware 4.1.3 Update", 'green'));

output("This script will update your database, create indexes and create new cache directories.");
output("The database update may take a while.");

get_input("\nPress any key to start the update");
cls();

print_header("Filesystem-Checks");
if (!checkFilesystem()) {
    exit(1);
}

if (!clearCache()) {
    exit(1);
}

$migrationManger->createSchemaTable();
$currentVersion = $migrationManger->getCurrentVersion();

print_header("Database Migration");
if (!applyDeltas($migrationManger)) {
    exit(1);
}

cls();
output(color_string("Successfully updated", 'green'));
output("The update has been finished successful");
output("Your shop is currently in maintenance mode.");
output(color_string('Please delete the updater (/update) from your server', 'yellow'));

get_input("\nPress any key to exit");
exit(0);

function clearCache()
{
    deleteDir(SW_PATH . '/cache/templates/');
    deleteDir(SW_PATH . '/engine/Library/Mpdf/tmp');
    deleteDir(SW_PATH . '/engine/Library/Mpdf/ttfontdata');
    deleteDir(SW_PATH . '/engine/Shopware/Models/Attribute', true);
    deleteDir(SW_PATH . '/engine/Shopware/Proxies', true);

    $hasErrors = false;

    if (is_dir(SW_PATH . '/engine/Shopware/Proxies')) {
        print_error("Could not remove directory" . SW_PATH . '/engine/Shopware/Proxies');
        print_warn("Please remove the directory: rm -rf " . SW_PATH . '/engine/Shopware/Proxies');
        $hasErrors = true;
    }

    if (is_dir(SW_PATH . '/engine/Shopware/Attribute')) {
        print_error("Could not remove directory" . SW_PATH . '/engine/Shopware/Attribute');
        print_warn("Please remove the directory: rm -rf " . SW_PATH . '/engine/Shopware/Attribute');
        $hasErrors = true;
    }

    return !$hasErrors;
}

function output($string)
{
    echo $string . "\n";
}

function applyDeltas(\Shopware\Components\Migrations\Manager $migrationManger)
{
    $migrationManger->createSchemaTable();
    $currentVersion = $migrationManger->getCurrentVersion();

    $migrations = $migrationManger->getMigrationsForVersion($currentVersion);

    $count = count($migrations);
    $adapter = new Zend_ProgressBar_Adapter_Console();
    $progressBar = new Zend_ProgressBar($adapter, 0, $count);

    foreach ($migrations as $migration) {
        try {
            $migrationManger->apply($migration);
        } catch (\Exception $e) {
            $reflection = new ReflectionClass(get_class($migration));
            $classFile = $reflection->getFileName();

            print_error("Could not apply delta: " . $migration->getVersion());
            print_error("File: " . $classFile);
            print_error("\nErrorMessage:\n" . $e->getMessage());
            print_error("\nFailed statement:\n" . implode("\n", $migration->getSql()));

            return false;
        }

        $progressBar->next();
    }

    $progressBar->finish();

    return true;
}

function checkFilesystem()
{
    require_once SW_PATH . '/engine/Shopware/Components/Check/Path.php';
    $shopwareCheckPath = new Shopware_Components_Check_Path();
    $shopwareCheckPath->setBasePath(SW_PATH);

    clearstatcache();
    // Check file & directory permissions
    $systemCheckPathResults = $shopwareCheckPath->toArray();

    foreach ($systemCheckPathResults as $key => $value) {
        if (!$value['result']) {
            $fileName = SW_PATH . '/' . $value['name'];
            @mkdir($fileName, 0777, true);
            @chmod($fileName, 0777);
        }
    }

    clearstatcache();

    $shopwareCheckPath = new Shopware_Components_Check_Path();
    $shopwareCheckPath->setBasePath(SW_PATH);
    $systemCheckPathResults = $shopwareCheckPath->toArray();

    if ($shopwareCheckPath->hasErrors()) {
        foreach ($systemCheckPathResults as $key => $value) {
            if (!$value['result']) {
                $fileName = SW_PATH . '/' . $value['name'];
                print_error("Could not create $fileName");
                print_warn("Please create the missing directory: mkdir -m 777 -p $fileName");
            }
        }

        return false;
    }

    return true;
}

function color_string($str, $color = null)
{
    $ansiColors = array(
        "off"        => 0,
        "bold"       => 1,
        "italic"     => 3,
        "underline"  => 4,
        "blink"      => 5,
        "inverse"    => 7,
        "hidden"     => 8,
        "black"      => 30,
        "red"        => 31,
        "green"      => 32,
        "yellow"     => 33,
        "blue"       => 34,
        "magenta"    => 35,
        "cyan"       => 36,
        "white"      => 37,
        "black_bg"   => 40,
        "red_bg"     => 41,
        "green_bg"   => 42,
        "yellow_bg"  => 43,
        "blue_bg"    => 44,
        "magenta_bg" => 45,
        "cyan_bg"    => 46,
        "white_bg"   => 47
    );

    $setColor = function ($str, $color) use ($ansiColors) {
        $colorAttrs = explode('+', $color);
        $ansiStr = '';
        foreach ($colorAttrs as $attr) {
            $ansiStr .= "\033[" . $ansiColors[$attr] . "m";
        }
        $ansiStr .= $str . "\033[" . $ansiColors["off"] . "m";

        return $ansiStr;
    };

    if ($color !== null) {
        $str = $setColor($str, $color);
    }

    return $str;
}

function cls()
{
    system("clear");
}

function print_error($string)
{
    output(color_string($string, 'red'));
}

function print_warn($string)
{
    output(color_string($string, 'yellow'));
}


function print_header($string)
{
    static $steps = 1;
    $maxSteps = 2;

    cls();
    output(color_string(sprintf("Step %s of %s", $steps++, $maxSteps), 'green'));
    output($string . "\n");
}

function get_input($message = null)
{
    if ($message !== null) {
        echo $message;
    }

    $handle = fopen('php://stdin', 'r');
    $line = fgets($handle);
    return trim($line);
}
