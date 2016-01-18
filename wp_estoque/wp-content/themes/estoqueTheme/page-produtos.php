<?php

get_header();

$args = array(
    'post_type' => $post->post_name,
    'orderby' => 'post_name',
    'order' => 'ASC'
);
$query = new WP_Query($args);
?>
<div class="container">
    <table>
        <thead>
        <tr>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Preço</th>
        </tr>
        </thead>
        <tbody>
        <?php if ($query->have_posts()) {
            while ($query->have_posts()) {
                $query->the_post();
                $custom_fields = get_post_meta(get_the_ID());
                ?>
                <tr>
                <td><?php echo $custom_fields['wpcf-nome'][0] ?></td>
                <td><?php echo $custom_fields['wpcf-descricao'][0] ?></td>
                <td><?php echo $custom_fields['wpcf-preco'][0] ?></td>
                </tr><?php
            }
        }else{
            ?>
            <tr><td colspan="3">Nenhum Registro</td></tr>
            <?php
        }
        ?>
        </tbody>
    </table>
</div>
<?php
wp_reset_postdata();
get_footer();
?>



