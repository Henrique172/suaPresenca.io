    todos os meus tesuouros vou preparar ati eu quebro meu vaso
<?php
if (!TEMPLATEPATH): die('Acesso direto proibido.');
endif;
get_header();
?>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<div class="container"> 
    <div style="text-align: center">


        <?php
        echo '<h1>Arquivo sendo executado: <span class="alert alert-success"> ' . basename(__FILE__) . '</span></h1>';
//    var_dump(get_header());die;
        while (have_posts()): the_post();
            ?>
            <h2><?php // the_title(); ?></h2>
            <?php the_content(); ?>
        <?php endwhile; ?>

    </div>
</div>

<?php get_footer(); ?>

