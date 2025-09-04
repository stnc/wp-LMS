<?php
namespace Helix\Lib;
class EditorExplodeAlternativeLib
{
    public function cleanGrammer($value)
    {
        /*
Although you may try your best, you may not succeed immediately; you shall ' not and shan't give up, even if you couldn't solve the problem before because you can learn, and you will not stop improving.

Ne kadar çabalarsanız çabalayın, hemen başarılı olamayabilirsiniz; daha önce çözemediğiniz bir sorunu bile olsa, pes etmeyin; çünkü öğrenebilirsiniz ve gelişmeyi bırakmazsınız.
         */


        global $wpdb;
        $table_name = $wpdb->prefix . 'helix_grammer';

        $sql = "SELECT word,alternatives FROM $table_name WHERE  status=1 and alternatives<>''    ORDER BY ranking_number ASC "; 
        $results = $wpdb->get_results($sql, "ARRAY_A");


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
Although you may try your best, you may not succeed immediately; you shall ' not and shan't give up, even if you couldn't solve the problem before because you can learn, and you will not stop improving.
    $search = shan't,shall 'not,shall 'not,shall ' not,shall ' not ===== her hangi biri 
     $replace = shall not 
     */
    public function preg_matchRegular($text, $search, $replace)
    {
        $result = $text;
        // \b: kelime sınırı, i: büyük/küçük harf duyarsız 
        if (preg_match("/\b" . preg_quote($search, '/') . "\b/i", $text)) {
            //  $value = $this->replace_with_Color($value, $expData, $alternatives["word"]);// for test 
            return $result = $this->replace($text, $search, $replace);
        } else {
            return $text;
        }
    }

    public function replace($text, $search, $replace)
    {
        $updatedText = str_replace($search, $replace, $text);
        return $updatedText;
    }

    public function replace_with_Color($text, $search, $replace)
    {
        $replace = '<span style="color:red">' . $replace . '</span>';

        $updatedText = str_replace($search, $replace, $text);

        return $updatedText;
    }


}
