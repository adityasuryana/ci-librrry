<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/', 'Home', ['filter' => 'login']);
$routes->get('/home', 'Home::index', ['filter' => 'login']);

//routing login (beta)
//$routes->get('login', 'Home::index', ['filter' => 'login']);

