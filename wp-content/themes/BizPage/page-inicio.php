<?php
if (!TEMPLATEPATH): die('Acesso direto proibido.');
endif;
get_header();
?>

<?php $template_directory = get_template_directory_uri(); ?>

<link href="<?php echo $template_directory; ?>/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo $template_directory; ?>/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="<?php echo $template_directory; ?>/lib/animate/animate.min.css" rel="stylesheet">
<link href="<?php echo $template_directory; ?>/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="<?php echo $template_directory; ?>/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="<?php echo $template_directory; ?>/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="css/style.css" rel="stylesheet">

</head>

<body>

    <section id="intro">
        <div class="intro-container">
            <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

                <ol class="carousel-indicators"></ol>

                <div class="carousel-inner" role="listbox">

                    <?php
                    query_posts("post_type=img");

                    if (have_posts()):
                        while (have_posts()): the_post();
                            ?>
                            <div class="carousel-item active">
                                <div class="carousel-background"><img style="width: 100%"src="<?php the_field('img') ?>"></div>
                            </div>
                            <?php
                        endwhile;
                    endif;

                    wp_reset_query();
                    ?>


                </div>

            </div>
        </div>
    </section><!-- #intro -->

    <main id="main">

        <!--==========================
          Featured Services Section
        ============================-->
        <section id="featured-services">
            <div class="container">
                <div class="row">

                    <div class="col-lg-4 box">
                        <i class="ion-ios-bookmarks-outline"></i>
                        <h4 class="title"><a href="">Lorem Ipsum Delino</a></h4>
                        <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
                    </div>

                    <div class="col-lg-4 box box-bg">
                        <i class="ion-ios-stopwatch-outline"></i>
                        <h4 class="title"><a href="">Dolor Sitema</a></h4>
                        <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
                    </div>

                    <div class="col-lg-4 box">
                        <i class="ion-ios-heart-outline"></i>
                        <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
                        <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
                    </div>

                </div>
            </div>
        </section><!-- #featured-services -->

        <!--==========================
          About Us Section
        ============================-->
        <section id="about">
            <div class="container">

                <header class="section-header">
                    <h3>About Us</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </header>

                <div class="row about-cols">

                    <div class="col-md-4 wow fadeInUp">
                        <div class="about-col">
                            <div class="img">
                                <img src="<?php echo $template_directory; ?>/img/about-mission.jpg" alt="" class="img-fluid">
                                <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
                            </div>
                            <h2 class="title"><a href="#">Our Mission</a></h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="about-col">
                            <div class="img">
                                <img src="<?php echo $template_directory; ?>/img/about-plan.jpg" alt="" class="img-fluid">
                                <div class="icon"><i class="ion-ios-list-outline"></i></div>
                            </div>
                            <h2 class="title"><a href="#">Our Plan</a></h2>
                            <p>
                                Sed ut perspiciatis unde omnis iste natus error sit voluptatem  doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="about-col">
                            <div class="img">
                                <img src="<?php echo $template_directory; ?>/img/about-vision.jpg" alt="" class="img-fluid">
                                <div class="icon"><i class="ion-ios-eye-outline"></i></div>
                            </div>
                            <h2 class="title"><a href="#">Our Vision</a></h2>
                            <p>
                                Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit, sed quia magni dolores eos qui ratione voluptatem sequi nesciunt Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.
                            </p>
                        </div>
                    </div>

                </div>

            </div>
        </section><!-- #about -->

        <!--==========================
          Services Section
        ============================-->
        <section id="services">
            <div class="container">

                <header class="section-header wow fadeInUp">
                    <h3>Services</h3>
                    <p>Laudem latine persequeris id sed, ex fabulas delectus quo. No vel partiendo abhorreant vituperatoribus, ad pro quaestio laboramus. Ei ubique vivendum pro. At ius nisl accusam lorenta zanos paradigno tridexa panatarel.</p>
                </header>

                <div class="row">

                    <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-duration="1.4s">
                        <div class="icon"><i class="ion-ios-analytics-outline"></i></div>
                        <h4 class="title"><a href="">Lorem Ipsum</a></h4>
                        <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
                    </div>
                    <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-duration="1.4s">
                        <div class="icon"><i class="ion-ios-bookmarks-outline"></i></div>
                        <h4 class="title"><a href="">Dolor Sitema</a></h4>
                        <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
                    </div>
                    <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-duration="1.4s">
                        <div class="icon"><i class="ion-ios-paper-outline"></i></div>
                        <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
                        <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
                    </div>
                    <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
                        <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
                        <h4 class="title"><a href="">Magni Dolores</a></h4>
                        <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
                    </div>
                    <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
                        <div class="icon"><i class="ion-ios-barcode-outline"></i></div>
                        <h4 class="title"><a href="">Nemo Enim</a></h4>
                        <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
                    </div>
                    <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
                        <div class="icon"><i class="ion-ios-people-outline"></i></div>
                        <h4 class="title"><a href="">Eiusmod Tempor</a></h4>
                        <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
                    </div>

                </div>

            </div>
        </section><!-- #services -->

    </main>


    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
    <!-- Uncomment below i you want to use a preloader -->
    <!-- <div id="preloader"></div> -->

    <!-- JavaScript Libraries -->
    <script src="<?php echo $template_directory; ?>/lib/jquery/jquery.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/jquery/jquery-migrate.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/easing/easing.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/superfish/hoverIntent.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/superfish/superfish.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/wow/wow.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/waypoints/waypoints.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/counterup/counterup.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/isotope/isotope.pkgd.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/lightbox/js/lightbox.min.js"></script>
    <script src="<?php echo $template_directory; ?>/lib/touchSwipe/jquery.touchSwipe.min.js"></script>
    <!-- Contact Form JavaScript File -->
    <script src="<?php echo $template_directory; ?>/contactform/contactform.js"></script>

    <!-- Template Main Javascript File -->
    <script src="js/main.js"></script>

</body>
</html>
