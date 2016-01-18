<?php
/**
 * Created by PhpStorm.
 * User: Lucas
 * Date: 17/01/2016
 * Time: 15:26
 */
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
            <th>ID_Cliente</th>
            <th>ID_Produto</th>
        </tr>
        </thead>
        <tbody>
        <?php if ($query->have_posts()) {
            while ($query->have_posts()) {
                $query->the_post();
                $custom_fields = get_post_meta(get_the_ID());
                ?>
                <tr>
                <td><?php echo $custom_fields['wpcf-id_cliente'][0] ?></td>
                <td><?php echo $custom_fields['wpcf-id_cliente'][0] ?></td>
                </tr><?php
            }
        }else{
            ?>
            <tr><td colspan="2">Nenhum Registro</td></tr>
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



