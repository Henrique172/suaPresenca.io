<?php
if (!TEMPLATEPATH): die('Acesso direto proibido.');
endif;
get_header();
?>
<div class="fundo">

    <?php // var_dump( get_posts());die('dsdsdsd');?> 

    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
            <div class="container">

                <div class="row">
                    <h1 class="col-lg-3"><?php the_title(); ?></h1>
                    <?php the_content(); ?>
                </div>
            </div>


            <?php
        endwhile;
    endif;
    ?>    
</div>

<?php
get_footer();
?>

<style>
    .fundo{
        background-color: black
    }
</style>
