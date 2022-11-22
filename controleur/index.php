<?php
    // On demande les articles a afficher au (modèle)
    include_once('modele/get_articles.php');
    $articles=get_articles();
    // On effectue du traitement sur les données (contrôleur)
    foreach($articles as $cle=>$donnees){
        $articles[$cle]['nomArticle'] =$donnees['nomArticle'];
        $articles[$cle]['urlimg'] =$donnees['urlimg'];
        $articles[$cle]['descArticle'] =$donnees['descArticle'];
        $articles[$cle]['DatePub'] =$donnees['DatePub'];
    }
    //On affiche la page (vue)
    include_once('vue/index.php');

    