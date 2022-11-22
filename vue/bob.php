<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
    $q = $_GET['q'];
    
    try{
        $connexion=new PDO('mysql:host=localhost;dbname=blogpub','root','');
    }catch(Exception $e){
        die('Eurreur : ' . $e->getMessage());
    }


    $sql="SELECT * FROM article a WHERE idcat= '".$q."'";
    $result =$connexion->query($sql);
    $articles=$result->fetchAll();
    
    $sqli="SELECT libelle FROM categorie WHERE idcat= '".$q."'";
    $res =$connexion->query($sqli);
    $nomcat=$res->fetchAll();
    
    ?>



    <section class="row">
            <div class="col-md-4">
                <h6 class="pro"><?php foreach($nomcat as $don){ echo  $don['libelle']; }?></h6>
                <div><h2>Lorem ipsum dolor, sit amet consectetur adipisici</h2></div>
            </div>
            </section>
            <section class="row">
                <p class="col-md-6">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet assumenda eos tempore architecto placeat sed voluptate quaerat ipsam illum. Suscipit maiores quidem dignissimos veritatis debitis, non minima doloremque animi perferendis.</p>
            </section>
            
            <!-- ---------------------------------------------------------------------------------------------------- -->
            <section class="row">
                <?php 
                    foreach($articles as $donnees){ 
                ?>
                <div class="col-md-4">
                    <img src=<?php echo $donnees['urlImg'];?> class="img" alt="">
                    <br>
                    <div class="d-flex com">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16"><path fill-rule="evenodd" d="M1.5 8a6.5 6.5 0 1113 0 6.5 6.5 0 01-13 0zM8 0a8 8 0 100 16A8 8 0 008 0zm.5 4.75a.75.75 0 00-1.5 0v3.5a.75.75 0 00.471.696l2.5 1a.75.75 0 00.557-1.392L8.5 7.742V4.75z"></path></svg>
                        <p class="date"><?php echo $donnees['DatePub'];?></p>
                        <button class="consulter"><a href="#">Consulter</a></button>
                    </div>
                    <h5><?php echo $donnees['nomArticle'];?></h5>
                    <p><?php echo $donnees['descArticle'];?></p>
                </div>
                <?php
                    } 
                ?>
    </section>

</body>
</html>