<?php

namespace App\Database;

class Fichier

{
    /**
     * Les objets de la classe Fichier représentant les données de la table "fichier"
     * 1 instance = 1 ligne
     * 
     */

    /**
     * PHP 7.4 et +
     *     private ?int $id = null;
     * PHP < 7.4:
     *     private $id;
     */
    private ?int $id = null;
    private ?string $nom = null;
    private ?string $nom_original = null;
    private ?string $mime = null;
    private ?int $compteur = 0;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function setId(int $id): self
    {
        $this->id = $id;
        return $this;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;
        return $this;
    }

    public function getNomOriginal(): ?string
    {
        return $this->nom_original;
    }

    public function setNomOriginal(string $nom_original): self
    {
        $this->nom_original = $nom_original;
        return $this;
    }

    public function getMime(): ?string
    {
        return $this->mime;
    }

    public function setMime(string $mime): self
    {
        $this->mime = $mime;
        return $this;
    }

    public function getCompteur(): ?int
    {
        return $this->compteur;
    }

    public function setCompteur(int $compteur): self
    {
        $this->compteur = $compteur;
        return $this;
    }
}
