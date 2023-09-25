<?php
    # Inclusion du header
    require_once './partials/header.php';
?>

<!-- Contenu de notre page -->
<!-- .p-3.mx-auto.text-center>h1.display-4{Actunews} -->
<main>

    <!-- Titre de la page -->
    <div class="p-3 mx-auto text-center">
        <h1 class="display-4">Créer un article</h1>
    </div>

    <!-- Contenu de la page -->
    <!-- .py-5.bg-light>.container>.row>.col-md-4*6>.card.shadow-sm -->
    <div class="py-5 bg-light">
        <div class="container">
            <div class="row">
                <div class="col-8 mx-auto">
                    <form>
                        <div class="mb-3">
                            <label for="title" class="form-label">Titre</label>
                            <input type="text" class="form-control" id="title" placeholder="Saisissez votre titre">
                        </div>
                        <div class="mb-3">
                            <label for="Slug" class="form-label">Alias</label>
                            <input type="text" class="form-control" id="slug" placeholder="Alias de l'article   ">
                        </div>

                        <div class="mb-3">
                            <label for="id_category" class="form-label">Catégorie</label>
                            <select id="id_category" class="form-control" name="id_category">
                                <option selected value="0">-- Choisissez une catégorie --</option>
                                <?php foreach ($categories as $category): ?>
                                    <option value="<?= $category['id_category'] ?>"><?= $category['name'] ?></option>
                                <?php endforeach ?>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="content" class="form-label">Contenu</label>
                            <textarea  class="form-control" id="content" name="content"
                                       placeholder="Saisissez votre contenu"></textarea>
                            <script>
                                CKEDITOR.replace( 'content' );
                            </script>
                        </div>
                        <div class="mb-3">
                            <label for="image" class="form-label">Image</label>
                            <input type="file" class="form-control" id="image" placeholder="Choisissez votre image">
                        </div>
                        <div class="d-grid gap-2">
                            <button class="btn btn-dark" type="button">Publier mon article</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</main>
<!-- Fin -- Contenu de notre page -->

<!-- Chargement de mon script -->
<script src="assets/js/creer-un-article.js"></script>

<?php
# Inclusion du header
require_once './partials/footer.php';
?>
