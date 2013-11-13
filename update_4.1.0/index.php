<?php
define('SW_PATH', realpath(__DIR__ . '/../'));
define('UPDATE_PATH', __DIR__);

$app = require __DIR__ . '/src/app.php';

$app->run();
