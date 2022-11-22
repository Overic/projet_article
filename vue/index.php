<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="vue/css/bootstrap.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="vue/style.css">
    
    <title>Document</title>
</head>
<body>
    <img src="vue/img/logo.png" alt="logo" class="logo">
    <div class="container-fluid">
        <div class="row">
            <header class="col-md-12">
                <nav class="col-md-12 navbar navbar-expand-lg bg-dark bar ">
                    <div class="container">
                        <li><a class="linkmenu" href="">HOME</a></li>
                        <li><a class="linkmenu" href="">NEWS</a></li>
                        <li><a class="linkmenu" href="">A PROPOS</a></li>
                        <li><a class="linkmenu" href="">CONTACT</a></li>
                        <li class="direct"><a class="linkmenu" href="">EN DIRECT</a></li>
                    </div>
                </nav>  
                <div class="row tete">
                    <div class="col-md-5 offset-1">
                        <img class="imgactu" src="" alt="">
                        <div class="row">
                            <div class="col-md-12"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente, dolor deserunt assumenda aspernatur asperiores harum totam voluptatum libero, sint natus ea </p></div>
                        </div> 
                    </div>
                    <div class="col-md-4 offset-2">
                        <span class=""></span>
                        <form action="">
                            <select class="enteteliste" name="article" onchange="categorie(this.value)">
                                <option value="">LISTE ACTUALITES</option>
                                <option value="C1">A LA UNE</option>
                                <option value="C2">EDUCATION</option>
                                <option value="C3">CULTURE</option>
                                <option value="C4">MODE</option>
                                <option value="C5">MUSIQUE</option>
                                <option value="C6">SANTE</option>
                                <option value="C7">SPORT</option>
                                <option value="C8">DIVERTISSEMENT</option>
                            </select>
                        </form>
                    </div>
                </div>   
            </header>
        </div>
        <br><br>  
    </div>
    
    <main class="container" id="cat">
        <section class="row">
        <div class="col-md-4">
            <h6 class="pro">TOUS LES ARTICLES</h6>
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
                <img src=<?php echo $donnees['urlimg'];?> class="img" alt="">
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
    </main>    
        <!-- ---------------------------------------------------------------------- -->
    

    <footer>
        <nav class="navbar navbar-expand-lg bg-dark bar ">
            <div class="container">
                <li><a class="linkmenu" href="">Home</a></li>
                <li><a class="linkmenu" href="">News</a></li>
                <li><a class="linkmenu" href="">Copyright</a></li>
                <li><a class="linkmenu" href="">Contact</a></li>

        </nav>
    </footer>

    <script src="vue/style.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
    <script src="vue/js/bootstrap.js"></script>
</body>
</html>