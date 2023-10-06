<?php

/**
 * L'Autoload de composer chargement automatiquement
 * les fichiers liés à mes dépendances.
 * ------------------------------------
 * Je pourrais aussi l'utiliser pour mes propres fichiers
 * en remplacement de spl_autoload_register par exemple.
 */
require_once './vendor/autoload.php';

/**
 * Chargement du moteur de templating Twig
 * cf. https://twig.symfony.com/doc/3.x/intro.html#installation
 */
$loader = new \Twig\Loader\FilesystemLoader('./templates');
$twig = new \Twig\Environment($loader);

/**
 * Ici le composant HTTP FOUNDATION de Symfony,
 * me permet d'accéder à mes superglobales
 * avec une approche orienté objet.
 * cf. https://symfony.com/doc/current/components/http_foundation.html
 */
use Symfony\Component\HttpFoundation\Request;
$request = Request::createFromGlobals();
# dump($request);

/**
 * Les paramètres $_GET permettent de déterminer le routage de notre app.
 * Cad. Quel controlleur et quelle action exécuter.
 */
$controller = !empty($request->get('controller')) ? ucfirst($request->get('controller')).'Controller' : 'DefaultController';
$action     = $request->get('action') ?? 'home';

/**
 * Se déclenche automatiquement au moment de l'instanciation
 * d'une classe. Elle permet de charger automatiquement
 * les fichiers qui sont instanciés.
 */
spl_autoload_register(function($className) {
    # echo "Chargement de la classe : $className <br>";
    require_once ".".DIRECTORY_SEPARATOR."src".DIRECTORY_SEPARATOR."Controller".DIRECTORY_SEPARATOR."$className.php";
});

/**
 * Cette fonction permet d'executer une autre fonction en lui
 * passant des paramètres.
 */

/** @var \Symfony\Component\HttpFoundation\Response $response */
$response = call_user_func_array([new $controller(), $action], []);
$response->send();