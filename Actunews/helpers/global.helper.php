<?php

/**
 * Permet de faciliter le
 * debuggage de notre app.
 * @param $debug
 * @return void
 */
function dump($debug) {
    echo '<pre>';
    print_r($debug);
    echo '</pre>';
}

/**
 * Debug et Coupe l'exécution
 * de l'application.
 * dd signifie : dump and die
 * @param $debug
 * @return void
 */
function dd($debug) {
    dump($debug);
    die();
}

/**
 * Permet d'afficher un résumé de x mots
 * à partir d'un texte.
 * @param string $text
 * @param int $length
 * @return string
 */
function summarize(string $text, int $length = 180): string
{

    # Suppression des balises HTML
    $string = strip_tags($text);

    # Si mon string est > a $length
    if (strlen($string) > $length) {

        # Je coupe ma chaine à la $length
        $stringCut = substr($string, 0, $length);

        # Je m'assure de ne pas couper de mot en plein milieu
        $string = substr($stringCut, 0, strrpos($stringCut, ' '));
    }

    # Je retourne le résultat de ma fonction
    return $string . '...';
}