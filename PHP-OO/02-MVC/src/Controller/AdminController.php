<?php

use Symfony\Component\HttpFoundation\Response;

class AdminController
{
    public function dashboard()
    {
        # echo '<h1>PAGE DASHBOARD | CONTROLLEUR</h1>';
        return new Response('<h1>PAGE DASHBOARD | REPONSE CONTROLLEUR</h1>');
    }

    public function user()
    {
        # echo '<h1>PAGE GESTION UTILISATEUR | CONTROLLEUR</h1>';
        return new Response('<h1>PAGE GESTION UTILISATEUR | REPONSE CONTROLLEUR</h1>');
    }
}