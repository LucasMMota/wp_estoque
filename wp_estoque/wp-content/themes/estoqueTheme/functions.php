<?php

add_action( 'init', 'create_posttype' );
function create_posttype() {
    register_post_type( 'produtos',
        array(
            'labels' => array(
                'name' => __( 'Produtos' ),
                'singular_name' => __( 'Produto' )
            ),
            'public' => true,
            'has_archive' => true,
            'rewrite' => array('slug' => 'produtos'),
        )
    );
    register_post_type( 'clientes',
        array(
            'labels' => array(
                'name' => __( 'Clientes' ),
                'singular_name' => __( 'Cliente' )
            ),
            'public' => true,
            'has_archive' => true,
            'rewrite' => array('slug' => 'clientes'),
        )
    );
    register_post_type( 'pedidos',
        array(
            'labels' => array(
                'name' => __( 'Pedidos' ),
                'singular_name' => __( 'Pedido' )
            ),
            'public' => true,
            'has_archive' => true,
            'rewrite' => array('slug' => 'pedidos'),
        )
    );
}