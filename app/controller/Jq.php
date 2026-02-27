<?php

/*


Some routers prevent network from outside attack with features parental control and password,
bunu Türkçe diline göre her cümlenin Türkçe karşılığına göre json halinde karşılaştır ve anlat, 
mesela, I = ben , a = bir, buy = almak , Car = araba bunu tablo olarak yap , 
ve Fransızca ve İspanyolca ekle ve her dildeki zamanını soyle mesela geçmiş zaman gelecek zaman gibi ve her kelime için fiil sıfat zamir onları da ekle ama kelimede ki I , her, his gibi yani ben , sen, o gibi şeyleri de açıkla ve hiç bir kelimeyi atlama hepsini açıkla, ve 
json dosyasinda type aciklarken sadece ingilizce olan anlamini kullan ve en ustteki yaptigin haline sadik kal, veritabani kisimlari yada sql kisimlari olmasin
*/

    





function helix_jq_page()
{

        require(HELIX_PLUGIN_PATH . 'app/view/masterPage/wrapper01-XHTML.php');
        require(HELIX_PLUGIN_PATH . 'app/view/masterPage/sidebar02-XHTML.php');
        require(HELIX_PLUGIN_PATH . 'app/view/masterPage/body03-XHTML.php');
        require(HELIX_PLUGIN_PATH . 'app/view/masterPage/nav04-XHTML.php');

        $jsonData = '
      {
  "sentence": "Despite the warnings, Elias was determined to restore the manor to its former glory.",
  "words": [
    {
      "word": "Despite",
      "type": "preposition",
      "turkish": "rağmen",
      "french": "malgré",
      "spanish": "a pesar de",
      "tense": "none",
      "note": "Zıtlık edatı - koşula rağmen anlamı verir"
    },
    {
      "word": "the",
      "type": "article",
      "turkish": "(belirli)",
      "french": "les",
      "spanish": "las",
      "tense": "none",
      "note": "Belirli artikel - uyarıları belirli kılar"
    },
    {
      "word": "warnings",
      "root": "warning",
      "type": "noun",
      "turkish": "uyarılar",
      "french": "avertissements",
      "spanish": "advertencias",
      "tense": "none",
      "note": "\'Despite the warnings\' = \'uyarılara rağmen\'"
    },
    {
      "word": "Elias",
      "type": "proper noun",
      "turkish": "Elias",
      "french": "Élias",
      "spanish": "Elías",
      "tense": "none",
      "note": "Kişi adı - özne"
    },
    {
      "word": "was",
      "root": "be",
      "type": "verb",
      "turkish": "idi",
      "french": "était",
      "spanish": "estaba",
      "tense": "past",
      "note": "Past tense \'to be\' yardımcı fiili"
    },
    {
      "word": "determined",
      "type": "adjective",
      "turkish": "kararlı",
      "french": "déterminé",
      "spanish": "determinado",
      "tense": "none",
      "note": "Passive voice yapısında durum sıfatı"
    },
    {
      "word": "to",
      "type": "infinitive marker",
      "turkish": "(mastar)",
      "french": "à",
      "spanish": "a",
      "tense": "none",
      "note": "Sonsuz fiil belirteci"
    },
    {
      "word": "restore",
      "type": "verb",
      "turkish": "yeniden kurmak",
      "french": "restaurer",
      "spanish": "restaurar",
      "tense": "infinitive",
      "note": "Amaç fiili - mastar hali"
    },
    {
      "word": "the",
      "type": "article",
      "turkish": "(belirli)",
      "french": "le",
      "spanish": "la",
      "tense": "none",
      "note": "Belirli artikel - malikâneyi tanımlar"
    },
    {
      "word": "manor",
      "type": "noun",
      "turkish": "malikâne",
      "french": "manoir",
      "spanish": "mansión",
      "tense": "none",
      "note": "Büyük konak/isim"
    },
    {
      "word": "to",
      "type": "preposition",
      "turkish": "e",
      "french": "à",
      "spanish": "a",
      "tense": "none",
      "note": "Yön edatı - hedefi gösterir"
    },
    {
      "word": "its",
      "type": "possessive pronoun",
      "turkish": "onun",
      "french": "sa",
      "spanish": "su",
      "tense": "none",
      "note": "3. tekil şahıs iyelik zamiri (cansız için)"
    },
    {
      "word": "former",
      "type": "adjective",
      "turkish": "eskiden kalan",
      "french": "ancienne",
      "spanish": "anterior",
      "tense": "none",
      "note": "\'its former glory\' = eski ihtişamı"
    },
    {
      "word": "glory",
      "type": "noun",
      "turkish": "ihtişam",
      "french": "gloire",
      "spanish": "gloria",
      "tense": "none",
      "note": "Soyut isim - hedef nesne"
    }
  ],
  "summary": {
    "english_structure": "Prepositional phrase (Despite the warnings) + Subject (Elias) + was + adjective (determined) + infinitive purpose (to restore...)",
    "turkish_translation": "Uyarılara rağmen Elias, malikâneyi eski ihtişamına kavuşturmaya kararlıydı.",
    "french_translation": "Malgré les avertissements, Élias était déterminé à restaurer le manoir à sa gloire passée.",
    "spanish_translation": "A pesar de las advertencias, Elías estaba determinado a restaurar la mansión a su antigua gloria.",
    "overall_tense": "past continuous (geçmiş devam)"
  }
}

  
';
   
////


    global $wpdb;
    
$data = json_decode($jsonData, true);
echo "<pre>";
print_r ($data);
    
    // Ana cümle verilerini array olarak hazırla
    $sentence_data = array(
        'sentence' => $data['sentence'],
        'english_structure' => $data['summary']['english_structure'],
        'turkish_translation' => $data['summary']['turkish_translation'],
        'french_translation' => $data['summary']['french_translation'],
        'spanish_translation' => $data['summary']['spanish_translation'],
        'overall_tense' => $data['summary']['overall_tense']
    );
    
    // Cümle tablosuna insert et
    $wpdb->insert('sentences', $sentence_data);
    $sentence_id = $wpdb->insert_id;
    
    if (!$sentence_id) {
        return false;
    }
    
    // Kelimeleri array olarak hazırla ve insert et
    $words_data = array();
    foreach ($data['words'] as $word) {
        $words_data = array(
            'sentence_id' => $sentence_id,
            'word' => $word['word'],
            'root' => $word['root'] ?? null,
            'type' => $word['type'],
            'turkish' => $word['turkish'],
            'french' => $word['french'],
            'spanish' => $word['spanish'],
            'tense' => $word['tense'],
            'note' => $word['note']
        );
            $wpdb->insert('words', $words_data);
    }


/*


    $table_name = $wpdb->prefix . 'simple_test';
    
    $result = $wpdb->insert(
        $table_name,
        array(
            'name' => sanitize_text_field($name),
            'email' => sanitize_email($email)
        ),
        array('%s', '%s')
    );
    
    
    return $result ? $wpdb->insert_id : false;







*/

  
        require(HELIX_PLUGIN_PATH . 'app/view/masterPage/bodyClose05-XHTML.php');
}


