<?php
// var_dump(get_current_user_id());
/* CRIANDO MENU PARA MENU BANNER */
add_action( 'init', 'criar_post_bemVindo' );

function criar_post_bemVindo() {

	$labels = array(
	    'name' => _x('bemVindo', 'post type general name'),
	    'singular_name' => _x('Bem Vindo', 'post type singular name'),
	    'add_new' => _x('Adicionar Novo', 'bemVindo'),
	    'add_new_item' => __('Adicionar Novo'),
	    'edit_item' => __('Editar Bem Vindo'),
	    'new_item' => __('Adicionar Novo'),
	    'all_items' => __('Todos os Bem Vindo'),
	    'view_item' => __('Ver Bem Vindo'),
	    'search_items' => __('Pesquisar Bem Vindo'),
	    'not_found' =>  __('NÃ£o foram encontrados Bem Vindo'),
	    'not_found_in_trash' => __('NÃ£o foram encontrados Bem Vindo na Lixeira'),
	    'parent_item_colon' => '',
	    'menu_name' => 'Bem Vindo'
    );

	register_post_type( 'bemVindo', array(
	    'labels' => $labels,
	    'public' => true,
	    'publicly_queryable' => true,
	    'show_ui' => true,
	    'show_in_menu' => true,
	    'has_archive' => 'banners',
	    'menu_icon' => 'dashicons-media-interactive',
	    'rewrite' => array(
		'slug' => 'bemVindo',
		'with_front' => true,
	    ),
	    'capability_type' => 'post',
	    'has_archive' => true,
	    'hierarchical' => true,
	    'menu_position' => 5,
	    'supports' => array('title')
	    )
    );

}

add_action( 'init', 'criar_post_backgroundStm' );
function criar_post_backgroundStm() {

	$labels = array(
	    'name' => _x('BackgroundStm', 'post type general name'),
	    'singular_name' => _x('Background Santa Maria', 'post type singular name'),
	    'add_new' => _x('Adicionar Novo', 'Background Santa Maria'),
	    'add_new_item' => __('Adicionar Novo'),
	    'edit_item' => __('Editar Background Santa Maria'),
	    'new_item' => __('Adicionar Novo'),
	    'all_items' => __('Todos os Background Santa Maria'),
	    'view_item' => __('Ver Background Santa Maria'),
	    'search_items' => __('Pesquisar Background Santa Maria'),
	    'not_found' =>  __('NÃ£o foram encontrados Background Santa Maria'),
	    'not_found_in_trash' => __('NÃ£o foram encontrados Background na Lixeira'),
	    'parent_item_colon' => '',
	    'menu_name' => 'Background Santa Maria'
    );

	register_post_type( 'backgroundStm', array(
	    'labels' => $labels,
	    'public' => true,
	    'publicly_queryable' => true,
	    'show_ui' => true,
	    'show_in_menu' => true,
	    'has_archive' => 'banners',
	    'menu_icon' => 'dashicons-media-interactive',
	    'rewrite' => array(
		'slug' => 'backgroundStm',
		'with_front' => true,
	    ),
	    'capability_type' => 'post',
	    'has_archive' => true,
	    'hierarchical' => true,
	    'menu_position' => 5,
	    'supports' => array('title')
	    )
    );

}
add_action( 'init', 'criar_post_backgroundRiacho' );
function criar_post_backgroundRiacho() {

	$labels = array(
	    'name' => _x('BackgroundRiacho', 'post type general name'),
	    'singular_name' => _x('Background Riacho Fundo', 'post type singular name'),
//	    'add_new_item' => __('Adicionar Novo'),
	    'edit_item' => __('Editar Background Riacho Fundo'),
	    'all_items' => __('Todos os Background Riacho Fundo'),
	    'view_item' => __('Ver Background Riacho Fundo'),
	    'search_items' => __('Pesquisar Background Riacho Fundo'),
	    'not_found' =>  __('NÃ£o foram encontrados Background Riacho Fundo'),
	    'not_found_in_trash' => __('NÃ£o foram encontrados Background na Lixeira'),
	    'parent_item_colon' => '',
	    'menu_name' => 'Background Riacho Fundo'
    );

	register_post_type( 'backgroundRiacho', array(
	    'labels' => $labels,
	    'public' => true,
	    'publicly_queryable' => true,
	    'show_ui' => true,
	    'show_in_menu' => true,
	    'has_archive' => 'banners',
	    'menu_icon' => 'dashicons-media-interactive',
	    'rewrite' => array(
		'slug' => 'backgroundRiacho',
		'with_front' => true,
	    ),
	    'capability_type' => 'post',
	    'has_archive' => true,
	    'hierarchical' => true,
	    'menu_position' => 5,
	    'supports' => array('title')
	    )
    );

}




/* CRIANDO MENU PARA MENU BANNER */
add_action( 'init', 'criar_post_banner' );

function criar_post_banner() {

	$labels = array(
	    'name' => _x('Banner', 'post type general name'),
	    'singular_name' => _x('Banner', 'post type singular name'),
	    'add_new' => _x('Adicionar Novo', 'banner'),
	    'add_new_item' => __('Adicionar Novo'),
	    'edit_item' => __('Editar Banner'),
	    'new_item' => __('Adicionar Novo'),
	    'all_items' => __('Todos os Banners'),
	    'view_item' => __('Ver Banners'),
	    'search_items' => __('Pesquisar Banners'),
	    'not_found' =>  __('NÃ£o foram encontrados Banners'),
	    'not_found_in_trash' => __('NÃ£o foram encontrados Banners na Lixeira'),
	    'parent_item_colon' => '',
	    'menu_name' => 'Banners'
    );

	register_post_type( 'banner', array(
	    'labels' => $labels,
	    'public' => true,
	    'publicly_queryable' => true,
	    'show_ui' => true,
	    'show_in_menu' => true,
	    'has_archive' => 'banners',
	    'menu_icon' => 'dashicons-format-image',
	    'rewrite' => array(
		'slug' => 'banners',
		'with_front' => true,
	    ),
	    'capability_type' => 'post',
	    'has_archive' => true,
	    'hierarchical' => true,
	    'menu_position' => 5,
	    'supports' => array('title')
	    )
    );

}





/* CRIANDO MENU PARA MENU titulo */
add_action( 'init', 'criar_post_titulo' );

function criar_post_titulo() {

	$labels = array(
	    'name' => _x('Titulo', 'post type general name'),
	    'singular_name' => _x('Titulo', 'post type singular name'),
	    'add_new' => _x('Adicionar Novo', 'titulo'),
	    'add_new_item' => __('Adicionar Novo'),
	    'edit_item' => __('Editar Titulo'),
	    'new_item' => __('Adicionar Novo'),
	    'all_items' => __('Todos os Titulo'),
	    'view_item' => __('Ver Banners'),
	    'search_items' => __('Pesquisar Titulo'),
	    'not_found' =>  __('NÃ£o foram encontrados Titulo'),
	    'not_found_in_trash' => __('NÃ£o foram encontrados Titulo na Lixeira'),
	    'parent_item_colon' => '',
	    'menu_name' => 'Titulo'
    );

	register_post_type( 'titulo', array(
	    'labels' => $labels,
	    'public' => true,
	    'publicly_queryable' => true,
	    'show_ui' => true,
	    'show_in_menu' => true,
	    'has_archive' => 'titulo',
	    'menu_icon' => 'dashicons-align-center',
	    'rewrite' => array(
		'slug' => 'titulo',
		'with_front' => true,
	    ),
	    'capability_type' => 'post',
	    'has_archive' => true,
	    'hierarchical' => true,
	    'menu_position' => 5,
	    'supports' => array('title')
	    )
    );

}




/*******************************************************************************
 * FUNÇÕES QUE INICIAL-SE COM O WP
 ******************************************************************************/
add_action('init', 'euam_init');
function euam_init() {
    euam_register_menus();
    //euam_register_post_types();
    //euam_register_taxonomies();
}

function euam_register_menus() {
  register_nav_menus(
            array(
//                menu-primario', 'Menu Principal ( Topo )
                'menu_principal' => __('Menu Principal', 'odin'),
                'footer_menu'=> __('footer-menu', 'odin'),
    ));
}

/*******************************************************************************
 * SUPORTE AO TEMA
 ******************************************************************************/
add_theme_support('menu');
add_theme_support('post-thumbnails');


/*******************************************************************************
 * CONFIGURAÇÕES DE IMAGENS
 ******************************************************************************/
add_image_size('post-thumb-euam', 1024, 800, true);



/*******************************************************************************
 * ARQUIVOS E BIBLIOTECAS CSS / JS
 ******************************************************************************/
add_action('wp_enqueue_scripts', 'euam_enqueue_scripts');

function euam_enqueue_scripts() {
    //CSS
    wp_enqueue_style('main-css', get_stylesheet_directory_uri() . '/assets/css/main.css');


    //JS
    wp_enqueue_script('jqueryMin', get_stylesheet_directory_uri() . '/assets/js/jquery-2.1.4.min.js', '', '', true);
    wp_enqueue_script('config', get_stylesheet_directory_uri() . '/assets/js/config.js', 'jqueryMin', '', true);
    wp_enqueue_script('bootstrapjs', get_stylesheet_directory_uri() . '/assets/js/bootstrap.min.js', '', '', true);
    wp_enqueue_script('bootstrap', get_stylesheet_directory_uri() . '/assets/css/bootstrap.min.css', '', '', true);
}

//adicionando arquivo js no admin
add_action('admin_enqueue_scripts', 'load_custom_script');

function load_custom_script() {
   // wp_enqueue_script('inputmask', get_stylesheet_directory_uri() . '/assets/js/jquery.inputmask.js', array('jquery'));
    //wp_enqueue_script('buscacep', get_stylesheet_directory_uri() . '/assets/js/buscacep.js', array('jquery'));
}



/*******************************************************************************
 * INCLUDES
 ******************************************************************************/
$path_tpl = TEMPLATEPATH . '/inc/';

(file_exists($path_tpl . 'helpers/fnc_main.php')) ? include_once $path_tpl . 'helpers/fnc_main.php' : die('<h1>arquivo nao encontrado '.__LINE__.'</h1>') ;
(file_exists($path_tpl . 'taxonomias.php')) ? include_once $path_tpl . 'taxonomias.php' : die('<h1>arquivo nao encontrado</h1>') ;



define('ACF_LITE', false);