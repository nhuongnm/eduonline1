/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery(document).ready(function (event) {



    try {
        $('[rel="tooltip"]').tooltip();


        $('.deleteAction').click(function (event) {
            var $this = $(this);
            var id = $this.attr('data-id');
            var contextPath = $this.attr('context-path');
            // Call tới ajax delete trong bach.js
            master.ajax_delete(contextPath, id);

        });
        $('.datetimepicker').datetimepicker({
            format: 'yyyy-mm-dd',
            autoclose: true,
            minView: 2,
            todayHighlight: true
        });
    }
    catch (e) {
    }

});