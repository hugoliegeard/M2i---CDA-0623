<?php

use Symfony\Component\HttpFoundation\Response;

class UserController
{
    public function register()
    {
        # echo '<h1>PAGE INSCRIPTION | CONTROLLEUR</h1>';
        return new Response('<h1>PAGE INSCRIPTION | REPONSE CONTROLLEUR</h1>');
    }

    public function login()
    {
        # echo '<h1>PAGE CONNEXION | CONTROLLEUR</h1>';
        return new Response('<h1>PAGE CONNEXION | REPONSE CONTROLLEUR</h1>');
    }

    public function logout()
    {
        # echo '<h1>PAGE DECONNEXION | CONTROLLEUR</h1>';
        return new Response('<h1>PAGE DECONNEXION | REPONSE CONTROLLEUR</h1>');
    }
}