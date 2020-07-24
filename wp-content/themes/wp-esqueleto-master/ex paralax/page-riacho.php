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
        </style>







        <div class="container cta-100 ">
            <div class="container">
                <div class="row blog">
                    <div class="col-md-12">
                        <div id="blogCarousel" class="carousel slide container-blog" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#blogCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#blogCarousel" data-slide-to="1"></li>
                            </ol>
                            <!-- Carousel items -->
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="row">
                                        <div class="col-md-4" >
                                            <div class="item-box-blog">
                                                <div class="item-box-blog-image">
                                                    <!--Date-->
                                                    <div class="item-box-blog-date bg-blue-ui white"> <span class="mon"><?php echo date('d/m/Y') ?></span> </div>
                                                    <!--Image-->
                                                    <figure> <img alt="" src="https://cdn.pixabay.com/photo/2017/02/08/14/25/computer-2048983_960_720.jpg"> </figure>
                                                </div>
                                                <div class="item-box-blog-body">
                                                    <!--Heading-->
                                                    <div class="item-box-blog-heading">
                                                        <a href="#" tabindex="0">
                                                            <!--<h5>News Title</h5>-->
                                                        </a>
                                                    </div>
                                                    <!--Data-->
                                                    <div class="item-box-blog-data" style="padding: px 15px;">
                                                        <p><i class="fa fa-user-o"></i> Admin, <i class="fa fa-comments-o"></i> Comments(3)</p>
                                                    </div>
                                                    <!--Text-->
                                                    <div class="item-box-blog-text">
                                                        <p>Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor.</p>
                                                    </div>
                                                    <div class="mt"> <a href="#" tabindex="0" class="btn bg-blue-ui white read">read more</a> </div>
                                                    <!--Read More Button-->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4" >
                                            <div class="item-box-blog">
                                                <div class="item-box-blog-image">
                                                    <!--Date-->
                                                    <div class="item-box-blog-date bg-blue-ui white"> <span class="mon">Augu 01</span> </div>
                                                    <!--Image-->
                                                    <figure> <img alt="" src="https://cdn.pixabay.com/photo/2017/02/08/14/25/computer-2048983_960_720.jpg"> </figure>
                                                </div>
                                                <div class="item-box-blog-body">
                                                    <!--Heading-->
                                                    <div class="item-box-blog-heading">
                                                        <a href="#" tabindex="0">
                                                            <h5>News Title</h5>
                                                        </a>
                                                    </div>
                                                    <!--Data-->
                                                    <div class="item-box-blog-data" style="padding: px 15px;">
                                                        <p><i class="fa fa-user-o"></i> Admin, <i class="fa fa-comments-o"></i> Comments(90)</p>
                                                    </div>
                                                    <!--Text-->
                                                    <div class="item-box-blog-text">
                                                        <p>Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor.</p>
                                                    </div>
                                                    <div class="mt"> <a href="#" tabindex="0" class="btn bg-blue-ui white read">read more</a> </div>
                                                    <!--Read More Button-->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4" >
                                            <div class="item-box-blog">
                                                <div class="item-box-blog-image">
                                                    <!--Date-->
                                                    <div class="item-box-blog-date bg-blue-ui white"> <span class="mon">Augu 01</span> </div>
                                                    <!--Image-->
                                                    <figure> <img alt="" src="https://cdn.pixabay.com/photo/2017/02/08/14/25/computer-2048983_960_720.jpg"> </figure>
                                                </div>
                                                <div class="item-box-blog-body">
                                                    <!--Heading-->
                                                    <div class="item-box-blog-heading">
                                                        <a href="#" tabindex="0">
                                                            <h5>News Title</h5>
                                                        </a>
                                                    </div>
                                                    <!--Data-->
                                                    <div class="item-box-blog-data" style="padding: px 15px;">
                                                        <p><i class="fa fa-user-o"></i> Admin, <i class="fa fa-comments-o"></i> Comments(89)</p>
                                                    </div>
                                                    <!--Text-->
                                                    <div class="item-box-blog-text">
                                                        <p>Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor.</p>
                                                    </div>
                                                    <div class="mt"> <a href="#" tabindex="0" class="btn bg-blue-ui white read">read more</a> </div>
                                                    <!--Read More Button-->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--.row-->
                                </div>
                                <!--.item-->
                                <div class="carousel-item ">
                                    <div class="row">
                                        <div class="col-md-4" >
                                            <div class="item-box-blog">
                                                <div class="item-box-blog-image">
                                                    <!--Date-->
                                                    <div class="item-box-blog-date bg-blue-ui white"> <span class="mon">Augu 01</span> </div>
                                                    <!--Image-->
                                                    <figure> <img alt="" src="https://cdn.pixabay.com/photo/2017/02/08/14/25/computer-2048983_960_720.jpg"> </figure>
                                                </div>
                                                <div class="item-box-blog-body">
                                                    <!--Heading-->
                                                    <div class="item-box-blog-heading">
                                                        <a href="#" tabindex="0">
                                                            <h5>News Title</h5>
                                                        </a>
                                                    </div>
                                                    <!--Data-->
                                                    <div class="item-box-blog-data" style="padding: px 15px;">
                                                        <p><i class="fa fa-user-o"></i> Admin, <i class="fa fa-comments-o"></i> Comments(78)</p>
                                                    </div>
                                                    <!--Text-->
                                                    <div class="item-box-blog-text">
                                                        <p>Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor.</p>
                                                    </div>
                                                    <div class="mt"> <a href="#" tabindex="0" class="btn bg-blue-ui white read">read more</a> </div>
                                                    <!--Read More Button-->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4" >
                                            <div class="item-box-blog">
                                                <div class="item-box-blog-image">
                                                    <!--Date-->
                                                    <div class="item-box-blog-date bg-blue-ui white"> <span class="mon">Augu 01</span> </div>
                                                    <!--Image-->
                                                    <figure> <img alt="" src="https://cdn.pixabay.com/photo/2017/02/08/14/25/computer-2048983_960_720.jpg"> </figure>
                                                </div>
                                                <div class="item-box-blog-body">
                                                    <!--Heading-->
                                                    <div class="item-box-blog-heading">
                                                        <a href="#" tabindex="0">
                                                            <h5>News Title</h5>
                                                        </a>
                                                    </div>
                                                    <!--Data-->
                                                    <div class="item-box-blog-data" style="padding: px 15px;">
                                                        <p><i class="fa fa-user-o"></i> Admin, <i class="fa fa-comments-o"></i> Comments(30)</p>
                                                    </div>
                                                    <!--Text-->
                                                    <div class="item-box-blog-text">
                                                        <p>Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor.</p>
                                                    </div>
                                                    <div class="mt"> <a href="#" tabindex="0" class="btn bg-blue-ui white read">read more</a> </div>
                                                    <!--Read More Button-->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4" >
                                            <div class="item-box-blog">
                                                <div class="item-box-blog-image">
                                                    <!--Date-->
                                                    <div class="item-box-blog-date bg-blue-ui white"> <span class="mon">Augu 01</span> </div>
                                                    <!--Image-->
                                                    <figure> <img alt="" src="https://cdn.pixabay.com/photo/2017/02/08/14/25/computer-2048983_960_720.jpg"> </figure>
                                                </div>
                                                <div class="item-box-blog-body">
                                                    <!--Heading-->
                                                    <div class="item-box-blog-heading">
                                                        <a href="#" tabindex="0">
                                                            <h5>News Title</h5>
                                                        </a>
                                                    </div>
                                                    <!--Data-->
                                                    <div class="item-box-blog-data" style="padding: px 15px;">
                                                        <p><i class="fa fa-user-o"></i> Admin, <i class="fa fa-comments-o"></i> Comments(ff)</p>
                                                    </div>
                                                    <!--Text-->
                                                    <div class="item-box-blog-text">
                                                        <p>Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, adipiscing. Lorem ipsum dolor sit amet, consectetuer adipiscing. Lorem ipsum dolor.</p>
                                                    </div>
                                                    <div class="mt"> <a href="#" tabindex="0" class="btn bg-blue-ui white read">read more</a> </div>
                                                    <!--Read More Button-->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--.row-->
                                </div>
                                <!--.item-->
                            </div>
                            <!--.carousel-inner-->
                        </div>
                        <!--.Carousel-->
                    </div>
                </div>
            </div>
        </div>

        <style>


            .cta-100 {
                margin-top: 100px;
                padding-left: 8%;
                padding-top: 7%;
            }
            .col-md-4{
                padding-bottom:20px;
            }

            .white {
                color: #fff !important;
            }
            .mt{float: left;margin-top: -20px;padding-top: 20px;}
            .bg-blue-ui {
                background-color: #708198 !important;
            }
            figure img{width:300px;}

            #blogCarousel {
                padding-bottom: 100px;
            }

            .blog .carousel-indicators {
                left: 0;
                top: -50px;
                height: 50%;
            }


            /* The colour of the indicators */

            .blog .carousel-indicators li {
                background: #708198;
                border-radius: 50%;
                width: 8px;
                height: 8px;
            }

            .blog .carousel-indicators .active {
                background: #0fc9af;
            }




            .item-carousel-blog-block {
                outline: medium none;
                padding: 15px;
            }

            .item-box-blog {
                border: 1px solid #dadada;
                text-align: center;
                z-index: 4;
                padding: 20px;
            }

            .item-box-blog-image {
                position: relative;
            }

            .item-box-blog-image figure img {
                width: 100%;
                height: auto;
            }

            .item-box-blog-date {
                position: absolute;
                z-index: 5;
                padding: 4px 20px;
                top: -20px;
                right: 8px;
                background-color: #41cb52;
            }

            .item-box-blog-date span {
                color: #fff;
                display: block;
                text-align: center;
                line-height: 1.2;
            }

            .item-box-blog-date span.mon {
                font-size: 18px;
            }

            .item-box-blog-date span.day {
                font-size: 16px;
            }

            .item-box-blog-body {
                padding: 10px;
            }

            .item-heading-blog a h5 {
                margin: 0;
                line-height: 1;
                text-decoration:none;
                transition: color 0.3s;
            }

            .item-box-blog-heading a {
                text-decoration: none;
            }

            .item-box-blog-data p {
                font-size: 13px;
            }

            .item-box-blog-data p i {
                font-size: 12px;
            }

            .item-box-blog-text {
                max-height: 100px;
                overflow: hidden;
            }

            .mt-10 {
                float: left;
                margin-top: -10px;
                padding-top: 10px;
            }

            .btn.bg-blue-ui.white.read {
                cursor: pointer;
                padding: 4px 20px;
                float: left;
                margin-top: 10px;
            }

            .btn.bg-blue-ui.white.read:hover {
                box-shadow: 0px 5px 15px inset #4d5f77;
            }

        </style>









    </body>
</html>
