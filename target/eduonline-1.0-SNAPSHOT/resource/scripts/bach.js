/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var master = {
    data: [],
    ajax_delete: function (contextPath, id) {
        bootbox.confirm("<h4 class='text-danger text-center'>Xác nhận xoá bản ghi ?</h4>", function (rs) {
            if (rs === true) {
                $.ajax({
                    url: contextPath,
                    method: "get",
                    timeout: 1000 * 60 * 10,
                    dataType: 'json',
                    data: {
                        id: id
                    },
                    beforeSend: function (xml) {
                        $.LoadingOverlay("show");
                    },
                    success: function (data) {
                        $.LoadingOverlay("hide");
                        if (data.status === 'ok') {
                            window.location.reload();
                        } else {
                            bootbox.alert("<h4 class='text-center text-danger'>" + data.message + "</h4>");
                        }
                    }
                });
            }
        });
    },
    ajax_onChange: function (url, id, obj) {
        if (master.data !== null && master.data.length > 0) {
            for (var i = 0; i < master.data.length; i++) {
                if (master.data[i].id === id) {
                    $("#subbranch").html(master.data[i].htmlCode);
                    return;
                }
            }
        }
        var objTemp = {};
        objTemp.id = id;
        $.ajax({
            url: url,
            timeout: 1000 * 60 * 10,
            dataType: 'json',
            method: 'get',
            data: {
                id: id
            },
            beforeSend: function (abc) {
                $.LoadingOverlay("show");
            },
            success: function (json) {
                var str = "";
                $.LoadingOverlay("hide");
                if (json.status === "0") {
                    bootbox.alert('<h4>Chưa có phòng giao dịch thuộc chi nhánh này</h4>');
                } else if (json.status === "1") {
                    var arr = json.data;
                    for (var i = 0; i < arr.length; i++) {
                        var subbranch = arr[i];
                        var strTmp = '<option data="' + subbranch.branch_id + '" value="' + subbranch.subbranch_id + '">' + subbranch.name + '</option>';
                        str = str + strTmp;
                    }
                    objTemp.htmlCode = str;
                    master.data.push(objTemp);
                    $("#subbranch").html(str);
                }

            }
        });
    },
     ajax_onChange_nvtuan: function (url, id, obj,idSubBranch) {
        if (master.data !== null && master.data.length > 0) {
            for (var i = 0; i < master.data.length; i++) {
                if (master.data[i].id === id) {
                    $("#subbranch").html(master.data[i].htmlCode);
                    return;
                }
            }
        }
        var objTemp = {};
        objTemp.id = id;
        $.ajax({
            url: url,
            timeout: 1000 * 60 * 10,
            dataType: 'json',
            method: 'get',
            data: {
                id: id
            },
            beforeSend: function (abc) {
                $.LoadingOverlay("show");
            },
            success: function (json) {
                var str = "";
                $.LoadingOverlay("hide");
                if (json.status === "0") {
                    bootbox.alert('<h4>Chưa có phòng giao dịch thuộc chi nhánh này</h4>');
                } else if (json.status === "1") {
                    var arr = json.data;
                    for (var i = 0; i < arr.length; i++) {
                        var subbranch = arr[i];
                        var strTmp = '<option data="' + subbranch.branch_id + '" value="' + subbranch.subbranch_id + '">' + subbranch.name + '</option>';
                        str = str + strTmp;
                    }
                    objTemp.htmlCode = str;
                    master.data.push(objTemp);
                    $("#subbranch").html(str);
                    $("#subbranch").val(idSubBranch);
                }

            }
        });
    },
    ajax_with_dataObject: function(url, dataObject){
        $.ajax({
                url: url,
                method: "get",
                timeout: 1000 * 60 * 10,
                dataType: 'json',
                data: {
                    data: JSON.stringify(dataObject)
                },
                beforeSend: function (xml) {
                    $.LoadingOverlay("show");
                },
                success: function (data) {
                    $.LoadingOverlay("hide");
                    if (data.status == 'ok') {
                        window.location.reload();
                    }else{
                        bootbox.alert('<h4 class="text-danger text-center">'+ data.message +'</h4>');
                    }
                }
            });
    },
    update_table: function(table) {
        var $table = table.table().node();
        var $chkbox_all = $('tbody input[type="checkbox"]', $table);
        var $chkbox_checked = $('tbody input[type="checkbox"]:checked', $table);
        var chkbox_select_all = $('thead input[name="select_all"]', $table).get(0);

        // If none of the checkboxes are checked
        if ($chkbox_checked.length === 0) {
            chkbox_select_all.checked = false;
            if ('indeterminate' in chkbox_select_all) {
                chkbox_select_all.indeterminate = false;
            }

            // If all of the checkboxes are checked
        } else if ($chkbox_checked.length === $chkbox_all.length) {
            chkbox_select_all.checked = true;
            if ('indeterminate' in chkbox_select_all) {
                chkbox_select_all.indeterminate = false;
            }

            // If some of the checkboxes are checked
        } else {
            chkbox_select_all.checked = true;
            if ('indeterminate' in chkbox_select_all) {
                chkbox_select_all.indeterminate = true;
            }
        }
    },
    processTable: function(id, rows_selected){
        //var rows_selected = [];        
        var table = $('#'+ id).DataTable(master.templatePaginate);
        $('#'+ id +' tbody').on('click', 'input[type="checkbox"]', function (e) {
            var $row = $(this).closest('tr');
            // Get row data
            var data = table.row($row).data();
            // Get row ID
            var rowId = data[1];
            // Determine whether row ID is in the list of selected row IDs 
            var index = $.inArray(rowId, rows_selected);
            // If checkbox is checked and row ID is not in list of selected row IDs
            if (this.checked && index === -1) {
                rows_selected.push(rowId);
                // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
            } else if (!this.checked && index !== -1) {
                rows_selected.splice(index, 1);
            }

            if (this.checked) {
                $row.addClass('selected');
            } else {
                $row.removeClass('selected');
            }
            // Update state of "Select all" control
            master.update_table(table);
            // Prevent click event from propagating to parent
            e.stopPropagation();
        });
        
        $('#'+ id).on('click', 'tbody td, thead th:first-child', function (e) {
            $(this).parent().find('input[type="checkbox"]').trigger('click');
        });

        // Handle click on "Select all" control
        $('#'+ id + ' thead input[name="select_all"]').on('click', function (e) {
            if (this.checked) {
                $('#'+ id + ' tbody input[type="checkbox"]:not(:checked)').trigger('click');
            } else {
                $('#'+ id + ' tbody input[type="checkbox"]:checked').trigger('click');
            }
            // Prevent click event from propagating to parent
            e.stopPropagation();
        });

        // Handle table draw event
        table.on('draw', function(){
            // Update state of "Select all" control
            master.update_table(table);
        });
    },
    showMessage: function(type){
        if(type === 'checkbox'){
            bootbox.alert('<h4 class="text-danger text-center">Warning ! Empty value</h4>');
            return false;
        }
    },
    templatePaginate: {
        "language": {
            "lengthMenu": "Chọn hiển thị  _MENU_",
            "search": "Tìm kiếm:",
            "paginate": {
                "previous": "Trước",
                "next": "Sau"
            },
            "emptyTable": "Không có dữ liệu hiển thị",
            "info": "Trang _PAGE_/_PAGES_",
            "infoEmpty": "Không có bản ghi nào",
            "sInfoFiltered":"(tìm trong _MAX_ bản ghi)",
            "sZeroRecords":"Không tìm thấy bản ghi nào"
        }
    }
};