<?php
    # Importation du Helper Categorie
    require_once './helpers/category.helper.php';

    # Récupération des catégories
    $categories = getCategories();
?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ActuNews</title>
    <!-- Boostrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</head>
<body>

<!-- En-Tête de page -->
<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.php">ActuNews - Premier sur l'info !</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto text-center">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Accueil</a>
                    </li>
                    <?php foreach ($categories as $category) { ?>
                        <li class="nav-item">
                            <a class="nav-link" href="categorie.php?slug=<?= $category ?>">
                                <?= $category ?>
                            </a>
                        </li>
                    <?php } ?>
                </ul>

                <div class="text-right">
                    <a class="nav-item btn btn-outline-info" href="connexion.php">Connexion</a>
                    <a class="nav-item btn btn-outline-warning mx-2" href="#">Inscription</a>
                </div> <!-- ./text-right -->

            </div> <!-- ./collapse -->
        </div> <!-- ./container-fluid -->
    </nav> <!-- /nav -->
</header>
<!-- Fin -- En-Tête de page -->