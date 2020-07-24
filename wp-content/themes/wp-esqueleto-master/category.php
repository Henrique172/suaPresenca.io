<?php get_header(); ?>

<div class="container"> 
    <br />
    <br />
	<?php echo '<h1>'.basename(__FILE__).'</h1>'; ?>
</div>

<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

        <h1><?php the_title(); ?></h1>

        <?php the_content(); ?>

    <?php
    endwhile;
endif;
?>    

<?php get_footer(); ?>