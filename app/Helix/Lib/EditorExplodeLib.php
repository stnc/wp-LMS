<?php
namespace Helix\Lib;
class EditorExplodeLib
{


//The shall 'not Ukrainian could Attacks That could’ not Are will not Forcing Russia to will Ration Its shan't Fuel can be shall ’ not

    public function modalVerbs2($value)
    {

        global $wpdb;
        $table_name = $wpdb->prefix . 'helix_grammer';
     


        $arama = "selman";

$sql ="SELECT * FROM $table_name WHERE type= 'modal verbs' and status=1 ";
$results = $wpdb->get_results($sql, "ARRAY_A");





        // print_r($results);

        $keywords = array_column($results, 'word');

        // print_r($keywords);

        echo "<br>1";
        echo $value;
        $found = [];

        foreach ($keywords as $word) {
            // \b: kelime sınırı, i: büyük/küçük harf duyarsız
            if (preg_match("/\b" . preg_quote($word, '/') . "\b/i", $value)) {
                $found[] = $word;
                $value = $this->replace($value, $word, 1, "d");
            }
        }

        if (!empty($found)) {
            echo "Tam eşleşen kelimeler: " . implode(", ", $found);
        } else {
            echo "Hiçbir tam kelime eşleşmesi bulunamadı.";
        }


        echo "<br>0";


    }





    public function replace($text, $search, $id, $type)
    {
        $replace = "[helix_" . $type . " id='" . $id . "  value='" . $search . "']";
        $key = "helix";
        // $replace = $this->simpleXOREncrypt($replace, $key);
        // Değiştir
        $updatedText = str_replace($search, $replace, $text);



        echo $updatedText;
        echo "<br>";
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


    public function modalVerbs($value)
    {
        $arr = array(
            "can",
            "can not",
            "cannot",
            "can’t",
            "could",
            "could not",
            "could’ not",
            "will",
            "will not",
            "won't",
            "would",
            "would not",
            "wouldn't",
            "shall",
            "shall not",
            "shan't",
            "may",
            "may not",
            "might",
            "might not",
            "must",
            "must not",
            "ought",
            "ought not",

        );

        if (in_array($value, $arr)) {
            return "[helix_modalVerbs_sc value='" . $value . "']";
        } else {
            return $value;
        }
    }


    public function prepositions($value)
    {
        $arr = array(
            "about",
            "like",
            "above",
            "near",
            "of",
            "with",
            "within",
            "without",
            "into",
            "inside",
            "from",
            "for",
            "upon",
            "except",
            "up",
            "except",
            "down",
            "underneath",
            "despite",
            "by",
            "under",
            "towards",
            "beyond",
            "towards",
            "between",
            "to",
            "through",
            "beneath",
            "than",
            "below",
            "round",
            "behind",
            "before",
            "over",
            "outside",
            "as",
            "out",
            "around",
            "opposite",
            "among",
            "onto",
            "along",
            "against",
            "off",
            "after",
            "of",
            "across"
        );

        if (in_array($value, $arr)) {
            return "[helix_preposition_sc value='" . $value . "']";
        } else {
            return $value;
        }
    }



    public function ComplexPrepositions($value)
    {
        $arr = array(
            "ahead of",// https://www.merriam-webster.com/sentences/ahead%20of
            "inside of",
            "apart from",
            "instead of",
            "as for",
            "near to",
            "as well as",
            "on account of",
            "because of",
            "on top of",
            "due to",
            "out of",
            "except for",
            "outside of",
            "in addition to",
            "owing to",
            "in front of",
            "such as",
            "in place of",
            "thanks to",
            "in spite of",
            "up to",
        );

        if (in_array($value, $arr)) {
            return "[helix_ComplexPreposition_sc value='" . $value . "']";
        } else {
            return $value;
        }
    }




    public function prepositionsOfTime($value)
    {
        $arr = array(
            "at",
            "during",
            "for",
            "in",
            "on",
            "until",
        );

        if (in_array($value, $arr)) {
            return "[helix_prepositionsOfTime_sc value='" . $value . "']";
        } else {
            return $value;
        }
    }

    public function conjunctions($value)
    {
        $arr = array(
            "after",
            "before",
            "since",
            "than",
            "that",
            "though",
            "unless",
            "when",
            "until",
            "where",
            "while",
            "yet",
            "both",
            "either",
            "neither",
        );

        if (in_array($value, $arr)) {
            return "[helix_conjunction_sc value='" . $value . "']";
        } else {
            return $value;
        }
    }


}
