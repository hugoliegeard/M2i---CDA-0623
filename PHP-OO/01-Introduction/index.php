<?php

# Importation de la classe Ecole
use Classes\Classe;
use Classes\Ecole;
use Classes\Eleve;

require_once './Classes/Ecole.php';
require_once './Classes/Classe.php';
require_once './Classes/Eleve.php';

# Création d'un objet PUBLIC
# "new Ecole()" est ce qu'on appelle une instanciation.
# L'instanciation donne naissance à un objet.
# $ecole est donc un objet de la classe Ecole
# $ecole à accès aux propriétés de cette classe.
$ecole = new Ecole('M2i F', '18 Av...', 10, 'Emma');

# $ecole->nom = "M2i";
# $ecole->setNom('M2i Formation');

# $ecole->setEffectif(16);
# $ecole->setDirecteur('Emmanuelle BERTHE');
# $ecole->setAdresse('16 Av Jean-Jaurès 94600 Choisy-Le-Roi FR');
# $ecole->directeur = "Emmanuelle BERTHE";
# $ecole->adresse = "16 Av Jean-Jaurès 94600 Choisy-Le-Roi FR";
# $ecole->effectif = 16;

$ecole2 = new Ecole('M2i', '16 Av...', 16, 'Emma');
# $ecole2->nom = 'M2i Lyon';
# $ecole2->setNom('M2i Formation - Lyon');

echo '<pre>';
print_r($ecole);
# print_r($ecole->nom);
print_r($ecole->getNom());
echo '<hr>';
print_r($ecole2);
# print_r($ecole2->nom);
print_r($ecole2->getNom());
echo '</pre>';

# Création des classes
$front = new Classe('Front-End', '6', 'Julien POIRIER', 15, 'BC-6A');
$back = new Classe('Back-End', '6', 'Paul EDIDE', 15, 'BC-6A');
$full = new Classe('Fullstack', '6', 'Hugo LIEGEARD', 15, 'BC-6A');

echo '<hr>';
echo '<pre>';
print_r($front);
echo '<hr>';
print_r($back);
echo '<hr>';
print_r($full);
echo '</pre>';

# Création des apprenants
$apprenant1 = new Eleve('Ali', 'HAMOUDI', 32);
$apprenant2 = new Eleve('Amélie', 'REYNAUD', 20);
$apprenant3 = new Eleve('Freddy', 'ETUM', 33);
$apprenant4 = new Eleve('Yves', 'MANJAKATSARA', 35);
$apprenant5 = new Eleve('Salif', 'DIARRA', 26);
$apprenant6 = new Eleve('Mohamed', 'Yahaya', 35);

echo '<hr>';
echo '<pre>';
print_r($apprenant1);
echo '<hr>';
print_r($apprenant4);
echo '</pre>';

# Affection des élèves
$full->addEleve($apprenant1);
$back->addEleve($apprenant2);
$front->addEleve($apprenant3);
$back->addEleve($apprenant4);
$front->addEleve($apprenant5);
$full->addEleve($apprenant6);

# Affectation de classe
$ecole->addClass($front);
$ecole->addClass($back);
$ecole->addClass($full);

echo '<pre>';
print_r($ecole);
echo '</pre>';

/* --
    CONSIGNE : En partant de l'objet $ecole ; affichez la liste
    ol, ul, li des classes et pour chaque classe les étudiants.
-- */

# 1. Récupération des classes
$classes = $ecole->getClasses();
# var_dump($classes);

# 2. Affichez la liste des classes à l'aide d'une boucle
echo '<ol>';

/** @var Classe $classe */
foreach ($classes as $classe) :

    # Afficher le nom de la classe
    echo '<li>';
    echo $classe->getNom();

    # 3. Récupérer les élèves
    $eleves = $classe->getEleves();

    # 4. Afficher la liste des élèves
    echo '<ul>';

    /** @var Eleve $eleve */
    foreach ($eleves as $eleve) :

        echo '<li>';
        echo $eleve->getPrenom();
        echo '</li>';

    endforeach;
    
    echo '</ul>';
    echo '</li>';
    
endforeach;
echo '</ol>';