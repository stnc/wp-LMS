<?php
namespace Helix\Lib;
class EditorExplodeAlternativeLib
{
    public function cleanGrammer($value)
    {
        /*
         Bu "örnek" bir shan't, shall 'not, metin ve içinde 'tırnak' var. shall ' not The shall 'not Ukrainian will'not , could Att shall 'not acks That could' not Are will not Forcing will' not Russia to will Ration Its Fuel shan't be shall ' not 

         The shall 'not Ukrainian could Attacks That could’ not Are will not Forcing Russia to will Ration Its shan't Fuel can be shall ’ not

         The shall 'not Ukrainian could  Attacks That could’ not Are will not Forcing would not Russia to will Ration Its shan't Fuel can be shall ’ not , would 'not

         The shall 'not Ukrainian could  Attacks would not, would 'not That could’ not Are will not Forcing would not Russia to will Ration Its shan't Fuel can be shall ’ not , would 'not

         */


        global $wpdb;
        $table_name = $wpdb->prefix . 'helix_grammer';

        $sql = "SELECT word,alternatives FROM $table_name WHERE type= 'modal verbs' and status=1 and alternatives<>''";
        $results = $wpdb->get_results($sql, "ARRAY_A");
        $value = str_replace("’", "'", $value);
        $value = stripcslashes($value);

        foreach ($results as $alternatives) {
            $alternative_t = trim($alternatives["alternatives"]);
            $exp = explode(",", $alternative_t);
            foreach ($exp as $expData) {
                $value = $this->preg_matchRegular($value, $expData, $alternatives["word"]);
            }
        }
        return $value;
    }
    /*
      $text = The shall 'not Ukrainian could  Attacks would not, would 'not That could’ not Are will not Forcing would not Russia to will Ration Its shan't Fuel can be shall ’ not , would 'not
    $search = shan't,shall 'not,shall 'not,shall ' not,shall ' not ===== her hangi biri 
     $replace = shall not 
     */
    public function preg_matchRegular($text, $search, $replace)
    {
        $result = $text;
        // \b: kelime sınırı, i: büyük/küçük harf duyarsız 
        if (preg_match("/\b" . preg_quote($search, '/') . "\b/i", $text)) {
            //  $value = $this->replace_regular_with_Color($value, $expData, $alternatives["word"]);// for test 
            return $result = $this->replaceRegular($text, $search, $replace);
        } else {
            return $text;
        }
    }

    public function replaceRegular($text, $search, $replace)
    {
        $updatedText = str_replace($search, $replace, $text);
        return $updatedText;
    }

    public function replace_regular_with_Color($text, $search, $replace)
    {
        $replace = '<span style="color:red">' . $replace . '</span>';

        $updatedText = str_replace($search, $replace, $text);

        return $updatedText;
    }


}
