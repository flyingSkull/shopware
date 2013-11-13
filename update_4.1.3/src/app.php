<?php
date_default_timezone_set('Europe/Berlin');

ini_set('display_errors', 1);
error_reporting(-1);

set_include_path(
    realpath(SW_PATH . '/engine/Library') . PATH_SEPARATOR
);

require 'Slim/Slim.php';
\Slim\Slim::registerAutoloader();

// Initiate slim
$app = new \Slim\Slim(array(
    'debug'           => false,
    'check.ip'        => false,
    'skippable.check' => true,
    'templates.path'  => __DIR__ . '/templates'
));

require __DIR__ . '/functions.php';

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


$app->hook('slim.before.dispatch', function () use ($app, $migrationManger) {
    $baseUrl = getBaseUrl($app);

    session_cache_limiter(false);
    session_set_cookie_params(7200, $baseUrl);

    // Silence errors during session start, Work around session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5) failed: Permission denied (13)
    @session_start();
    @set_time_limit(0);

    $selectedLanguage = getLanguage();
    $language = require("assets/lang/$selectedLanguage.php");

    $clientIp = getRealIpAddr();

    $app->view()->setData('app', $app);
    $app->view()->setData('clientIp', $clientIp);
    $app->view()->setData('baseUrl', $baseUrl);
    $app->view()->setData('language', $language);
    $app->view()->setData('selectedLanguage', $selectedLanguage);

    $ipCheckEnabled = (bool) $app->config('check.ip');
    if ($ipCheckEnabled && !isAllowed($clientIp)) {
        $app->view()->setData('filePath', UPDATE_PATH . '/' . 'allowed_ip.txt');

        $app->render('header.php', array('tab' => 'start'));
        $app->render('noaccess.php');
        $app->render('footer.php');
        $app->response()->status(403);
        $app->stop();
    }

    // Redirect to "done" page if session is marked as done
    if (isset($_SESSION['DONE']) && $app->router()->getCurrentRoute()->getName() !== 'done') {
        $url = $app->urlFor('done');
        $app->response()->redirect($url);
    }
});


// Step 1: Select language
$app->map('/', function () use ($app) {
    $app->render('header.php', array('tab' => 'start'));
    $app->render('welcome.php');
    $app->render('footer.php');

})->via('GET', 'POST')->name("welcome");

$app->map('/noaccess', function () use ($app) {
    $app->view()->setData('filePath', UPDATE_PATH . '/' . 'allowed_ip.txt');

    $app->render('header.php', array('tab' => 'start'));
    $app->render('noaccess.php');
    $app->render('footer.php');
    $app->response()->status(403);

})->via('GET', 'POST')->name("noAccess");


$app->map('/checks', function () use ($app) {
    require_once SW_PATH . '/engine/Shopware/Components/Check/Path.php';
    $shopwareCheckPath = new Shopware_Components_Check_Path();
    $shopwareCheckPath->setBasePath(SW_PATH);

    $app->view()->setData("error", false);

    clearstatcache();
    // Check file & directory permissions
    $systemCheckPathResults = $shopwareCheckPath->toArray();

    foreach ($systemCheckPathResults as $value) {
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

    $directoriesToDelete = array(
        'cache/templates/'                 => false,
        'engine/Library/Mpdf/tmp'          => false,
        'engine/Library/Mpdf/ttfontdata'   => false,
        'cache/templates/'                 => false,
        'engine/Shopware/Models/Attribute' => true,
        'engine/Shopware/Proxies'          => true,
    );

    $results = array();

    $hasErrors = false;
    foreach ($directoriesToDelete as $directory => $deleteDirecory) {
        $result = true;

        $filePath = SW_PATH . '/' . $directory;
        deleteDir($filePath, $deleteDirecory);
        if ($deleteDirecory && is_dir($filePath)) {
            $result = false;
            $hasErrors = true;
        }

        if ($deleteDirecory) {
            $results[$directory] = $result;
        }
    }

    if ($shopwareCheckPath->hasErrors() || $hasErrors) {
        $app->view()->setData("error", true);
    }


    if ($app->view()->getData("error") == false && $app->request()->get("action")) {
        // No errors and submitted form - proceed with next-step
        $app->redirect($app->urlFor("dbmigration"));
    }

    $isSkippableCheck = $app->config('skippable.check');
    if ($isSkippableCheck && $app->view()->getData("error") == false && $app->request()->get("force") !== "1") {
        // No errors, skip page except if force parameter is set
        $app->redirect($app->urlFor("dbmigration"));
    }

    $app->render("header.php", array(
        "tab"                                => "system",
        'systemCheckResultsWritePermissions' => $systemCheckPathResults,
        'filesToDelete'                      => $results
    ));
    $app->render('checks.php', array());
    $app->render('footer.php');

})->via('GET', 'POST')->name("checks");




$app->map('/dbmigration', function () use ($app) {
    $app->render('header.php', array('tab' => 'dbmigration'));
    $app->render('dbmigration.php');
    $app->render('footer.php');
})->via('GET', 'POST')->name('dbmigration');




$app->map('/applyMigrationsCount', function () use ($app, $migrationManger) {
    $migrationManger->createSchemaTable();
    $currentVersion = $migrationManger->getCurrentVersion();
    $count = count($migrationManger->getMigrationsForVersion($currentVersion));

    $response = $app->response();
    $response['Content-Type'] = 'application/json';
    $response->status(200);

    $data = array(
        'count'     => $count,
        'batchSize' => 1,
    );

    $response->body(json_encode($data));
})->via('GET', 'POST')->name('applyMigrationsCount');




$app->map('/applyMigrations', function () use ($app, $migrationManger) {
    $currentVersion = $migrationManger->getCurrentVersion();
    $migration = $migrationManger->getNextMigrationForVersion($currentVersion);

    $response = $app->response();
    $response['Content-Type'] = 'application/json';
    $response->status(200);

    if (null === $migration) {
        $data = array(
            'success' => true,
        );
        $response->body(json_encode($data));

        return;
    }

    try {
        $migrationManger->apply($migration);
    } catch (\Exception $e) {
        $reflection = new ReflectionClass(get_class($migration));
        $classFile = $reflection->getFileName();

        $data = array(
            'success'      => false,
            'deltaFile'    => $classFile,
            'deltaVersion' => $migration->getVersion(),
            'deltaLabel'   => $migration->getLabel(),
            'errorMsg'     => $e->getMessage(),
        );

        $response->body(json_encode($data));

        return;
    }

    $data = array(
        'success'      => true,
        'deltaVersion' => $migration->getVersion(),
        'deltaLabel'   => $migration->getLabel(),
    );

    $response->body(json_encode($data));
})->via('GET', 'POST')->name('applyMigrations');




$app->map('/done', function () use ($app) {
    $shopPath = str_replace('/update', '/', $app->request()->getRootUri());

    $app->render('header.php', array('tab' => 'done'));
    $app->render('done.php', array('shopPath' => $shopPath));
    $app->render('footer.php');

    $_SESSION['DONE'] = true;
})->via('GET', 'POST')->name('done');

return $app;
