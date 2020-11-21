<?php

/**
 * This is the main configuration file
 */

use DI\Bridge\Slim\Bridge;
use DI\ContainerBuilder;

// Composer autoloader
require_once __DIR__ . '/../vendor/autoload.php';

// Application & Service Container
$app = Bridge::create();
$container = $app->getContainer();
