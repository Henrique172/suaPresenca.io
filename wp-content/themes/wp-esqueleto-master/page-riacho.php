<?php
get_header();
?>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            .parallax {
                /* The image used */
                background-image: url("<?php bloginfo('template_directory'); ?> /assets/img/Vencedor.jpg") !important;

                /* Set a specific height */
                min-height: 800px; 

                /* Create the parallax scrolling effect */
                background-attachment: fixed;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>
    <body>


        <div class="parallax"></div>

        <div class="msg">
            <img src="<?php bloginfo('template_directory'); ?> /assets/img/textura.png" alt="Teu Reino Vem"/>

            <div class="container">
                <div class="row">
                    <div class="col-sm ">
                        <br />
                        <br />
                        <h2 class="msgT" ><span style="line-height:1.0em; color:#000; letter-spacing:-0.10em;">Manifestar</span></span></h2>
                        <h2 class="msgT" style="line-height:0.5em; "><span style="color:#0F4C81; letter-spacing:-0.10em;">o reino de deus</span></span></h2>
                        <h2 class="msgT" style="line-height:0.8em; "><span style="color:#0F4C81; letter-spacing:-0.12em;">Ate que ele</span></span></h2>
                        <h2 class="msgT" style="line-height:0.9em; "><span style="color:#6e0027; letter-spacing:-0.11em; font-size: 75px">Venha</span></span></h2>
                    </div>
                    <div class="col-sm">
                        <!--Uma de três colunas-->
                    </div>
                    <div class="col-sm">
                        <!--Uma de três colunas-->
                    </div>
                </div>
            </div>
        </div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="cultos">
            <img src="<?php bloginfo('template_directory'); ?> /assets/img/igreja.jpg" alt="Teu Reino Vem"/>

            <div class="container">
                <div class="row">
                    <div class="col-sm ">
                    </div>
                    <div class="col-sm">
                        <!--Uma de três colunas-->
                    </div>
                    <div class="col-sm">
                        <!--Uma de três colunas-->
                    </div>
                </div>
            </div>
        </div>
        <style>
            .msg{
                background: #fff;
                opacity: 0.5; padding: 30px;

            }
            .msg img{
                width: 100%;
                height: 400px;
                position: absolute;

            }
            .msgT{
                font-size: 60px;
                font-weight: bold;
                text-align:right;
            }
            .cultos{
                background-image: url("<?php bloginfo('template_directory'); ?> /assets/img/fundoCinza.jpg") !important;
                width: 100%;
                height: 800px;
            }
            .cultos img{
                width: 100%;
                height: 800px;
                opacity: 0.01

            }
        </style>


