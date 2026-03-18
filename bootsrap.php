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
/*
will not 
could not
could’not
could’ not
 gibi ifadeler filtreden gecemiyor buna cozum gerekiyor 
*/

// $plugin_data_helix = get_plugin_data( __FILE__ );
// $HelixPluginVersion = $plugin_data_helix['Version'];

add_action('admin_init', function() {
    if (function_exists('set_current_screen')) return;
}, 1);

$HelixPluginVersion = "5.1";
require_once __DIR__ . '/vendor/autoload.php'; // Autoload files using Composer autoload
require_once ('plugin-conf.php');
use Helix\Loader\I18n;
use Helix\Loader\Loading;
new Loading();
require_once "app/shortcut/helix_grammar_shortcode.php";
require_once "app/shortcut/helix_core_shortcode.php";
include ('app/view/homepage/homepage.php');
require_once "app/controller/router.php";
new I18n();




// echo $text = "The Ukrainian could Attacks That could’not Are will not Forcing Russia to will Ration Its Fuel can be could";
// $search="could’not";
// $replace="could not";

//     //  $replace = "[helix_".$type ." id='" . $id . "  value='" . $search . "  ']";
//     //$replace = "*****";


//     echo "<br>1";
//     $updatedText = str_replace($search, $replace, $text);

//     // var_dump($text);

//     // var_dump($updatedText);

//     echo $updatedText;
//     echo "<br>7";







/*

echo $text = "The Ukrainian could Attacks That could’not Are will not Forcing Russia to will Ration Its Fuel can be could";
$keywords = ["can", "could", "could’not", "will", "will not"];
echo "<br>1";
$found = [];

foreach ($keywords as $word) {
    // \b: kelime sınırı, i: büyük/küçük harf duyarsız
    if (preg_match("/\b" . preg_quote($word, '/') . "\b/i", $text)) {
        $found[] = $word;
        $text =replace($text, $word, 1 , "d");
    }
}

if (!empty($found)) {
    echo "Tam eşleşen kelimeler: " . implode(", ", $found);
} else {
    echo "Hiçbir tam kelime eşleşmesi bulunamadı.";
}


echo "<br>7";
echo $text ;

 function replace($text, $search, $id , $type)
{
     $replace = "[helix_".$type ." id='" . $id . "  value='" . $search . "  ']";
    //$replace = "*****";

    $key = "helix";
  //  $replace=  simpleXOREncrypt(   $replace, $key);
    // Değiştir
    $updatedText = str_replace($search, $replace, $text);

    // var_dump($text);

    // var_dump($updatedText);

    echo $updatedText;
    echo "<br>7";
    return  $updatedText;
}


 function simpleXOREncrypt($text, $key) {
    $output = '';
    for ($i = 0; $i < strlen($text); $i++) {
         $output .= $text[$i] ^ $key[$i % strlen($key)];
    }
    return base64_encode($output);
}

*/











/*

function simpleXOREncrypt($text, $key) {
    $output = '';
    for ($i = 0; $i < strlen($text); $i++) {
        $output .= $text[$i] ^ $key[$i % strlen($key)];
    }
    return base64_encode($output);
}

function simpleXORDecrypt($encodedText, $key) {
    $text = base64_decode($encodedText);
    $output = '';
    for ($i = 0; $i < strlen($text); $i++) {
        $output .= $text[$i] ^ $key[$i % strlen($key)];
    }
    return $output;
}

$orijinalMetin = "Merhaba Sam!  fdfd f dfd df fd d ddf dfd fdf d fdf fd ";
$anahtar = "gizli123";

// Şifreleme
$sifreli = simpleXOREncrypt($orijinalMetin, $anahtar);
echo "Şifreli metin: " . $sifreli . "\n";

echo "<br>";
// Çözme
$cozulmus = simpleXORDecrypt($sifreli, $anahtar);
echo "Çözülmüş metin: " . $cozulmus . "\n";








echo "<br>";
$modal="can";
$prepositions="except";
$ComplexPrepositions="on account of";
$prepositionsOfTime="during";
$conjunctions="during";



$text = "Solid can conjunctions understanding of software, except, where, and on account of fundamentals during ";
$search = "where";


if (preg_match('/'.$search.'/i', $text, $matches)) {
    echo "<br>";
    echo "Bulunan ifade: '" . $matches[0] . "'";
} else {
    echo "<br>";
    echo "'of software' ifadesi bulunamadı.";
}


// $text = "Solid understanding of software, hardware, networks, and security fundamentals";
// $search = "of software";
$replace = "*of software*";

// Değiştir
$updatedText = str_replace($search, $replace, $text);
echo "<br>";
echo $updatedText;
*/





/*
// Aranan ifadenin başlangıç konumunu bul
echo $position = strpos($text, $search);
echo "<br>";
if ($position !== false) {
    // İfadenin uzunluğunu al
    $length = strlen($search);

    // Metinden ifadeyi çıkar
    $found = substr($text, $position, $length);

    echo "Bulunan ifade: '$found'";
    echo "<br>";
} else {
    echo "<br>";
    echo "'$search' ifadesi metinde bulunamadı.";
}
*/

// $text = "Solid understanding of software, hardware, networks, and security fundamentals";