<style>
    .pad{
        padding: 30px;
        height: 160px;
    }
    .imagem{
        width: 100%;
    }
    img{
        width: 100%;
    }
    .tudo{
        background-color: black
    }    
</style>
<div class="tudo">
    <?php
    get_header();
    ?>
    <?php
    query_posts("post_type=background");

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
</div>

</div>
<?php echo get_template_part('modal') ?>
<?php
get_footer();
?>