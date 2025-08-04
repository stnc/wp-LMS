<?php
function helix_output_buffer()
{
  ob_start();
} 
add_action('init', 'helix_output_buffer');

$helix_fullpage_routes = array("helix_homepage", "editorH", "editor_explodeH");

function helix_default_setting()
{
  global $HelixPluginVersion;
  $helix_plugin_path = trailingslashit(plugin_dir_path(__FILE__));
  $helix_plugin_url = trailingslashit(plugins_url(__FILE__));
  $helix_plugin_dir_url = trailingslashit(plugin_dir_url(__FILE__));

  return array(
    "version" => $HelixPluginVersion,
    "helixPluginPath" => $helix_plugin_path,
    "helixPluginUrl" => $helix_plugin_url,
    "helixPluginDirUrl" => $helix_plugin_dir_url,
  );
}
