<?php
include_once('modele/connexion.php');

if (!isset($_GET['section']) OR $_GET['section'] == 'index')
{
    include_once('controleur/index.php');
}
