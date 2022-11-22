<?php
    function get_articles(){
        global $connexion;
        $req=$connexion->query('SELECT nomArticle,urlimg,descArticle,DatePub FROM article ');
        $articles=$req->fetchAll();
        return $articles; 
    }
    
