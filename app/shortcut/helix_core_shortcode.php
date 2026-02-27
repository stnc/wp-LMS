<?php

use Helix\Lib\EditorExplodeLib2;

/***********************************************************************************************************************************************************
 *translate olan yaziyi json olarak parcalanmis veya gruplanmis sekilde output eder
 */

add_shortcode("helix_wordTL_sc", "helix_word_translate_shortcode");

/**
 * translate olan yaziyi json olarak parcalanmis veya gruplanmis sekilde output eder
 *
 * @param      array  $atts   User defined attributes in shortcode tag
 */
function helix_word_translate_shortcode($attr)
{
    // ob_start(); 
    global $wpdb;
    $lib = new EditorExplodeLib2();
    $helixForm_tableNameMain = $wpdb->prefix . 'helix_words';

    $attr = shortcode_atts(
        [
            "trlang" => "off",
            "mainlang" => "off",
            "desc" => "off",
            "id" => "0",
        ],
        $attr
    );

    $editId = sanitize_text_field($attr['id']);
    $desc = sanitize_text_field($attr['desc']);
    $translate = sanitize_text_field($attr['trlang']);
    $main_language = sanitize_text_field($attr['mainlang']);
    $desc_data = "";
    $translate_data = "";
    $main_language_data = "";
    $data = $wpdb->get_row($wpdb->prepare("SELECT translate_json, translate,main_language, comment,  id  FROM " . $helixForm_tableNameMain . "  WHERE id = %d", $editId));

    $translate_json = $data->translate_json;

    $main_language_decode = json_decode($translate_json, false, 512, JSON_BIGINT_AS_STRING);
    $button_html_json = '<div class="row">';
    foreach ($main_language_decode as $key => $value) {
        $button_html_json .= $lib->helix_button_html_bootsrap($value, $key);
    }
    if ($desc == "on") {
        $desc_data = nl2br(htmlspecialchars($data->comment));
    }

    if ($translate == "on") {
        $translate_data = "<br><br><br><strong>" . (htmlspecialchars($data->translate)) . "</strong>";
    }


    if ($main_language == "on") {
        $main_language_data = "<br><br><br><strong>" . (htmlspecialchars($data->main_language)) . "</strong>";
    }

    $button_html_json .= $main_language_data;
    $button_html_json .= $translate_data;
    $button_html_json .= $desc_data;

    if (!is_admin()) {
        $button_html_json .= '<a href="/wp-admin/admin.php?page=sentenceFragmentation&trigger=edit&id=' . $editId . '" target="_blank" class="wp-first-item">edit</a>';
    }

    $button_html_json .= '</div>';
    return $button_html_json;
?>
<?php
}

/***********************************************************************************************************************************************************
 * main language  olan yaziyi json olarak parcalanmis veya gruplanmis sekilde output eder
 */

add_shortcode("helix_wordML_sc", "helix_word_main_language_shortcode");
/**
 * @param      array  $atts   User defined attributes in shortcode tag
 */
function helix_word_main_language_shortcode($attr)
{
    global $wpdb;

    $lib = new EditorExplodeLib2();
    $helixForm_tableNameMain = $wpdb->prefix . 'helix_words';

    $attr = shortcode_atts(
        [
            "trlang" => "off",
            "mainlang" => "off",
            "desc" => "off",
            "id" => "0",
        ],
        $attr
    );

    $editId = sanitize_text_field($attr['id']);
    $desc = sanitize_text_field($attr['desc']);
    $translate = sanitize_text_field($attr['trlang']);
    $main_language = sanitize_text_field($attr['mainlang']);
    $desc_data = "";
    $translate_data = "";
    $main_language_data = "";
    $data = $wpdb->get_row($wpdb->prepare("SELECT main_language_json, translate,main_language, comment,  id  FROM " . $helixForm_tableNameMain . "  WHERE id = %d", $editId));

    $main_language_json = $data->main_language_json;

    $main_language_decode = json_decode($main_language_json, false, 512, JSON_BIGINT_AS_STRING);
    $button_html_json = '<div class="row">';

    foreach ($main_language_decode as $key => $value) {
        $button_html_json .= $lib->helix_button_html_bootsrap($value, $key);
    }

    if ($desc == "on") {
        $desc_data = nl2br(htmlspecialchars($data->comment));
    }

    if ($translate == "on") {
        $translate_data = "<br><br><br><strong>" . (htmlspecialchars($data->translate)) . "</strong>";
    }


    if ($main_language == "on") {
        $main_language_data = "<br><br><br><strong>" . (htmlspecialchars($data->main_language)) . "</strong>";
    }

    $button_html_json .= $main_language_data;
    $button_html_json .= $translate_data;
    $button_html_json .= $desc_data;

    if (!is_admin()) {
        $button_html_json .= '<a href="/wp-admin/admin.php?page=sentenceFragmentation&trigger=edit&id=' . $editId . '" target="_blank" class="wp-first-item">edit</a>';
    }

    $button_html_json .= '</div>';
    return $button_html_json;
}



/***********************************************************************************************************************************************************
 *translate olan yaziyi normal duz yazi hali ile verir 
 */

add_shortcode("helix_wordTL_Reg_sc", "helix_word_translate_regular_shortcode");

/**
 *translate olan yaziyi normal duz yazi hali ile verir 
 *
 * @param      array  $atts   User defined attributes in shortcode tag
 */
function helix_word_translate_regular_shortcode($attr)
{
    // ob_start(); 
    global $wpdb;

    $lib = new EditorExplodeLib2();
    $helixForm_tableNameMain = $wpdb->prefix . 'helix_words';

    $attr = shortcode_atts(
        [
            "mainlang" => "off",
            "desc" => "off",
            "id" => "0",
        ],
        $attr
    );

    $editId = sanitize_text_field($attr['id']);
    $desc = sanitize_text_field($attr['desc']);

    $main_language = sanitize_text_field($attr['mainlang']);
    $desc_data = "";
    $translate_data = "";
    $main_language_data = "";
    $data = $wpdb->get_row($wpdb->prepare("SELECT  translate,main_language, comment,  id  FROM " . $helixForm_tableNameMain . "  WHERE id = %d", $editId));
    $button_html_json = '<div class="row">';

    $translate_data = "<strong>" . (htmlspecialchars($data->translate)) . "</strong>";

    if ($desc == "on") {
        $desc_data = nl2br(htmlspecialchars($data->comment));
    }

    if ($main_language == "on") {
        $main_language_data = "<br><br><br><strong>" . (htmlspecialchars($data->main_language)) . "</strong>";
    }

    $button_html_json .= $main_language_data;
    $button_html_json .= $translate_data;
    $button_html_json .= $desc_data;

    if (!is_admin()) {
        $button_html_json .= '<a href="/wp-admin/admin.php?page=sentenceFragmentation&trigger=edit&id=' . $editId . '" target="_blank" class="wp-first-item">edit</a>';
    }

    $button_html_json .= '</div>';
    return $button_html_json;
?>
<?php
}