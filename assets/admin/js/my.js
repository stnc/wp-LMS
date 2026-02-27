
'use strict';
jQuery.noConflict();

jQuery(document).ready(function ($) {



    // yeni 1 
    jQuery(document).find('pre').each(function () {
        jQuery(this).click(copyToClipboard);
    });
    jQuery(document).find('input').each(function () {
        jQuery(this).change(changeString);
    });
    jQuery(document).find('code').each(function () {
        jQuery(this).change(changeString);
    })

    changeString();

    // yeni 1 end 

    var maxField = 15; //Input fields increment limitation
    var addButton = jQuery('.add_button'); //Add button selector
    var wrapper = jQuery('.data_main_language'); //Input field wrapper
    var fieldHTML = '<div class="mb-3 col-md-3"><input type="text" class="form-control" name="main_language_json[]" value=""/><a href="javascript:void(0);"  class="remove_button "><img src="/wp-content/uploads/2025/03/remove-icon.png"/></a></div>'; //New input field html 
    var x = 1; //Initial field counter is 1

    // Once add button is clicked
    jQuery(addButton).on("click", function (event) {
        //Check maximum number of input fields
        if (x < maxField) {
            x++; //Increase field counter
            jQuery(wrapper).append(fieldHTML); //Add field html
        } else {
            alert('A maximum of ' + maxField + ' fields are allowed to be added. ');
        }
    });

    // Once remove button is clicked
    jQuery(wrapper).on('click', '.remove_button', function (e) {

        e.preventDefault();
        jQuery(this).parent('div').remove(); //Remove field html
        x--; //Decrease field counter
    });




    var addButton_translate = jQuery('.add_button_translate'); //Add button selector
    var wrapper_translate = jQuery('.data_translate_language'); //Input field wrapper
    var fieldhtmlTranslate = '<div class="mb-3 col-md-3"><input type="text" class="form-control" name="translate_language_json[]" value=""/><a href="javascript:void(0);"  class="remove_button "><img src="/wp-content/uploads/2025/03/remove-icon.png"/></a></div>'; //New input field html 
    var x = 1; //Initial field counter is 1

    // Once add button is clicked
    jQuery(addButton_translate).on("click", function (event) {

        //Check maximum number of input fields
        if (x < maxField) {
            x++; //Increase field counter
            jQuery(wrapper_translate).append(fieldhtmlTranslate); //Add field html
        } else {
            alert('A maximum of ' + maxField + ' fields are allowed to be added. ');
        }

    });

    // Once remove button is clicked
    jQuery(wrapper_translate).on('click', '.remove_button', function (e) {
        e.preventDefault();
        jQuery(this).parent('div').remove(); //Remove field html
        x--; //Decrease field counter
    });


    // Bootstrap Simple Admin Template Website: https://github.com/alexis-luna/bootstrap-simple-admin-template
    // Toggle sidebar on Menu button click
    jQuery('#sidebarCollapse').on('click', function () {
        jQuery('#sidebar').toggleClass('active');
        jQuery('#body').toggleClass('active');
    });

    // Auto-hide sidebar on window resize if window size is small
    // jQuery(window).on('resize', function () {
    //     if (jQuery(window).width() <= 768) {
    //         jQuery('#sidebar, #body').addClass('active');
    //     }
    // });
    //Bootstrap Simple Admin Template


});








jQuery('#kopyalaBtn').on('click', function () {


    const metin = jQuery('#result').text();
    console.log(metin);


    // metin.select();
    // document.execCommand("copy");



    navigator.clipboard.writeText(metin)
        .then(() => {
            alert("Metin panoya kopyalandı!");
        })
        .catch(err => {
            alert("Kopyalama başarısız: " + err);
        });



});




function changeString() {

    var string = '';

    if (jQuery('#mainlang').is(":checked")) {
        string += "mainlang='on' ";
    } else {
        string += "mainlang='off' ";
    }

    if (jQuery('#desc').is(":checked")) {
        string += "desc='on' ";
    } else {
        string += "desc='off' ";
    }




    jQuery('#stringIK').html(string);
}