<?php
namespace Helix\Lib;
class EditorExplodeLib
{


    //The shall 'not Ukrainian could Attacks That could’ not Are will not Forcing Russia to will Ration Its shan't Fuel can be shall ’ not

    public function modalVerbs2($value)
    {

        global $wpdb;
        $table_name = $wpdb->prefix . 'helix_grammer';

        $sql = "SELECT * FROM $table_name WHERE status=1 ";
        $results = $wpdb->get_results($sql, "ARRAY_A");
    //    $value = str_replace( "'", "’",$value);
       $value = stripcslashes($value);

        foreach ($results as $words) {
            // echo $words["word"];
            // echo "<br>";
                 $value = $this->preg_matchRegular($value, $words["word"], $words["word"],$words["id"],$words["shortcode"]);
            
        }
        return $value;




    }


    public function preg_matchRegular($text, $search, $replace,$id, $shortcode)
    {
    
        $result = $text;
        // \b: kelime sınırı, i: büyük/küçük harf duyarsız 
        if (preg_match("/\b" . preg_quote($search, '/') . "\b/i", $text)) {
            //  $value = $this->replace_regular_with_Color($value, $expData, $alternatives["word"]);// for test 
            return $result = $this->replaceTest($text, $search, $replace,$id, $shortcode);
        } else {
            return $text;
        }
    }


    // Bu "örnek" bir metin ve içinde 'tırnak' var. The shall not Ukrainian could Attacks That couldn't Are will not Forcing Russia to will Ration Its shall not Fuel can be shall not

    public function replace($text, $search,$replace, $id, $shortcode)
    {

        $replace = '[helix_' . $shortcode . ' id="' . $id . '"  value="' . $replace . '"]';

        $updatedText = str_replace($search, $replace, $text);
        return $updatedText;
    }

    public function replaceTest($text, $search,$replace, $id, $shortcode)
    {
        //  $replace = str_replace( " ", "**",$replace);
        $replace = htmlspecialchars($replace, ENT_QUOTES);
        $key = "helix";

        $replace =  '[helix_'.$shortcode.' id="'.$id.'"  value="'.$replace.'"]';
        echo $replace = $this->simpleXOREncrypt($replace, $key);
        // $replace ='<span style="color:red">'.  '[helix_' . $shortcode . ' id="' . $id . '"  value="' . $replace . '"]'. '</span>';
  
        $updatedText = str_replace($search, $replace, $text);
        // 
        return $updatedText;
    }


    public function simpleXOREncrypt($text, $key)
    {
        $output = '';
        for ($i = 0; $i < strlen($text); $i++) {
            $output .= $text[$i] ^ $key[$i % strlen($key)];
        }
        return base64_encode($output);
    }




}
