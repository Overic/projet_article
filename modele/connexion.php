<?php
    try{
        $connexion=new PDO('mysql:host=localhost;dbname=blogpub','root','');
    }catch(Exception $e){
        die('Eurreur : ' . $e->getMessage());
    }
?>  