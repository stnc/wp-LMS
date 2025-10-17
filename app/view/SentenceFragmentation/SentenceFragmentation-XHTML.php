<?php


$id = isset($_GET['id']) ? sanitize_text_field($_GET['id']) : "";

// $title = "Add"; 
$form = '<form action="/wp-admin/admin.php?page=sentenceFragmentation&trigger=store" method="post">';

if ((isset($_GET['trigger'])) && ($_GET['trigger'] === 'edit')) {
    // $title = esc_html_e('Show', 'helix-lng');
    $form = '<form action="/wp-admin/admin.php?page=sentenceFragmentation&trigger=update&id=' . $id . '" method="post">';
}


if (isset($_SESSION['helix_flash_msg'])) {
    ?>
    <p class="alert alert-success">
        <?php echo $_SESSION['helix_flash_msg']; ?>
    </p>
    <?php unset($_SESSION['helix_flash_msg']); ?>
<?php } ?>


<div class="content">
    <div class="container-fluid">
        <form action="/wp-admin/admin.php?page=sentenceFragmentation&trigger=store&id=<?php echo $id ?>" method="post">

            <div class="row">
            <?php   if ((isset($_GET['trigger'])) && ($_GET['trigger'] === 'edit')) : ?>   <div class="col-lg-6"> <?php  else: ?> <div class="col-lg-12">   <?php  endif ?>
                    <div class="card">
                        <div class="card-header">Main Language</div>
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $main_language ?></h5>
                            <div class="row g-2 data_main_language" id="data_main_language">
                                <?php echo $main_language_json ?>
                            </div>
                            <div class="row g-2">
                                <a href="javascript:void(0);" class="add_button" title="Add field"><img
                                        src="/wp-content/uploads/2025/03/add-icon.png">EKLE</a>

                            </div>
                        </div>
                    </div>
                </div>

                <?php   if ((isset($_GET['trigger'])) && ($_GET['trigger'] === 'edit')) : ?>
                <div class="col-lg-6">
                    <div class="card" id="kelimatorButton" style="max-width: 100%;">
                        <div class="card-header">card olarak</div>
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $main_language ?></h5>
                            <div class="row g-2 data_main_language1 " id="data_main_language1">
                
                                <?php echo $button_html_json ?>
                
                            </div>
                        </div>
                    </div>
                </div>
                <?php endif; ?>




            </div>


            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">Translate</div>
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $translate ?> </h5>
                            <div id="redips-drag" class="row g-2 data_translate_language">
                                <table id="table11">
                                    <colgroup>
                                        <col width="50">
                                        <col width="50">
                                        <col width="50">
                                        <col width="50">
                                    </colgroup>
                                    <tbody>
                                        <?php echo $translate_language_json ?>
                                    </tbody>
                                </table>
                            </div>

                            <div class="row g-2">
                                <a href="javascript:void(0);" class="add_button_translate"
                                    title="add_button_translate"><img
                                        src="/wp-content/uploads/2025/03/add-icon.png">Ekle</a>

                            </div>
                        </div>
                    </div>
                </div>



            </div>

            <div class="row">

                <div class="col-lg-10">
                    <div class="card" style="max-width: 100%;">
                        <div class="card-body">
                            <div class="row g-2">
                                <label for="">Aciklama</label>
                               

                                <?php
$content = $comment ; // Varsayılan içerik
$editor_id = 'comment'; // textarea ID gibi davranır

$settings = array(
  'textarea_name' => 'comment',
  'media_buttons' => true,
  'teeny' => true,
  'quicktags' => true,
  'tinymce' => array(
  /*  'toolbar1' => 'bold italic underline | bullist numlist | link unlink',*/
    'toolbar1' => 'bold,italic,strikethrough,bullist,numlist,blockquote,hr,alignleft,aligncenter,alignright,link,unlink,spellchecker,wp_fullscreen,wp_adv ',
    'toolbar2' => 'formatselect,underline,alignjustify,forecolor,pastetext,removeformat,charmap,outdent,indent,undo,redo,wp_help',
  )
);

wp_editor($content, $editor_id, $settings);
?>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-1">
                    <div class="card" style="max-width: 100%;">
                        <div class="card-body">
                            <div class="row g-2">
                                <input type="submit" name="submit" value="SUBMIT" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-1">
                    <div class="card" id="kelimatorButton" style="max-width: 100%;">
                        <div class="card-header">Edit</div>
                        <div class="card-body">
                            <!-- <h5 class="card-title"><?php // echo $main_language ?></h5> -->
                            <div class="content2">
                                  <a href="/wp-admin/admin.php?page=editorH&trigger=edit&id=<?php  echo isset($_GET["id"]) ? $_GET["id"] : "0"; ?>">Duzenle</a>
                               

                            </div>
                        </div>
                    </div>

                </div>


            </div>
        </form>
    </div>
</div>




<script src="https://cdn.jsdelivr.net/gh/dbunic/REDIPS_drag@master/redips-drag-min.js"></script>

<script>
    /**  DRAG AND DROP   */
    //https://jsfiddle.net/v4qhdmzL/83/


    // create container
    var redips = {};

    // initialization
    redips.init = function () {
        // set reference to the REDIPS.drag library
        var rd = REDIPS.drag;
        // REDIPS.drag initialization
        rd.init();
    };

    // read values from "data-" attributes of dataName
    redips.getData = function (dataName) {
        // variables
        var tbl = document.getElementById('table11'),	// reference to the main table
            div = tbl.getElementsByTagName('DIV'),		// collect all DIV elements from main table
            dataValue,
            arr = [],
            i;

        // loop through DIV collection
        for (i = 0; i < div.length; i++) {
            // read data value from current DIV element
            dataValue = div[i].dataset[dataName];
            // add value to the array if dataValue exists in HTML attribute
            // and array already doesnt contain that value
            if (dataValue !== undefined && arr.indexOf(dataValue) === -1) {
                arr.push(dataValue);
            }
        }
        // display uniq values from "data-" attributes
        alert(dataName + ' - ' + arr.toString());
    };


    redips.droppedBefore = function (targetCell) {
        // test if target cell is occupied and set reference to the dragged DIV element
        var empty = redips.emptyCell(targetCell, 'test'),
            obj = redips.obj;
        // if target cell is not empty
        if (!empty) {
            // confirm question should be wrapped in setTimeout because of
            // removeChild and return false below
            setTimeout(function () {
                // ask user if he wants to overwrite TD (cell is already occupied)
                if (confirm('Overwrite content?')) {
                    redips.emptyCell(targetCell);
                }
                // append previously removed DIV to the target cell
                targetCell.appendChild(obj);
            }, 50);
            // remove dragged DIV from from DOM (node still exists in memory)
            obj.parentNode.removeChild(obj);
            // return false (deleted DIV will not be returned to source cell)
            return false;
        }
    };


    // add onload event listener
    if (window.addEventListener) {
        window.addEventListener('load', redips.init, false);
    }
    else if (window.attachEvent) {
        window.attachEvent('onload', redips.init);
    }

</script>