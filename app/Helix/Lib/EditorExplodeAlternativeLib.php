<?php
namespace Helix\Lib;
class EditorExplodeAlternativeLib
{
    public function kisaltmalar($value)
    {
/*
 Bu "örnek" bir shan't, shall 'not, metin ve içinde 'tırnak' var. shall ' not The shall 'not Ukrainian will'not , could Att shall 'not acks That could' not Are will not Forcing will' not Russia to will Ration Its Fuel shan't be shall ' not 
 */
        global $wpdb;
        $table_name = $wpdb->prefix . 'helix_grammer';

        $sql = "SELECT word,alternatives FROM $table_name WHERE type= 'modal verbs' and status=1 and alternatives<>''";
$results = $wpdb->get_results($sql, "ARRAY_A");

// $results = $wpdb->get_results($wpdb->prepare("SELECT * FROM `".$wpdb->prefix."tablename` WHERE `foo` = %s ORDER BY `time` DESC LIMIT 50", $foo));

        $value = str_replace("’", "'", $value);
        $value = stripcslashes($value);
        // print_r($results);

        //$keywords = array_column($results, 'word','alternatives');
        // echo "start<pre>";
        //  print_r($keywords);

        // echo "13333<br>";
    
        // echo htmlspecialchars($value, ENT_QUOTES, 'UTF-8');
        // echo "<br>end<br>";
        // echo "<br>";
        $found = [];

        foreach ($results as $alternatives) {


            echo "<br>";
            echo ($alternatives["word"]);
            echo "<br>";
            // echo ($alternatives["alternatives"]);
            $alternative_t = trim($alternatives["alternatives"]);
            $exp = explode(",",$alternative_t );
           
            // echo "<br>";
//  print_r($exp);

            foreach ($exp as $data) {
                echo "<br>";
                echo $data;
                echo "<br>";

                // \b: kelime sınırı, i: büyük/küçük harf duyarsız
                if (preg_match("/\b" . preg_quote($data, '/') . "\b/i", $value)) {
                    $found[] = $value;
                    $value = $this->replace_regular_with_Color($value, $data, $alternatives["word"]);
                    // $value = $this->replaceRegular($value, $data,$alternatives["word"]);
                }
            }


            echo $value;

        }



        if (!empty($found)) {
            echo "<br>";
            echo "Tam eşleşen kelimeler: " . implode(", ", $found);
        } else {
            echo "<br>";
            echo "Hiçbir tam kelime eşleşmesi bulunamadı.";
        }


        echo "<br>0";


    }


    public function replaceRegular($text, $search, $replace)
    {
        // $replace = '<span style="color:red">'.$replace.'</span>';


        $updatedText = str_replace($search, $replace, $text);



        echo $updatedText;
        echo "<br>";
        return $updatedText;
    }

    public function replace_regular_with_Color($text, $search, $replace)
    {
        $replace = '<span style="color:red">' . $replace . '</span>';


        $updatedText = str_replace($search, $replace, $text);



        echo $updatedText;
        echo "<br>";
        return $updatedText;
    }


}
