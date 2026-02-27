<?php
namespace Helix\Lib;
class StringHelix
{

    function firstNLetter($word, $n) {
        return mb_substr($word, 0, $n, "UTF-8");
    }
    
    // echo firstNLetter("geliştirme", 5); // Çıktı: geli

    function firstNLetterDynamic($word,$start, $length) {
        return mb_substr($word, $start, $length, "UTF-8");
    }


//Fonksiyon: Kelimenin Uzunluğunu Al
    function stringLen($word) {
        return mb_strlen($word, "UTF-8");
    }

    function stringToLower($word) {
        return mb_strtolower($word, "UTF-8");
    }
    
    
}
