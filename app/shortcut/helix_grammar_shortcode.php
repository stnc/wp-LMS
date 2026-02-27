<?php

/*
conjunction = baglac 
makes conjunction shortcode
*/
function helix_conjunction_shortcode($atts)
{
    $default = array(
        'value' => '#',
    );

    $a = shortcode_atts($default, $atts);

    return '

    <p class="symbol"> <a style="color: black;" href="' . $a['value'] . '">' . $a['value'] . '</a></p>
';
}

add_shortcode('helix_conjunction_sc', 'helix_conjunction_shortcode');

/*
preposition = edat 
makes preposition shortcode
*/
function helix_preposition_shortcode($atts)
{
    $default = array(
        'value' => '#',
    );

    $a = shortcode_atts($default, $atts);

    return '

    <p class="symbol"> <a style="color: black;" href="' . $a['value'] . '">' . $a['value'] . '</a></p>
';
}

add_shortcode('helix_preposition_sc', 'helix_preposition_shortcode');


/*
prepositions Of Time = Zaman Edatları 
makes prepositions Of Time shortcode
*/
function helix_prepositionsOfTime_shortcode($atts)
{
    $default = array(
        'value' => '#',
    );

    $a = shortcode_atts($default, $atts);

    return '

    <p class="symbol"> <a style="color: black;" href="' . $a['value'] . '">' . $a['value'] . '</a></p>
';
}

add_shortcode('helix_prepositionsOfTime_sc', 'helix_preposition_shortcode');


/*
Complex Preposition= Karmaşık Edat
makes Complex Preposition shortcode
*/
function helix_ComplexPreposition_shortcode($atts)
{
    $default = array(
        'value' => '#',
    );

    $a = shortcode_atts($default, $atts);

    return '
   
    <p class="symbol"> <a style="color: black;" href="' . $a['value'] . '">' . $a['value'] . '</a></p>
';
}

add_shortcode('helix_ComplexPreposition_sc', 'helix_ComplexPreposition_shortcode');


/*
modal Verbs modal fiiller
makes modal Verbs shortcode
*/
function helix_modalVerbs_shortcode($atts)
{
    $default = array(
        'value' => '#',
    );

    $a = shortcode_atts($default, $atts);

    return '

    <p class="symbol"> <a style="color: black;" href="' . $a['value'] . '">' . $a['value'] . '</a></p>
';
}

add_shortcode('helix_modalVerbs_sc', 'helix_modalVerbs_shortcode');


