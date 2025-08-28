<?php
namespace Helix\Lib;
class EditorExplodeAlternativeLib
{
    public function kisaltmalar($value)
    {

        global $wpdb;
        $table_name = $wpdb->prefix . 'helix_grammer';
        $results = $wpdb->get_results("SELECT word,alternatives FROM $table_name WHERE type= 'modal verbs' and status=1 and alternatives<>'' ", "ARRAY_A");

        // print_r($results);

        //$keywords = array_column($results, 'word','alternatives');
        echo "<pre>1";
        //  print_r($keywords);

        echo "<br>1";
        echo $value;
        $found = [];

        foreach ($results as $alternatives) {


            echo "<br>";
            echo ($alternatives["word"]);
            echo "<br>";
            // echo ($alternatives["alternatives"]);
            $exp = explode(",", $alternatives["alternatives"]);
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
