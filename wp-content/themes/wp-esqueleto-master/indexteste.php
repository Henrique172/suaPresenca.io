<?php

// get_header();
//var_dump($_POST['comunidade'] == 1  );

if ($_POST['comunidade'] == "0") {
    header('location: santaMaria');
} else if ($_POST['comunidade'] == 1) {
    header('location: riacho');
} else if ($_POST['comunidade'] == 2) {
    header('location: solNascente');
}
//die('funcionou');
?>
<!DOCTYPE html>
<html lang="pt">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <!--<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>-->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Comunidade Sua Presenca</title>
    </head>

    <body>
        <div class="img">
            <?php
            query_posts("post_type=bemVindo");

            if (have_posts()):
                while (have_posts()): the_post();
                    ?>
                    <div class="imagem">
                        <img  src="<?php the_field('imagem') ?>"/>
                    </div>
                    <?php
                endwhile;
            endif;

            wp_reset_query();
            ?>
        </div>



        <div id="container">
            <img src="<?= get_template_directory_uri().'/assets/img/logo.png' ?>" width="300" />
            <h1 class="logo">Seja Bem Vindo <span style="color: red">!!!</span> <br />Comunidade Sua Presença</p></h1>
            <div id="form-box">
                <div id="input-group">

                    <form action="index.php" method="post">

                        <select class="form-control form-control-lg" name="comunidade">
                            <option selected disabled>SELECIONE</option>
                            <option value="0">Santa Maria</option>
                            <option value="1">Riacho Fundo II</option>
                            <option value="2">Sol Nascente</option>
                            <!--<option value="3">Visitantes</option>-->
                        </select>
                        <br />
                        <div class="text-center">
                            <input type="submit" class="btn btn-primary"  value="IR" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--<script src="js/main.js"></script>-->
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    </body>

</html>

<style>
    /*@import url("https://fonts.googleapis.com/css?family=Pacifico|Roboto");*/
    body {
        background: #001a31;
        /*background: red;*/
        margin: 0; 

    }

    h1.logo {
        color: #fff;
        font-family: 'Pacifico', cursive;
        font-size: 4em;
        margin-bottom:1em;
        margin-top:3em;
        text-align: center
    }


    #container {
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: top;
        align-items: center;
        position: relative;}

    .img{
        width: 100%;
        position: absolute;
        opacity: 0.2;
        /*transition: all 0.3s ease;*/
    }




</style>
