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