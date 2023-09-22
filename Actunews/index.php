<?php
    # Inclusion du header
    require_once './partials/header.php';

    # Récupération de mes articles
    $posts = getPosts(6);
    # var_dump($posts);
?>

<!-- Contenu de notre page -->
<!-- .p-3.mx-auto.text-center>h1.display-4{Actunews} -->
<main>

    <!-- Titre de la page -->
    <div class="p-3 mx-auto text-center">
        <h1 class="display-4">Actunews</h1>
    </div>

    <!-- Contenu de la page -->
    <!-- .py-5.bg-light>.container>.row>.col-md-4*6>.card.shadow-sm -->
    <div class="py-5 bg-light">
        <div class="container">
            <div class="row">
                <?php foreach ($posts as $post): ?>
                    <div class="col-md-4 mt-4">
                        <div class="card shadow-sm h-100">
                            <img class="img-fluid" src="<?= $post['image'] ?>" alt="<?= $post['title'] ?>">
                            <div class="card-body">
                                <h5 class="card-title"><?= $post['title'] ?></h5>
                                <small class="text-muted">
                                    <?= $post['firstname'] . ' ' . $post['lastname']
                                    . ' | Publié le ' . $post['created_at']  ?>
                                </small>
                                <p class="card-text">
                                    <?= summarize($post['content'], 120) ?>
                                </p>
                                <a href="#" class="btn btn-primary">
                                    Lire la suite
                                </a>
                            </div>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>

</main>
<!-- Fin -- Contenu de notre page -->

<?php
# Inclusion du footer
require_once './partials/footer.php';
?>
