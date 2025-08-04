<?php

function helix_conjunction_shortcode($atts)
{
    $default = array(
        'value' => '#',
    );

    $a = shortcode_atts($default, $atts);

    return '
    <h3 class="name">conjunction</h3>
    <p class="symbol"> <a style="color: black;" href="' . $a['value'] . '">' . $a['value'] . '</a></p>
';
}

add_shortcode('helix_conjunction_sc', 'helix_conjunction_shortcode');





/*

add_shortcode( 'cta_button', 'salcodes_cta' );

function salcodes_cta( $atts ) {
 $a = shortcode_atts( array(
 'link' => '#',
 'id' => 'salcodes',
 'color' => 'blue',
 'size' => '',
 'label' => 'Button',
 'target' => '_self'
 ), $atts );
 $output = '<p><a href="' . esc_url( $a['link'] ) . '" id="' . esc_attr( $a['id'] ) . '" class="button ' . esc_attr( $a['color'] ) . ' ' . esc_attr( $a['size'] ) . '" target="' . esc_attr($a['target']) . '">' . esc_attr( $a['label'] ) . '</a></p>';
 return $output;
}
*/


/*
 <div class="container 44">
[cta_button]

[helix_wordTL_sc id="94"] 5
<div class="row mb-2">bunun ingilzcesi 6666</div>
[helix_wordML_sc id="94"] 

[cta_button]


</div>
 */