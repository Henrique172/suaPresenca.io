    
<?php
if (!TEMPLATEPATH): die('Acesso direto proibido.');
endif;
get_header();
?>

<div class="container"> 
    <br />
    <br />
    <br />
    <br />
    <br />

    <?php
    die('aqui');
    query_posts("post_type=titulo");

    if (have_posts()):
        while (have_posts()): the_post();
            ?>
            <div class="text-center">
                <h1><?php the_field('titulo') ?></h1>
                <h3><?php the_field('sub_titulo') ?></h3>
            </div>
            <?php
        endwhile;
    endif;

    wp_reset_query();
    ?>


    <?php get_template_part('carousel') ?>



    <?php
    echo '<h1>Arquivo sendo executado: <span class="alert alert-success"> ' . basename(__FILE__) . '</span></h1>';
//    var_dump(get_header());die;
    while (have_posts()): the_post();
        ?>
        <h2><?php the_title(); ?></h2>
        <?php the_content(); ?>
    <?php endwhile; ?>

</div>

<?php // get_footer(); ?>

