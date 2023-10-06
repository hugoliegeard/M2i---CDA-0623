<?php

namespace Classes;

class Classe
{
    private string $nom;
    private string $niveau;
    private string $professeurPrincipal;
    private int $effectif;
    private string $localisation;
    private array $eleves;

    /**
     * @param string $nom
     * @param string $niveau
     * @param string $professeurPrincipal
     * @param int $effectif
     * @param string $localisation
     */
    public function __construct(string $nom, string $niveau, string $professeurPrincipal, int $effectif, string $localisation)
    {
        $this->nom = $nom;
        $this->niveau = $niveau;
        $this->professeurPrincipal = $professeurPrincipal;
        $this->effectif = $effectif;
        $this->localisation = $localisation;
        $this->eleves = [];
    }

    /**
     * @return string
     */
    public function getNom(): string
    {
        return $this->nom;
    }

    /**
     * @param string $nom
     */
    public function setNom(string $nom): void
    {
        $this->nom = $nom;
    }

    /**
     * @return string
     */
    public function getNiveau(): string
    {
        return $this->niveau;
    }

    /**
     * @param string $niveau
     */
    public function setNiveau(string $niveau): void
    {
        $this->niveau = $niveau;
    }

    /**
     * @return string
     */
    public function getProfesseurPrincipal(): string
    {
        return $this->professeurPrincipal;
    }

    /**
     * @param string $professeurPrincipal
     */
    public function setProfesseurPrincipal(string $professeurPrincipal): void
    {
        $this->professeurPrincipal = $professeurPrincipal;
    }

    /**
     * @return int
     */
    public function getEffectif(): int
    {
        return $this->effectif;
    }

    /**
     * @param int $effectif
     */
    public function setEffectif(int $effectif): void
    {
        $this->effectif = $effectif;
    }

    /**
     * @return string
     */
    public function getLocalisation(): string
    {
        return $this->localisation;
    }

    /**
     * @param string $localisation
     */
    public function setLocalisation(string $localisation): void
    {
        $this->localisation = $localisation;
    }

    /**
     * @return array
     */
    public function getEleves(): array
    {
        return $this->eleves;
    }

    /**
     * @param array $eleves
     */
    public function setEleves(array $eleves): void
    {
        $this->eleves = $eleves;
    }

    public function addEleve(Eleve $eleve): void
    {
        if (!in_array($eleve, $this->eleves)) {
            $this->eleves[] = $eleve;
        }
    }

}