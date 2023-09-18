<!--
    Tout d'abord, nous pouvons écrire du HTML dans un fichier
    ayant l'extension PH. L'inverse n'est pas possible.
-->

<h1>Introduction PHP</h1>
<h2>Instructions d'affichage et d'écriture</h2>

<?php

echo 'Bonjour'; // Echo est une instruction qui nous permet d'afficher
echo '<br>'; // Nous pouvons également y mettre du HTML
echo '<hr><h2>Commentaires</h2>';

// Fermeture de la balise ?>

<strong> Bonjour </strong>

<?= 'Hello CDA World !'; ?>

<!--
    Il est possible de fermer et ré-ouvrir php
    pour mélanger du code HTML et PHP.
-->

<?php

echo 'Texte'; // Ceci est un commentaire sur une ligne
echo 'Texte'; /* Ceci est un commentaire
                        sur plusieurs lignes */
print 'Texte'; # Ceci est un commentaire sur une ligne

echo '<hr><h2>Variable PHP : Types / Déclaration / Affectation</h2>';

# Déclaration d'une variable en PHP
$a = 127; // Affectation de la valeur 127 à ma variable nommée " a ";
$b = 5.2; // Affectation de la valeur 5.2 à ma variable nommée " b ";

# $nom_de_ma_variable = ma_valeur

echo gettype($a); // Un entier : integer
echo '<br>';
echo gettype($b); // Un nombre à virgule : double
echo '<br>';


$a = 'une chaine de caractère';
$b = '127';

echo gettype($a); // Il s'agit d'un STRING
echo '<br>';
echo gettype($b); // String est l'équivalent de VARCHAR en SQL.
echo '<br>';

$a = true;
$b = FALSE;

echo gettype($a); // Boolean
echo '<br>';
echo gettype($b); // Boolean

/*
 * NOTA BENE : Nous pouvons appeler une variable 'a2'
 * mais pas '2a'. Elle peut contenir des chiffres, mais
 * ne doit pas commencer par un chiffre.
 */

echo '<hr><h2>La Concaténation</h2>';

$prenom = 'Hugo';

# On utilise le point ou la virgule pour concaténer.

echo 'Bonjour ' . $prenom . '<br>';
echo 'Bonjour ', $prenom, '<br>';

// --------------------------------

echo "Bonjour $prenom <br>"; // Dans les guillemets, la variable est évaluée.
echo 'Bonjour $prenom <br>'; // Dans les quotes, la variable n'est PAS évaluée !

// --------------------------------

echo '<hr><h2>Constante, Constante Magique !</h2>';

// define('IMPOSSIBLE_A_MODIFIER', 'Valeur de ma constante'); -- Ancienne méthode
const IMPOSSIBLE_A_MODIFIER = 'Valeur de ma constante'; // -- Nouvelle méthode
echo IMPOSSIBLE_A_MODIFIER . '<br>';

// IMPOSSIBLE_A_MODIFIER = 'toto'; -- Plus d'affectation possible

// -- Exemple avec les informations de BDD
const DB_HOST = "localhost";
const DB_NAME = "cda0623";
const DB_USERNAME = "root";
const DB_PASSWORD = "1234";

// -- Les constantes magiques

echo __FILE__ . '<br>'; // Chemin absolu complet vers mon fichier
echo __DIR__ . '<br>'; // Chemin absolu complet vers mon dossier
echo __LINE__ . '<br>'; // Affiche le numéro de la ligne

// Subtilité...

$i = 0;
echo $i++; // = 0
echo $i; // = 1

$i = 0;
echo ++$i; // = 1

echo '<hr><h2>Structures Conditionelles (if / else)</h2>';

/*
 * Isset & Empty
 *
 * empty = Vérifie qu'une variable est égale à 0 ou vide.
 * isset = Vérifie UNIQUEMENT qu'une variable est définie cad existe.
 */

$var1 = 'test';
$var2 = '';

if ( empty( $var1 ) ) {
    echo '$var1 est vide.';
} else {
    echo '$var1 n\'est pas vide.';
}

echo '<br>';

if ( empty( $var2 ) ) {
    echo '$var2 est vide.';
} else {
    echo '$var2 n\'est pas vide.';
}

echo '<br>';
//$nom = 'LIEGEARD';
$nom = '0';

/*
 * Lorsqu'il n'y a qu'une instruction,
 * je ne suis pas obligé de mettre les accolades.
 */

if (isset($nom))
    echo 'Le nom existe (isset)';

if (empty($nom))
    echo 'Le nom est vide (empty)';

if (!empty($nom))
    echo 'Le nom n\'est PAS vide (empty)';

// Même condition, mais en écriture simplifiée
// En écriture ternaire = (condition) ? (résultat si vrai) : (si faux)

//echo empty($nom) ? 'Le nom est vide (empty)' : 'Le nom n\'est PAS vide (empty)';

//echo isset($age) ? "L'age existe" : "L'age n'existe pas";
echo $age ?? $prenom ?? "L'age n'existe pas";

$a = 2;
$b = 5;
$c = 8;

// Vérifie si A est supérieur à B
if ( $a > $b );

// Vérifie si A est supérieur à B et que dans le même temps B est supérieur à C
if  ( $a > $b && $b > $c );

// Vérifie si A = 2 ou B est supérieur à C
if  ( $a == 2 || $b > $c );

// Vérifie si A = 10 ou B = 6 mais pas les 2 en même temps (Ou Exclusif)
if ( $a === 10 XOR $b === 6 );

/*
 * NOTA BENE :
 * Le double égale '==' permet de vérifier une information à l'intérieur
 * d'une variable. Pratique lors des conditions.
 *
 * ⚠️ A NE PAS OUBLIER ⚠️
 *  ️= Affectation
 * == Comparaison de valeurs
 * === Comparaisons des valeurs et des types (à privilégier)
 *
 */

$a = 2;
$b = '2';
if($a == $b); // = true
if($a === $b); // = false

// ------------------------------

$couleur = 'Jaune';

if($couleur == 'Bleu') {
    echo 'Vous aimez le bleu';
} else if ($couleur == 'Jaune') {
    echo 'Vous aimez le jaune';
} else if ($couleur == 'Orange') {
    echo 'Vous aimez le orange';
} else if ($couleur == 'Rouge') {
    echo 'Vous aimez le rouge';
} else if ($couleur == 'Noir') {
    echo 'Vous aimez le noir';
} else {
    echo 'Vous n\'aimez rien...';
}

switch ($couleur) {
    case 'Bleu' :
        echo 'Vous aimez le Bleu';
        break;
    case 'Jaune' :
        echo 'Vous aimez le Jeune';
        break;
    case 'Rouge' :
        echo 'Vous aimez le Rouge';
        break;
    default: // Cas par défaut, on ne rentre dans aucun des cas précédent
        echo 'Vous n\'aimez rien...';
        break;
}

echo '<hr><h2>Les Fonctions Prédéfinies</h2>';

// A consulter : https://overapi.com/php

/*
 * Afficher la date du jour sur mon site internet
 * ----------------------------------------------
 * https://www.php.net/manual/fr/function.date.php
 * https://www.php.net/manual/fr/datetime.format.php
 */

echo 'Date du jour : ';
print date('d/m/Y');
echo '<br>';
print date('Y M d D');
echo '<br>';
?>

<?= 'Tous droits réservés - Copyright ' . date('Y'); ?>
<?php

$email = 'hugo.liegeard@m2i.fr';
echo '<br>'.strpos($email, '@');

/*
 * La fonction strpos() indique la position
 * du caractère @ dans la chaine. On commence à 0;
 */

$email = 'hugo';
var_dump( strpos($email, '@') );

if( !strpos($email, '@')  ) {
    echo 'Oops vérifiez votre email';
}

// En ternaire sur une ligne
echo !strpos($email, '@') ? 'Oops vérifiez votre email' : '';

// -------------------

echo '<br>';
$phrase = "Je suis une phrase et j'aime ce que je suis.";
echo strlen($phrase); // Retourne le nombre de caractère de ma chaine.

echo '<br>';
$texte = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad cupiditate dolorem perspiciatis soluta tempora tenetur velit, veritatis! Architecto doloribus eligendi fugiat in maiores minima qui sapiente! Assumenda eos magnam perferendis!';
echo $texte . '<br>';
echo '<br>';
echo substr( $texte, 0, 50 ) . '... <a href="#">Lire la suite</a>';

echo '<hr><h2>Les Fonctions Utilisateurs</h2>';

/*
 * EXERCICE :
 *
 * 1. Créer une fonction permettant de calculer la somme de 2 nb passé en paramètre.
 * 2. Créer une fonction permettant de générer des titres H1, 2, 3, 4 et 5, 6.
 * 3. Créer une fonction permettant de calculer la TVA taux de 20%;
 */

function add($nb1, $nb2) {
    return $nb1 + $nb2;
}

echo add(7,8);

// ------------------------

echo '<hr>';

function titleGenerator($title, $level = 1) {
    return ($level > 0 && $level <= 6) ? "<h$level>$title</h$level>" : false;
}

echo titleGenerator('Toto fait de la flute');
echo titleGenerator('Et tata aussi', 3);

function tva($price, $tva = 20) {
    return $price * (1 + $tva / 100);
}

echo tva(100) . '€ ttc';
echo '<br>';
echo tva(8.5) . '€ ttc';

// --------------------------------------------------------

/*
 * BONUS : Réaliser une fonction permettant de générer une accroche de X caractères
 * passé en paramètre, sans couper de mot.
 */

function summarize($text, $length = 180) {

    // Suppression des balises HTML
    $string = strip_tags($text);

    // Si mon string est > a $length
    if (strlen($string > $length)) {
        // Je coupe ma chaine
        $stringCut = substr($string, 0, $length);
        // je m'assure de couper un mot a la fin et pas en plein milieu
        $string = substr( $stringCut, 0, strrpos( $stringCut, ' ' ) );
    }

    return $string . '...';
}

//summarize('<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab alias aliquam architecto atque autem deserunt ducimus enim eos est impedit incidunt molestias nisi nulla quo, quod similique, sunt temporibus ut.</p>', 50);
echo summarize('<p>Lorem ipsum dolor sit amet, <strong style="color:red">consectetur adipisicing</strong> elit. Ab alias aliquam architecto atque autem deserunt ducimus enim eos est impedit incidunt molestias nisi nulla quo, quod similique, sunt temporibus ut.</p>', 80);
//summarize('<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab alias aliquam architecto atque autem deserunt ducimus enim eos est impedit incidunt molestias nisi nulla quo, quod similique, sunt temporibus ut.</p>', 220);

echo '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aliquam aliquid aperiam atque cumque debitis dolor eligendi excepturi exercitationem fuga fugit minus molestiae nisi, nulla officiis optio, similique veritatis vero.</p>';

echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';
