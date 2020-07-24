
<link href="<?= get_template_directory_uri() . '/assets/css/bootstrap.css' ?>" rel="stylesheet" type="text/css"/>
<!--<div class="navbar navbar-inverse navbar-fixed-top headroom" >-->
<nav class="navbar navbar-expand-md  fixed-top fundoMenu" >
    <div class="container" >
        <div class="navbar-header">
            <?php // var_dump(home_url().'/assets/img/logo.png');die;?>
            <button   type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            <a class="navbar-brand logo-image" href="<?php echo home_url() ?>"><img class="logo" src="<?php echo get_template_directory_uri() . '/assets/img/logo.png' ?>" width="200" alt="volta de cristo"/></a>

        </div>

        <?php
//            var_dump(get_current_user_id());
        wp_nav_menu(
                array(
                    'theme_location' => 'menu_principal',
                    'menu' => '',
                    'container' => '',
                    'container_class' => '',
                    'container_id' => '',
                    'menu_class' => ' navbar-nav menu-principal ml-auto ',
                    'menu_id' => '',
                    'echo' => true,
                    'fallback_cb' => 'wp_page_menu',
                    'items_wrap' => '<ul id="%1$s" class="%2$s">%3$s</ul>',
                )
        );
//                
        ?>
    </div>
</nav
</div> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script>
//        alert($(window).scroll());
    $(window).scroll(function () {
        var scroll = $(window).scrollTop();

        if (scroll > 500) {
            $('.fundoMenu').css('background-color', 'black');
            $('.logo').css('margin-top', '-32px');

        } else {
            $('.fundoMenu').css('background-color', 'rgba(1,9,36,0.4)');
            $('.logo').css('margin-top', '');
        }
    });

    $(function () {
        $(".button-collapse").sideNav();
    });

</script>