<?php



function helix_jq_page()
{

        require(HELIX_PLUGIN_PATH . 'app/view/masterPage/wrapper01-XHTML.php');
        require(HELIX_PLUGIN_PATH . 'app/view/masterPage/sidebar02-XHTML.php');
        require(HELIX_PLUGIN_PATH . 'app/view/masterPage/body03-XHTML.php');
        require(HELIX_PLUGIN_PATH . 'app/view/masterPage/nav04-XHTML.php');
        ?>
        <div class="content">
                <h1> Translate bolumunu normal yazi olarak ver (ornek asagidadir)</h1>
                <div class="row">
                        <div class="col-md-6">
                                <div class="row space">
                                        <div class="col-12">
                                                <strong> Translate bolumunu normal yazi olarak ver (ornek asagidadir)</strong>
                                                <br>
                                                Kardeşim dün gece telefonunu yanlışlıkla havaalanı zeminine düşürdü
                                        </div>
                                </div>

                                <div class="row space">
                                        <div class="col-12">
                                                <input type="checkbox"  id="mainlang" name="mainlang"
                                                        value="mainlang='off' " /> Main Language
                                        </div>
                                </div>

                                <div class="row space">
                                        <div class="col-12">
                                                <input type="checkbox" id="desc" name="desc" value="desc='off' " /> Aciklama
                                        </div>
                                </div>

                        </div>

                </div>

                
                <div class="install-instructions">
                        <code id="result">[helix_wordTL_Reg_sc id='146' <span id="stringIK"></span>]</code>
                </div>

        </div>

        <a href="#" id="kopyalaBtn">Kopyala</a>



        <?php
        require(HELIX_PLUGIN_PATH . 'app/view/masterPage/bodyClose05-XHTML.php');
}


