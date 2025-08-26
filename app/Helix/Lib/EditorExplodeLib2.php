<?php
namespace Helix\Lib;
class EditorExplodeLib2
{

    private function helix_is_check_shortcode($word)
    {
        $firstLetter = substr($word, 0, 1); // İlk karakter
        $lastLetter = substr($word, -1);   // Son karakter
        return $firstLetter . $lastLetter;
    }

    
    public function mainLanguageHtml($value)      
    {
        return '<div class="mb-3 col-md-3">
        <input type="text" class="form-control" name="main_language_json[]" value="' . $value . '">
        <a href="javascript:void(0);" class="remove_button"><img src="/wp-content/uploads/2025/03/remove-icon.png"></a>
    </div>';
    }

    public function     helix_button_html_bootsrap($value, $no)
    {
        $no++;
    
        $output = '<p class="symbol"> ' . $value . '</p>';
        $sho = $this->helix_is_check_shortcode($value);
        
        if ($sho == '[]') {
            $output = do_shortcode($value);
        } 
    
        return ' <div style="margin-left: 5px; " class="mb-2 col-md-2">
                    <div  class="helix-element-item helixColor' . $no . '"> ' . $output . ' <p class="number">' . $no . '</p></div>
              </div>';
    }
    
    
    public function helix_button_html_isotopeUI($value, $no)
    {
        $no++;
    
        $output = '<p class="symbol"> ' . $value . '</p>';
        $sho =$this->helix_is_check_shortcode($value);
        
        if ($sho == '[]') {
            $output = do_shortcode($value);
        } 
    
        return ' <div  class="helix-element-item helixColor' . $no . '">
            ' . $output . '
        <p class="number">' . $no . '</p>
        </div>';
    }



    function htmlTranslate($value)
    {

        return '<div class="redips-drag orange"  style="border-style: solid; cursor: move;">
        <input type="text"  class="form-control" name="translate_language_json[]" value="' . $value . '">
        <a href="javascript:void(0);" class="remove_button"><img src="/wp-content/uploads/2025/03/remove-icon.png"></a>
    </div>';

    }
}
