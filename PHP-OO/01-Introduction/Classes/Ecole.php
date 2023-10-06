<?php

namespace Classes;

/**
 * Une classe PHP est un domaine regroupant
 * des caractéristiques appelées "propriétés"
 * et des fonctions appelées "méthodes".
 */
class Ecole
{

    /**
     * Déclaration des propriétées de notre classe.
     * "private" nous permet d'interdire l'accès direct
     * aux propriétés par nos objets. On parle alors
     * d'ENCAPSULATION DES DONNEES.
     */
    private string $nom;
    private string $adresse;
    private int $effectif;
    private string $directeur;
    private array $classes;

    # Création d'un constructeur

    /**
     * Pour permettre l'attribution de valeur à mes propriétés
     * au moment de l'instanciation, j'utilise le constructeur.
     * --------------------------------------------------------
     * l'objectif du constructeur est d'hydrater, remplir,
     * initialiser les propriétés de ma classe avec des valeurs.
     * Il doit être accessible PUBLIQUEMENT.
     * --------------------------------------------------------
     * Cette fonction est magique, elle est executée AUTOMATI-
     * - QUEMENT par PHP au moment de l'instanciation.
     */
    public function __construct(string $nom, string $adresse, int $effectif, string $directeur)
    {
        $this->nom = $nom;
        $this->adresse = $adresse;
        $this->effectif = $effectif;
        $this->directeur = $directeur;
        $this->classes = [];
    }


    # Création des setters

    /**
     * Les setters ont pour objectif, de permettre
     * à nos objets de modifier les valeurs de nos propriétés
     * de façon sécurisé, cad de la manière dont nous le souhaitons.
     */
    public function setNom(string $nom)
    {
        $this->nom = $nom;
    }

    public function setAdresse(string $adresse)
    {
        $this->adresse = $adresse;
    }

    public function setEffectif(int $effectif)
    {
        $this->effectif = $effectif;
    }

    public function setDirecteur(string $directeur)
    {
        $this->directeur = $directeur;
    }

    # Création des getters

    /**
     * Les getters ont pour objectif, de permettre
     * à nos objets d'accéder, de récupérer les valeurs de nos propriétés
     * de façon sécurisé, cad de la manière dont nous le souhaitons.
     */
    public function getNom(): string
    {
        return $this->nom;
    }

    public function getAdresse(): string
    {
        return $this->adresse;
    }

    public function getEffectif(): int
    {
        return $this->effectif;
    }

    public function getDirecteur(): string
    {
        return $this->directeur;
    }

    /**
     * @return array
     */
    public function getClasses(): array
    {
        return $this->classes;
    }

    /**
     * @param array $classes
     */
    public function setClasses(array $classes): void
    {
        $this->classes = $classes;
    }

    public function addClass(Classe $class): void
    {
        if (!in_array($class, $this->classes)) {
            $this->classes[] = $class;
        }
    }

}
