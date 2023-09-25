<?php

/**
 * Permet de récupérer les articles
 * de la BDD.
 */
function getPosts(int $limit = null)
{
    # Récupérer et Retourner tous les articles de la BDD
    global $dbh;

    # Création de ma requête SQL
    $sql = 'SELECT p.id_post,
               p.title,
               p.content,
               p.image,
               p.slug as postSlug,
               p.created_at,
               c.name,
               c.slug as categorySlug,
               u.id_user,
               u.firstname,
               u.lastname,
               u.username
            FROM post p
                INNER JOIN category c on p.id_category = c.id_category
                INNER JOIN user u on p.id_user = u.id_user
                    ORDER BY p.created_at DESC';

    # Si une "$limit" a été passé en paramètre de ma fonction, alors je l'ajoute à la requête
    $limit !== null ? $sql .= " LIMIT $limit" : '';

    # Execution de ma requête
    $query = $dbh->query($sql);

    # Retour du résultat
    return $query->fetchAll();
}

/**
 * Permet de récupérer les articles
 * de la BDD via le slug de la catégorie.
 */
function getPostsByCategorySlug(string $categorySlug) {

    global $dbh;

    # Création de ma requête SQL
    $sql = 'SELECT p.id_post,
               p.title,
               p.content,
               p.image,
               p.slug as postSlug,
               p.created_at,
               c.name,
               c.slug as categorySlug,
               u.id_user,
               u.firstname,
               u.lastname,
               u.username
            FROM post p
                INNER JOIN category c on p.id_category = c.id_category
                INNER JOIN user u on p.id_user = u.id_user
                    WHERE c.slug = :categorySlug
                        ORDER BY p.created_at DESC';

    # Préparation de ma requête
    # ⚠️⚠️ Paramètre externe = requête préparée ⚠️⚠️
    $query = $dbh->prepare($sql);

    # J'associe à ma requête le paramètre categorySlug.
    # NOTA BENE : Cette préparation me protège contre les injections SQL.
    $query->bindValue(':categorySlug', $categorySlug, PDO::PARAM_STR);

    # Execution de ma requête
    $query->execute();

    # Retour du résultat
    return $query->fetchAll();


}


/**
 * Permet de récupérer les articles
 *  de la BDD via le slug de l'article
 * @param string $postSlug
 * @return mixed
 */
 function getPostBySlug(string $postSlug) {

 global $dbh;

  $sql = 'SELECT p.id_post,
                p.title,
                p.content,
                p.image,
                p.slug as postSlug,
                p.created_at,
                c.name,
                c.slug as categorySlug,
                u.id_user,
                u.firstname,
                u.lastname,
                u.username
             FROM post p
                 INNER JOIN category c on p.id_category = c.id_category
                 INNER JOIN user u on p.id_user = u.id_user
                     WHERE p.slug = :postSlug
                         ORDER BY p.created_at DESC';

              # Préparation de ma requête
              # ⚠️⚠️ Paramètre externe = requête préparée ⚠️⚠️
              $query = $dbh->prepare($sql);

              # J'associe à ma requête le paramètre categorySlug.
              # NOTA BENE : Cette préparation me protège contre les injections SQL.
              $query->bindValue(':postSlug', $postSlug, PDO::PARAM_STR);

              # Execution de ma requête
              $query->execute();

              # Retour du résultat
              return $query->fetch();

 }

function getPostsByUserId(int $postUserId){
     global $dbh;
     $sql = 'SELECT p.id_post,
                p.title,
                p.content,
                p.image,
                p.slug as postSlug,
                p.created_at,
                c.name,
                c.slug as categorySlug,
                u.id_user,
                u.firstname,
                u.lastname,
                u.username
             FROM post p
                 INNER JOIN category c on p.id_category = c.id_category
                 INNER JOIN user u on p.id_user = u.id_user
                     WHERE u.id_user = :postUserId
                         ORDER BY p.created_at DESC';

    # Préparation de ma requête
    # ⚠️⚠️ Paramètre externe = requête préparée ⚠️⚠️
    $query = $dbh->prepare($sql);

    # J'associe à ma requête le paramètre categorySlug.
    # NOTA BENE : Cette préparation me protège contre les injections SQL.
    $query->bindValue(':postUserId', $postUserId, PDO::PARAM_STR);

    # Execution de ma requête
    $query->execute();

    # Retour du résultat
    return $query->fetchAll();
}
