<?php
/*
Plugin Name:  Helix Learning
Plugin URI:	https://github.com/helix/hlearn	
Description: language learning system
Version: 2.1.4
Author: helix team 
Text Domain: helix_lng
Domain Path: /languages/
*/


$plugin_data_helix = get_plugin_data( __FILE__ );
$HelixPluginVersion = $plugin_data_helix['Version'];

require_once __DIR__ . '/vendor/autoload.php'; // Autoload files using Composer autoload
require_once ('plugin-conf.php');
require_once "app/shortcut/helix_grammar_shortcode.php";
require_once "app/shortcut/helix_core_shortcode.php";




use Helix\Loader\I18n;
use Helix\Loader\Loading;
new Loading();
include ('app/view/homepage/homepage.php');
require_once "app/controller/router.php";
new I18n();
// require_once "app/view/about/helixForm-adminMenu_About.php";


//TODO: database install 
/*
// use Helix\Loader\Menu as LoadMenu; // new LoadMenu();
use Helix\Api\Wordpress\WpMenu;
use Helix\Api\General\GeneralData;
use Helix\Api\Wordpress\Widget\Widgets;
use Helix\Api\Wordpress\Posts\Posts;
new Widgets();
new Posts();
new GeneralData();
new WpMenu();
*/