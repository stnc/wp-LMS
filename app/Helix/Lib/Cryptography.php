<?php
namespace Helix\Lib;
use Helix\Lib\StringHelix;
class Cryptography
{

    private $string;
    public function __construct()
    {
        $this->string = new StringHelix();
    }


    function simpleXOREncrypt($text, $key) {
        $output = '';
        for ($i = 0; $i < strlen($text); $i++) {
            $output .= $text[$i] ^ $key[$i % strlen($key)];
       
        }
        // $output =   $this->string->stringToLower($output);
        return base64_encode($output);
    }
    
    function simpleXORDecrypt($encodedText, $key) {
        $text = base64_decode($encodedText);
        $output = '';
        for ($i = 0; $i < strlen($text); $i++) {
            $output .= $text[$i] ^ $key[$i % strlen($key)];
         
        }
        // $output =   $this->string->stringToLower($output);
        return $output;
    }

/*
$orijinalMetin = "Merhaba Sam!";
$anahtar = "gizli123";

// Şifreleme
$sifreli = simpleXOREncrypt($orijinalMetin, $anahtar);
echo "Şifreli metin: " . $sifreli . "\n";

// Çözme
$cozulmus = simpleXORDecrypt($sifreli, $anahtar);
echo "Çözülmüş metin: " . $cozulmus . "\n";

*/


}
