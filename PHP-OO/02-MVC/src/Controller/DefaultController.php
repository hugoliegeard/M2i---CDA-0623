<?php

use Symfony\Component\HttpFoundation\Response;

class DefaultController extends AbstractController
{
    public function home(): Response
    {
        return $this->render('default/home.html.twig');
    }

    public function contact(): Response
    {
        # echo '<h1>PAGE CONTACT | CONTROLLEUR</h1>';
        # return new Response('<h1>PAGE CONTACT | REPONSE CONTROLLEUR</h1>');
        return $this->render('default/contact.html.twig');
    }
}