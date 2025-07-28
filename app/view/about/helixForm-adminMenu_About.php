<?php

function helix_about_page()
{
    //  $to = get_option('admin_email');
    // $options = get_option( 'helix_wp__option' ); 
    // echo "<pre>";
    // print_r($options['email_adress']); // id of the field

?>
    <div id="advanced" class="postbox ">
        <div class="inside">
            <div class="card shadow1" style="max-width:100%!important">
                <h2>    <?php esc_html_e( 'Support', 'helix-lng' ) ?>  </h2>

            </div>
<pre>
================================================================================
        v2.0.0 Important changes and bug fixes in the release 
================================================================================
- Implemented: -IP1-  kutuphaneleri direk olarak "USE" ile kullanabilmek icin "src/helix" folder  yapisinda bir sistem olusturuldu.
- Implemented: composer yenilendi - laravel ve codeigniter eski surumleri incelendi ve basit bir MVC yapisina gecilmasine karar verildi. 
- Implemented: IP1 - ozelligi iptal edildi , "app/helix" folder  yapisinda bir sistem olusturuldu, controller(WP Pages) ve view yapilari buraya tasindi, 
               kutphane isi yapacak olanlar helix klasorune tasindi 
- Changed: daha once ne oldugu anlasilmayan php dosyalari yeniden duzenlendi ve daha anlamli dosya isimleri ile controller yapilari olusturuldu.
- NOTES : haritadada bos ofisleri kirmizi ile gosterme ozelligi eklendi 
- Implemented: firmanin web sitesinde tamamen gorunmesi icin KVKK bla bla eklendi 
- Changed: pages yapisi degistirildi daha anlasilir hale geldi
- Changed: css ve js yukleyici yenilendi daha anlasilir hale geldi TODO: asset klasoru admin ve frontend olarak ayrilacak  
- Bug fix: TODO : onceki sonraki ofis olayi iptal edildi ilerde acilacak 
- Bug fix: Eksik ceviriler yapildi
- Bug fix: firma eklerken  kategori secmeme sorunu duzeltildi
- Bug fix:  firma gosterimde ofisin bilgilerini gostermeyi unutmusuz orasi eklendi ve arayuzu daha guzel hale getirildi.
- TODO : 



================================================================================
        v1.5.0 Important changes and bug fixes in the release 
================================================================================
- Implemented: Explode yapan ozellik eklendi 
- Implemented:Bootsrap.css eklendi ve admin arayuzu daha humanity oldu.
- Bug fix:  pages yapisi cok daha karmasik oldu; hangi page ne ise yariyor anlamak cok zor 
- Changed: bazi kutuphanalerin composer a tasinmasi icin testlere baslandi -- 07 / 01 / 2025 

================================================================================
        v1.0.0 Important changes and bug fixes in the release 
================================================================================
- Implemented:  cok eski bir proje ile ilk mock up yazildi ; hersey spagetti kodlar ile yazildi.
- Implemented: composer eklendi ve nette paketi eklendi 
- Implemented: basit bir crud kodlamasi yazildi 
- Implemented: eski kodlardaki WP_List_Table class eklendi ve listeleme yapildi.
   </pre>
        </div>
    </div>

<?php

}


