<div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
    <div class="MultiCarousel-inner">
        <?php
        query_posts("post_type=banner");

        if (have_posts()):
            while (have_posts()): the_post();
                ?>
                <div class = "item">
                    <div class = "pad15">
                        <p><?php echo strtoupper(get_field('titulo'));?></p>
                        <div style="width: 200px; border: 1px solid red">
                            <img style="width: 100%; height: 180px" src="<?php the_field('imagem'); ?>"/>
                        </div>
                        <br />
                        <br />
                        <p><?php the_field('preço'); ?></p>
                    </div>
                </div>
                <?php
            endwhile;
        endif;

        wp_reset_query();
        ?>

    </div>
    <button class="btn btn-primary leftLst"><</button>
    <button class="btn btn-primary rightLst">></button>
</div>





