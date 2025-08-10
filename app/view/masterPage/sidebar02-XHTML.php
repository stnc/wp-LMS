<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
    integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
<nav id="sidebar" class="active-">
    <div class="sidebar-header">
        <img src="https://devopspower.github.io/bootstrap-simple-admin-template/assets/img/bootstraper-logo.png"
            alt="bootraper logo" class="app-logo">
    </div>
    <ul class="list-unstyled components text-secondary">



        <li>
            <a href="/wp-admin"><i class="fas fa-home"></i><?php esc_html_e('WP Dashbord', 'helix-lng') ?></a>
        </li>


        <li>
            <a href="/wp-admin/admin.php?page=helix_homepage"><i
                    class=" fas fa-layer-group"></i><?php esc_html_e('Kelimator Homepage', 'helix-lng') ?></a>
        </li>

        <li>
            <a href="/wp-admin/admin.php?page=helix_word_list"><i
                    class="fas fa-copy"></i><?php esc_html_e('Kelimeler Listesi', 'helix-lng') ?></a>
        </li>    
        
        
        <li>
            <a href="/wp-admin/admin.php?page=helix_about"><i
                    class="fas fa-circle-exclamation"></i><?php esc_html_e('Hakkinda', 'helix-lng') ?></a>
        </li>

        <li>
            <a href="/wp-admin/admin.php?page=editorH&trigger=create"><i
                    class="fas fa-file-alt"></i><?php esc_html_e('New Word Add', 'helix-lng') ?></a>
        </li>


        <li>
            <a href="/wp-admin/admin.php?page=editorH&trigger=edit&id=129"><i
                    class="fas fa-file-alt"></i><?php esc_html_e('Test sayfam', 'helix-lng') ?></a>
        </li>



        <li>
            <a href="#pagesmenu" data-bs-toggle="collapse" aria-expanded="false"
                class="dropdown-toggle no-caret-down"><i class="fas fa-cog"></i>Accordion example</a>
            <ul class="collapse list-unstyled" id="pagesmenu">
                <li>
                    <a href="blank.html"><i class="fas fa-file"></i>Blank page</a>
                </li>
                <li>
                    <a href="404.html"><i class="fas fa-info-circle"></i>404 Error page</a>
                </li>
                <li>
                    <a href="500.html"><i class="fas fa-info-circle"></i>500 Error page</a>
                </li>
            </ul>
        </li>


    </ul>
</nav>