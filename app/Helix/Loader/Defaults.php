<?php


namespace Helix\Loader;



class Defaults
{

 
    public function __construct()
    {

        add_action('admin_body_class', array($this, 'admin_body_class'));

        global $helix_fullpage_routes;
        $findGetPage = isset($_GET["page"]) ? $_GET["page"] : "empty";
        if (in_array($findGetPage, $helix_fullpage_routes)) {
            add_action('admin_init', array($this, 'helix_remove_default_stylesheets'));
        }
    }

   /**
     * Filters the CSS classes for the body tag in the admin.
     * @link  https://developer.wordpress.org/reference/hooks/admin_body_class/
     */
    public function admin_body_class($classes = '')
    {
        //https://deluxeblogtips.com/wordpress-admin-body-class/
        $onboarding_class = '';
        global $helix_fullpage_routes;
        $findGetPage = isset($_GET["page"]) ? $_GET["page"] : "empty";
        if (in_array($findGetPage, $helix_fullpage_routes)) {
            $onboarding_class = 'helix-header-page';
        }
        $classes .= ' ' . $onboarding_class . ' ';
        return $classes;
    }

  
    /**
     * Removes a registered stylesheet.
     *    this will remove the stylesheet when init fire this is your function to deregister the default admin stylesheet
     * @link https://developer.wordpress.org/reference/functions/wp_deregister_style/
     * 
     * 
     * @return void
     */
    public function helix_remove_default_stylesheets()
    {
        wp_deregister_style('wp-admin');
    }

}
