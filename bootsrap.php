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
// require_once "app/Helix/Loader/DatabaseInstall.php";
// require_once "install.php";
new I18n();


/*


$text = "Solid understanding of software, hardware, networks, and security fundamentals";
$search = "of software";

// Aranan ifadenin başlangıç konumunu bul
echo $position = strpos($text, $search);

if ($position !== false) {
    // İfadenin uzunluğunu al
    $length = strlen($search);

    // Metinden ifadeyi çıkar
    $found = substr($text, $position, $length);

    echo "Bulunan ifade: '$found'";
} else {
    echo "'$search' ifadesi metinde bulunamadı.";
}


$text = "Solid understanding of software, hardware, networks, and security fundamentals";

if (preg_match('/of software/i', $text, $matches)) {
    echo "Bulunan ifade: '" . $matches[0] . "'";
} else {
    echo "'of software' ifadesi bulunamadı.";
}


$text = "Solid understanding of software, hardware, networks, and security fundamentals";
$search = "of software";
$replace = "*of software*";

// Değiştir
$updatedText = str_replace($search, $replace, $text);

echo $updatedText;



*/