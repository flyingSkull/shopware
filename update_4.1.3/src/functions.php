<?php

function getRealIpAddr()
{
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        $ip = $_SERVER['REMOTE_ADDR'];
    }

    return $ip;
}

/**
 * @param $app \Slim\Slim
 * @return $this
 */
function getBaseUrl($app)
{
    $filename = (isset($_SERVER['SCRIPT_FILENAME']))
            ? basename($_SERVER['SCRIPT_FILENAME'])
            : '';
    $baseUrl = $app->request()->getScriptName();
    if (empty($baseUrl)) {
        return '';
    }
    if (basename($baseUrl) === $filename) {
        $basePath = dirname($baseUrl);
    } else {
        $basePath = $baseUrl;
    }
    if (substr(PHP_OS, 0, 3) === 'WIN') {
        $basePath = str_replace('\\', '/', $basePath);
    }
    $basePath = rtrim($basePath, '/') . '/';

    return $basePath;
}

function deleteDir($dir, $includeDir = false)
{
    $dir = rtrim($dir, '/') . '/';
    if (!is_dir($dir)) {
        return;
    }

    try {
        foreach (new RecursiveIteratorIterator(new RecursiveDirectoryIterator($dir, FilesystemIterator::SKIP_DOTS), RecursiveIteratorIterator::CHILD_FIRST) as $path) {
            $path->isFile() ? @unlink($path->getPathname()) : @rmdir($path->getPathname());
        }
    } catch (\Exception $e) {};

    if ($includeDir) {
        @rmdir($dir);
    }
}

function isAllowed($clientIp)
{
    $allowed = trim(file_get_contents(UPDATE_PATH . '/' . 'allowed_ip.txt'));
    $allowed = explode("\n", $allowed);
    $allowed = array_map('trim', $allowed);

    return in_array($clientIp, $allowed);
}


function getLanguage() {
    /**
     * Load language file
     */
    $allowedLanguages = array("de", "en");
    $selectedLanguage = explode(',', $_SERVER['HTTP_ACCEPT_LANGUAGE']);
    $selectedLanguage = substr($selectedLanguage[0], 0, 2);
    if (empty($selectedLanguage) || !in_array($selectedLanguage, $allowedLanguages)) {
        $selectedLanguage = "de";
    }
    if (isset($_POST["language"]) && in_array($_POST["language"], $allowedLanguages)) {
        $selectedLanguage = $_POST["language"];
        $_SESSION["language"] = $selectedLanguage;
    } elseif (isset($_SESSION["language"]) && in_array($_SESSION["language"], $allowedLanguages)) {
        $selectedLanguage = $_SESSION["language"];
    } else {
        $_SESSION["language"] = $selectedLanguage;
    }

    return $selectedLanguage;
}

function getConnection($shopPath) {
    if (file_exists($shopPath . '/config.php')) {
        $config = require $shopPath . '/config.php';
    } elseif (file_exists($shopPath . '/config.update.php')) {
        $config = require $shopPath . '/config.update.php';
    } elseif (file_exists($shopPath . '/engine/Shopware/Configs/Custom.php')) {
        $config = require $shopPath . '/engine/Shopware/Configs/Custom.php';
    } else {
        die('Could not find shopware config');
        exit(1);
    }

    $dbConfig = $config['db'];

    if (!isset($dbConfig['host'])) {
        $dbConfig['host'] = 'localhost';
    }

    $dsn = array();
    $dsn[] = 'host=' . $dbConfig['host'];
    $dsn[] = 'dbname=' . $dbConfig['dbname'];

    if (isset($dbConfig['port'])) {
        $dsn[] = 'port=' . $dbConfig['port'];
    }
    if (isset($dbConfig['unix_socket'])) {
        $dsn[] = 'unix_socket=' . $dbConfig['unix_socket'];
    }

    $dsn = 'mysql:' . implode(';', $dsn);

    try {
        $conn = new PDO(
            $dsn,
            $dbConfig['username'],
            $dbConfig['password'],
            array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'UTF8'")
        );
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        echo 'ERROR: ' . $e->getMessage();
        exit(1);
    }

    return $conn;
}



