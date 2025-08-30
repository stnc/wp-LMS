<?php

namespace Helix\Loader;
class DatabaseInstall
{

    public function __construct()
    {
        register_activation_hook(__FILE__,  array($this, 'activate'));
        add_action('admin_init',  array($this, 'activate'));


        // register_deactivation_hook(
        //     __FILE__,
        //     array(
        //         $this,
        //         'deactivate'
        //     )
        // );
    }

    public static function activate()
    {

        global $wpdb;

        $charset_collate = $wpdb->get_charset_collate();
        require_once ABSPATH . 'wp-admin/includes/upgrade.php';

        $table_name = $wpdb->prefix . 'helix_words';
        $sql = "CREATE TABLE $table_name (
            id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
            vocable_level_id BIGINT(20) NULL DEFAULT NULL,
            level_cat_id INT(11) NULL DEFAULT NULL,
            tense_id BIGINT(20) NULL DEFAULT NULL,
            main_language LONGTEXT NULL DEFAULT NULL,
            main_language_json LONGTEXT NULL DEFAULT NULL,
            translate LONGTEXT NULL DEFAULT NULL,
            translate_json LONGTEXT NULL DEFAULT NULL,
            is_json TINYINT(4) NULL DEFAULT '0',
            comment LONGTEXT NULL DEFAULT NULL,
            source TEXT NULL DEFAULT NULL,
            status TINYINT(1) NULL DEFAULT '1',
            PRIMARY KEY  (id),
            INDEX tr (main_language(191))
        ) $charset_collate;";

        dbDelta($sql);

        $table_name = $wpdb->prefix . 'helix_level_categories';
        $sql = "CREATE TABLE $table_name (
                level_id INT(11) NOT NULL AUTO_INCREMENT,
                name VARCHAR(255) NOT NULL,
                status TINYINT(1) NULL DEFAULT '1',
                PRIMARY KEY (level_id)
            ) $charset_collate;";

        dbDelta($sql);





        $table_name = $wpdb->prefix . 'helix_level_categories_record';
        $sql = "CREATE TABLE $table_name (
                    record_id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
                    word_id BIGINT(20) NULL DEFAULT NULL,
                    level_id BIGINT(20) NULL DEFAULT '0',
                    PRIMARY KEY (record_id),
                    INDEX level_id_idx (level_id),
                    INDEX categories_record_id_idx (record_id)
                ) $charset_collate;";

        dbDelta($sql);

        $table_name = $wpdb->prefix . 'helix_speak_level_categories';

        $sql = "CREATE TABLE $table_name (
                    level_id INT(11) NOT NULL AUTO_INCREMENT,
                    name VARCHAR(255) NOT NULL,
                    status TINYINT(1) NULL DEFAULT '1',
                    PRIMARY KEY (level_id)
                ) $charset_collate;";

        dbDelta($sql);

        $table_name = $wpdb->prefix . 'helix_tense';
        $sql = "CREATE TABLE $table_name (
                        tense_id INT(11) NOT NULL AUTO_INCREMENT,
                        name_eng VARCHAR(255) NOT NULL,
                        name_tr VARCHAR(255) NOT NULL,
                        status TINYINT(1) NULL DEFAULT '1',
                        PRIMARY KEY (tense_id)
                    ) $charset_collate;";

        dbDelta($sql);



        $table_name = $wpdb->prefix . 'helix_vocable_level';
        $sql = "CREATE TABLE $table_name (
                            vocable_level_id INT(11) NOT NULL AUTO_INCREMENT,
                            name VARCHAR(255) NOT NULL,
                            status TINYINT(1) NULL DEFAULT '1',
                            PRIMARY KEY (vocable_level_id)
                        ) $charset_collate;";

        dbDelta($sql);


        $table_name = $wpdb->prefix . 'helix_grammer';
        $sql = "CREATE TABLE $table_name (
                            id INT(11) NOT NULL AUTO_INCREMENT,
                            word VARCHAR(255) NOT NULL,
                            encrypt_word LONGTEXT NULL DEFAULT NULL,
                            alternatives LONGTEXT NULL DEFAULT NULL,
                            comment LONGTEXT NULL DEFAULT NULL,
                            link TEXT NULL DEFAULT NULL,
                            type CHAR(50) NOT NULL,
                            shortcode CHAR(50) NOT NULL,
                            status TINYINT(1) NULL DEFAULT '1',
                            PRIMARY KEY (id)
                        ) $charset_collate;";

        dbDelta($sql);


    }
}
