<?php
function helix_admin_homepage()
{
  require(HELIX_PLUGIN_PATH . 'app/view/masterPage/wrapper01-XHTML.php');
  require(HELIX_PLUGIN_PATH . 'app/view/masterPage/sidebar02-XHTML.php');
  require(HELIX_PLUGIN_PATH . 'app/view/masterPage/body03-XHTML.php');
  require(HELIX_PLUGIN_PATH . 'app/view/masterPage/nav04-XHTML.php');
  ?>
  <div class="content">
    <div class="container-fluid">
      HELLO DASHBOARD
    </div>
  </div>
  <?php
  require(HELIX_PLUGIN_PATH . 'app/view/masterPage/bodyClose05-XHTML.php');
}
