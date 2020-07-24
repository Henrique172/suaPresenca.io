<?php // die('santa maria');   ?>
<style>
    .pad{
        padding: 30px;
        /*height: 160px;*/
    }
    .imagem{
        width: 100%;
        opacity: 0.7;

    }
    .tudo{
        background-color: #001a31;
    }    
</style>
<div class="tudo">
    <?php
    get_header();
    ?>
    <?php
    query_posts("post_type=backgroundStm");

//echo the_field('imagem');
    if (have_posts()):
        while (have_posts()): the_post();
            ?>
            <div class="imagem">
                <?php // $template_directory = get_template_directory_uri(); ?>
                <img  src="<?php the_field('imagem') ?>"/>
                <?php the_content() ?>
            </div>
            <?php
        endwhile;
    endif;

    wp_reset_query();
    ?>

    <?php // if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<!--<h1><?php // the_title();   ?></h1>-->

    <?php // the_content(); ?>

    <?php
    // endwhile;
//endif; 
    ?>    
</div>

</div>
<?php // echo get_template_part('modal')   ?>
<div class="footer">

    <?php
    get_footer();
    ?>              
</div>