<?php

/**
 * Retourne les informations de l'utilisateur
 * via son ID.
 * @return void
 */
function getUserById(int $idUser) {
    global $dbh;
    $sql = 'SELECT * FROM user WHERE user.id_user = :idUser';
    # Préparation de ma requête
    # ⚠️⚠️ Paramètre externe = requête préparée ⚠️⚠️
    $query = $dbh->prepare($sql);

    # J'associe à ma requête le paramètre categorySlug.
    # NOTA BENE : Cette préparation me protège contre les injections SQL.
    $query->bindValue(':idUser', $idUser, PDO::PARAM_INT);

    # Execution de ma requête
    $query->execute();
    # Retour du résultat
    return $query->fetch();
}