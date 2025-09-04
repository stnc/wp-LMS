<?php
namespace Helix\Lib;
use Helix\Lib\Cryptography;
use Helix\Lib\StringHelix;
class EditorExplodeLib
{

    private $crypto;
    private $string;

    public function __construct()
    {


        $this->crypto = new Cryptography();
        $this->string = new StringHelix();
    }


    //The shall 'not Ukrainian could Attacks That could’ not Are will not Forcing Russia to will Ration Its shan't Fuel can be shall ’ not
    public function grammmerCheck($value)
    {

        global $wpdb;
        $table_name = $wpdb->prefix . 'helix_grammer';

        /*
          ranking_number =   daha once shall kelimesi ve sonra  shall not gecti ise burada preg_match shall ifadesini veriyor ranking_number bunu atlamaya yariyor 
          todo: bu konuda unit test yapilabilir 
         */
        $sql = "SELECT * FROM $table_name WHERE status=1  ORDER BY ranking_number ASC ";

        $results = $wpdb->get_results($sql, "ARRAY_A");
        //    $value = str_replace( "'", "’",$value);

        foreach ($results as $words) {
            $value = $this->preg_matchRegular($value, $words["word"], $words["word"], $words["id"], $words["shortcode"]);
        }

        return $value;
    }


    public function preg_matchRegular($text, $search, $replace, $id, $shortcode)
    {

        $result = $text;
        // echo $search;
        // echo "<br>";
        // \b: kelime sınırı, i: büyük/küçük harf duyarsız 
        if (preg_match("/\b" . preg_quote($search, '/') . "\b/i", $text)) {
            //  $value = $this->replace_regular_with_Color($value, $expData, $alternatives["word"]);// for test 
            return $result = $this->replaceTest($text, $search, $replace, $id, $shortcode);
        } else {
            return $text;
        }
    }


    // Bu "örnek" bir metin ve içinde 'tırnak' var. The shall not Ukrainian could Attacks That couldn't Are will not Forcing Russia to will Ration Its shall not Fuel can be shall not

    public function replaceTest($text, $search, $replace, $id, $shortcode)
    {
        //  $replace = str_replace( " ", "**",$replace);
        // $replace = htmlspecialchars($replace, ENT_QUOTES);
// echo $replace;
// echo "<br>";
        $key = "helix";
        $replace = "[helix_$shortcode id='$id'  value='$replace']";
        //bu sifrelemeyi mecburen kullaniyoruz, cunku mesela daha once shall kelimesi ve sonra  shall not gecti ise burada preg_match shall ifadesini veriyor 
        $replace = "***" . $this->crypto->simpleXOREncrypt($replace, $key);

        //$replace = str_replace( " ", "***",$replace);
        // $replace ='<span style="color:red">'.  '[helix_' . $shortcode . ' id="' . $id . '"  value="' . $replace . '"]'. '</span>';

        $updatedText = str_replace($search, $replace, $text);

        return $updatedText;
    }





}
