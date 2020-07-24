<?php get_header(); ?>

<div class="container"> 
    <br />
    <br />
    <?php echo '<h1>' . basename(__FILE__) . '</h1>'; ?>
</div>
<?php
while (have_posts()): the_post();
    ?>
    <h2><?php // the_title();  ?></h2>
    <?php the_content(); ?>
<?php endwhile; ?>


<?php get_footer(); ?>