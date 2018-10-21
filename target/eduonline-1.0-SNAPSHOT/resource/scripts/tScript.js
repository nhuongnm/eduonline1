/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var tdata = [];
var tHeader = [];
var tEdit = "";
var tDelete = "";
var tView = "";
var tColumn = [];
var tColection = [];
var tContext = "eps";
Number.prototype.format = function (n, x, s, c) {
    var re = '\\d(?=(\\d{' + (x || 3) + '})+' + (n > 0 ? '\\D' : '$') + ')',
            num = this.toFixed(Math.max(0, ~~n));

    return (c ? num.replace('.', c) : num).replace(new RegExp(re, 'g'), '$&' + (s || ','));
};
$(document).ready(function () {
    lockPayment();
});
function lockPayment() {
    try {
        //$("#tid")
        $("#tid option[value='4']").remove();
        $("#tid option[value='7']").remove();
        $("#tid option[value='8']").remove();
        //  $("#tid option[value='4']").remove();
        // $("#selectBox option[value='option1']").remove();
    }
    catch (Ex) {
    }
}
var QueryString = function () {
    // This function is anonymous, is executed immediately and 
    // the return value is assigned to QueryString!
    var query_string = {};
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        // If first entry with this name
        if (typeof query_string[pair[0]] === "undefined") {
            query_string[pair[0]] = decodeURIComponent(pair[1]);
            // If second entry with this name
        } else if (typeof query_string[pair[0]] === "string") {
            var arr = [query_string[pair[0]], decodeURIComponent(pair[1])];
            query_string[pair[0]] = arr;
            // If third or later entry with this name
        } else {
            query_string[pair[0]].push(decodeURIComponent(pair[1]));
        }
    }
    return query_string;
}();
function printfDiv(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;
    // document.getElementById('header').style.display = 'none';
    // document.getElementById('footer').style.display = 'none';
    document.body.innerHTML = printContents;

    window.print();

    document.body.innerHTML = originalContents;
}
function fomatData(data) {

    try {
        var temp = parseFloat(data);
        return temp.format();
    } catch (e) {
        return data;
    }
}
function enumPayooRegister(key) {
    if (key === 0 || key === "0") {
        return "Khách hàng không nợ cước";
    } else if (key === 1 || key === "1") {
        return "Đã thanh toán với VietUnion và chưa gạch nợ cho Khách hàng";
    } else if (key === -1 || key === "-1") {
        return "Thanh toán hóa đơn bị thất bại. Do thông tin thanh toán không hợp lệ";
    } else if (key === -3 || key === "-3") {
        return "Thanh toán hóa đơn bị Timeout.";
    }
    return key;
}
function enumSmartLink(key) {
    var str = "00*,Approved!@" +
            "01*,Refer to issuer!@" +
            "02,Refer to issuer (special)!@" +
            "03*,Invalid merchant!@" +
            "04,Pick up card!@" +
            "05*,Do not honor!@" +
            "06, Error!@" +
            "07, Pick up card (special)!@" +
            "08,Honor with identification!@" +
            "09, Request in progress!@" +
            "10, Approved for partial amount!@" +
            "11, VIP Approval!@" +
            "12*,Invalid transaction!@" +
            "13, Invalid amount!@" +
            "14*, Card number does not exist!@" +
            "15, No such issuer!@" +
            "16, Approved, update track 3!@" +
            "17, Customer cancellation!@" +
            "18, Customer dispute!@" +
            "19, Re-enter transaction!@" +
            "20, Invalid response!@" +
            "21, No action taken (no match)!@" +
            "22, Suspected malfunction!@" +
            "23, Unacceptable transaction fee!@" +
            "24, File update not supported by receiver!@" +
            "25, Unable to locate record!@" +
            "26, Duplicate file update record!@" +
            "27, File update field edit error!@" +
            "28, File temporarily unavailable!@" +
            "29, File update not successful!@" +
            "30*, Format error!@" +
            "31, Issuer sign-off!@" +
            "32, Completed partially!@" +
            "33, Expired card!@" +
            "34, Suspected fraud!@" +
            "35, Card acceptor contact acquirer!@" +
            "36, Restricted card!@" +
            "37, Card acceptor call acquirer!@" +
            "38, Allowable PIN tries exceeded!@" +
            "39, No credit account!@" +
            "40, Function not supported!@" +
            "41*, Pick up card (lost card)!@" +
            "42, No universal account!@" +
            "43*, Pick up card (stolen card)!@" +
            "44, No investment account!@" +
            "51*, Not sufficient funds!@" +
            "52, No checking account!@" +
            "53, No saving account!@" +
            "54*, Expired card!@" +
            "55*, Incorrect PIN!@" +
            "56, No card record!@" +
            "57, Transaction not permitted to card!@" +
            "58, Transaction not permitted to card!@" +
            "59, Suspected fraud!@" +
            "60, Card acceptor contact acquirer!@" +
            "61, Exceeds withdrawal limit!@" +
            "62, Restricted card!@" +
            "63, Security violation!@" +
            "64,Original amount incorrect!@" +
            "65, Activity count exceeded!@" +
            "66, Card acceptor call acquirer!@" +
            "67, Card pick up at ATM!@" +
            "68*, Response received too late (timeout)!@" +
            "75*, PIN tries exceeded!@" +
            "76, Previous message not found!@" +
            "77, Data does not match original message!@" +
            "80, Invalid date!@" +
            "81*, Cryptographic error in PIN!@" +
            "82, Incorrect CVV!@" +
            "83*, Unable to verify PIN!@" +
            "84, Invalid authorization life cycle!@" +
            "85, No reason to decline!@" +
            "86, PIN validation not possible!@" +
            "88, Cryptographic failure!@" +
            "89, Authentication failure!@" +
            "90, Cutoff is in process!@" +
            "91, Issuer or switch inoperative!@" +
            "92, No routing path!@" +
            "93, Violation of law!@" +
            "94, Duplicate transmission!@" +
            "95, Reconcile error!@" +
            "96*, System malfunction";
    var arrTemp = str.split("!@");
    for (var i = 0; i < arrTemp.length; i++) {
        var strTemp = arrTemp[i].split(",");
        var mkey = strTemp[0];
        var mtext = strTemp[1];
        if (key === mkey || (key + '*') === mkey) {
            console.log(mtext);
            return mtext;
        }
    }
    return key;
}
function enumPayoo(key) {
    if (key === 0 || key === "0") {
        return "Khách hàng không nợ cước";
    } else if (key === 2 || key === "2") {
        return "Mã khách hàng không tồn tại hoặc khách hàng không nợ cước";
    } else if (key === 3 || key === "3") {
        return "Khách hàng không nợ cước";
    } else if (key === 4 || key === "4") {
        return "Mã khách hàng không tồn tại";
    } else if (key === 5 || key === "5") {
        return "Tìm được nhiều nhà cung cấp và dịch vụ.";
    } else if (key === 7 || key === "7") {
        return "Khách hàng hoặc đại lý truy vấn quá nhiều lần";
    } else if (key === -1 || key === "-1") {
        return "Quá trình thực thi ở hệ thống VietUnion bị thất bại";
    } else if (key === -3 || key === "-3") {
        return "Query bill bị timeout";
    } else if (key === -9 || key === "-9") {
        return "Lỗi không xác định";
    } else if (key === -10 || key === "-10") {
        return "Nhà cung cấp Khách hàng chọn VietUnion hạn chế cho đại lý ";
    } else if (key === -14 || key === "-14") {
        return "Hệ thống VietUnion đang là Offline.";
        //  Do nhà cung cấp – dịch vụ mà khách hàng chọn, ở hệ thống VietUnion đang là Offline. Trường hợp này Đối tác chuyển 
        // sang màn hình thanh toán offline cho khách hàng nhập thông tin để thanh toán theo luồng offline.
    } else if (key === -16 || key === "-16") {
        return "Có lổi trong quá trình tìm kiếm hóa đơn.";
        // Đây là trường hợp khi gọi sang nhà cung cấp hóa đơn bị lỗi mà hệ thống VietUnion không kiểm soát được(ngoại lệ). Với mã lỗi này Đối tác có thể gợi ý cho khách hàng 3 sự chọn lựa.
        //  + Thanh toán theo luồng Offline.
        //   + Nhập lại mã khách hàng.
        //   + Hủy bỏ thao tác.

    } else if (key === -18 || key === "-18") {
        return "Sai cap cha";
        //Mã lỗi này được áp dụng cho các Đối tác nào sử dụng Capcha.
    } else if (key === -23 || key === "-23") {
        return "Cap cha quá nhiều lần";
        // Mã lỗi này được áp dụng cho các Đối tác nào sử dụng Capcha. 
        //Nếu khách hàng hoặc đối tác đã truy vấn > n lần trong khoảng thời gian x(s) mà hệ 
    } else if (key === -24 || key === "-24") {
        return "Không tìm thấy thông tin khách hàng.";
        //Mã lỗi này áp dụng cho trường hợp tìm kiếm hóa đơn theo Khu vực (Area) và Số nhà (HouseNumber)
    } else if (key === -26 || key === "-26") {
        return "Nhà cung cấp dịch vụ không hợp lệ";
    } else {
        return key;
    }

}
function enumVnpay(key) {
    if (key === "00" || key === 0 || key === "0") {
        return "Khách hàng không nợ cước";// thành công
    }
    else if (key === "01" || key === 1) {
        return "Lỗi hệ thống telco hoặc lỗi hệ thống bán thẻ";
    } else if (key === "03" || key === 3) {
        return "Số điện thoại chưa được đăng ký tại ngân hàng";
    } else if (key === "05" || key === 5) {
        return "Hệ thống tạm ngừng phục vụ do lỗi đường truyền giữa VNPAY và Ngân hàng";
    } else if (key === "06" || key === 6) {
        return "Mã giao dịch không hợp lệ";
    } else if (key === "08" || key === 8) {
        return "Giao dịch bị time out";
    } else if (key === "31" || key === 31) {
        return "Giao dịch nghi vấn";
    } else if (key === "32" || key === 32) {
        return "Giao dịch nghi vấn";
    } else if (key === "33" || key === 33) {
        return "Giao dịch nghi vấn";
    } else if (key === "34" || key === 34) {
        return "Giao dịch nghi vấn";
    } else if (key === "50" || key === 50) {
        return "Mã khách hàng không hợp lệ/không tồn tại";
    } else if (key === "80" || key === 80) {
        return "Không tìm thấy mã đối tác";
    } else if (key === "81" || key === 81) {
        return "Mã đối tác không hợp lệ";
    } else if (key === "82" || key === 82) {
        return "Mã nhà cung cấp không được hỗ trợ";
    } else if (key === "83" || key === 83) {
        return "Mã nhà cung cấp không được hỗ trợ";
    } else if (key === "84" || key === 84) {
        return "Không tìm thấy dịch vụ";
    } else if (key === "85" || key === 85) {
        return "Dịch vụ không được hỗ trợ";
    } else if (key === "86" || key === 86) {
        return "Dịch vụ và nhà cung cấp không đựơc hỗ trợ";
    } else if (key === "87" || key === 87) {
        return "Message sai định dạng";
    } else if (key === "88" || key === 88) {
        return "Mã xử lý không đựơc hỗ trợ";
    } else if (key === "89" || key === 89) {
        return "Số tiền gạch nợ không hợp lệ";
    } else if (key === "90" || key === 90) {
        return "System trace trùng lặp";
    } else if (key === "91" || key === 91) {
        return "Message không được hỗ trợ";
    } else if (key === "94" || key === 94) {
        return "Không tìm thấy giao dịch gốc trong của giao dịch đảo";
    } else if (key === "95" || key === 95) {
        return "Đối chiếu số tổng bị lệch số liệu";
    } else if (key === "96" || key === 96) {
        return " ệ thống Ngân hàng đang tạm ngừng phục vụ";
    } else if (key === "98" || key === 98) {
        return " Giao dịch đảo bị trùng lặp";
    } else if (key === "99" || key === 99) {
        return " Giao dịch bị trùng lặp";
    } else if (key === "79" || key === 79) {
        return "Sai chữ ký";
    }
    else if (key === "777" || key === 777) {
        return "Số điện thoại không hợp lệ";
    }
    else
    {
        return "Hệ thống đang bận, vui lòng thử lại sau";
    }
}
function getName(index, key) {
    try {
        var str = tHeader[index];
        if (str === null || str === "")
            return key;
        return str;

    }
    catch (err) {
        return key;
    }
}
function myRenderColumn() {
    var obj = tdata[0];
    var index = 0;
    for (var j in obj) {
        var key = j;
        var objColumn = {};
        objColumn.mDataProp = key;
        objColumn.sTitle = getName(index, key);
        index++;
        tColumn.push(objColumn);
    }
    if (tEdit !== "")
        tColumn.push(objectColumn(1));
    if (tDelete !== "")
        tColumn.push(objectColumn(2));
    if (tView !== "")
        tColumn.push(objectColumn(3));



    /* var objEdit = {};
     objEdit.mDataProp = "id";
     objEdit.sTitle = "Edit";
     objEdit.bSearchable = false;
     objEdit.bSortable = false;
     objEdit.mRender = function (data, type, full)
     {
     var urlEdit = "/role/edit/" + data;
     return "<a href='" + urlEdit + "'>Edit</a>";
     }
     */


}
function createTable(id) {
    myRenderColumn();
    var divId = "#div" + id;
    var tbId = "tb" + id;
    $(divId).html('<table cellpadding="0" cellspacing="0" border="0" class="display" id="' + tbId + '"></table>');
    $("#" + tbId).dataTable({
        "data": tdata,
        "aoColumns": tColumn,
        "language": {
            "lengthMenu": "Chọn hiển thị  _MENU_",
            "search": "Tìm kiếm:",
            "paginate": {
                "previous": "Trước",
                "next": "Sau"
            },
            "emptyTable": "Không có dữ liệu hiển thị",
            "info": "Trang _PAGE_/_PAGES_",
            "infoEmpty": "Không có bản ghi nào"

        }

    });

}
function txrenderTable(id) {
    $("#" + id).dataTable({
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
            "sInfoFiltered": "(tìm trong _MAX_ bản ghi)",
            "sZeroRecords": "Không tìm thấy bản ghi nào"

        }

    });
}
function objectColumn(type) {
    var objEdit = {};
    objEdit.mDataProp = "id";
    var strType = "";
    var urlType = "";
    if (type === 1) {
        strType = "Edit";
        urlType = tEdit;
    }
    else if (type === 2) {
        strType = "Delete";
        urlType = tDelete;
    }
    else if (type === 3) {
        strType = "View";
        urlType = tView;
    }
    objEdit.sTitle = strType;
    objEdit.bSearchable = false;
    objEdit.bSortable = false;
    objEdit.mRender = function (data, type, full)
    {
        var urlEdit = urlType + data;
        return "<a href='" + urlEdit + "'>" + strType + "</a>";
    };
    return objEdit;
}
function typeAccountIshide(ishide) {
    if (ishide === 1) {// chon loai la tai khoan chi nhanh
        $("#divcustomerAccount").hide();
        $("#divtValidateAccount").hide();
        $("#paymentb2").show();
        $(".accountValidate").hide();
    } else {
        $("#divcustomerAccount").show();
        $("#divtValidateAccount").show();
        $("#paymentb2").hide();
        $(".accountValidate").hide();
    }
}
function setAccountByBranch(isbranch) {
    if (isbranch === 1) {
        $("#customerAccount").val($("#accountBranch").val());
        $("#customerAccount").attr('readonly', true);
    } else {
        $("#customerAccount").val("");
        $("#customerAccount").attr('readonly', false);
    }
}
function comboTypeAccount() {
    var first = $("#typePayment").val();
    if (first === "1" || first === 1) {
         typeAccountIshide(1);//trich tien mat
      //  typeAccountIshide(0);
        setAccountByBranch(1);
    }
    else {
        typeAccountIshide(0);
        setAccountByBranch(0);
    }
    $("#typePayment").change(function () {
        var value = $(this).val();
        if (value === "1" || value === 1) {
           /// typeAccountIshide(0);
            setAccountByBranch(1);
            typeAccountIshide(1);//trich tien mat
        }
        else {
            typeAccountIshide(0);
            setAccountByBranch(0);
        }
    });
}
function showLoading(ishow, idclick, idimg) {
    if (ishow === 1) {
        $("#" + idimg).show();
        $("#" + idclick).hide();
        $("." + idclick).hide();
    } else {
        $("#" + idimg).hide();
        $("#" + idclick).show();
        $("." + idclick).show();
    }
}
var accountCode = "";
function checkAccount(id) {
    var isValidate = validate("form-horizontal");
    if (!isValidate) {
        return;
    }
    accountCode = "";
    //showLoading(1, "tValidateAccount", "imgcheckAccount");
    showLoading(1, "tValidateAccount", "imgtValidateAccount");
    $("#errormessage").text("");
    $.ajax({
        type: 'get',
        contentType: "text/plain; charset=utf-8",
        url: "/" + tContext + '/paymentOrder/checkAccount',
        timeout: 1000 * 60,
        data: {
            customerAccount: $("#customerAccount").val(),
            customerAccountName: $("#customerAccountName").val(),
            customerAccountBlance: $("#customerAccountBlance").val(),
            typePayment: $("#typePayment").val(),
            key: $("#key").val()
        },
        success: function (data) {
            if (data !== null && data !== "") {
                var dataJson = JSON.parse(data);
                if (dataJson.status === 1 || dataJson.status === "1") {
                    {
                        try {
                            $("#customerAccount").val(dataJson.data.accountNumber);
                            // $("#customerAccount").attr("readonly",true);
                            $("#customerAccountName").val(dataJson.data.accountName);
                            $("#customerAccountBlance").val(fomatData(dataJson.data.accountBlance));
                            $("#minimumAmount").val(dataJson.data.minimumAmount);
                            accountCode = dataJson.data.accountCode;
                            $("#paymentb2").show();
                            $(".accountValidate").show();//hien account nam va` accoutn balance
                            $("#errormessage").text("");
                        }
                        catch (e) {
                            $("#errormessage").text("Tài khoản không tồn tại");
                        }
                        // $("#"+id).show();
                    }

                } else {
                    $("#errormessage").text(data.message);
                    // alert(data.message);
                }
            }
            showLoading(0, "tValidateAccount", "imgtValidateAccount");
        },
        error: function (x, t, m) {
            if (t === "timeout") {
                alert("get timeout");
            } else {
                alert(t);
            }
            showLoading(0, "tValidateAccount", "imgtValidateAccount");
        }
    });
}
function changeRadio() {
    $('input[name=sml]').change(function () {
        var currentValue = $('input[name=sml]:checked').val();
        if (currentValue === 1 || currentValue === "1") {
            $("#lbmakhachang").text("Số thẻ");
            $("#customerName").attr("placeholder", "Số thẻ");
            $("#div-tpid").hide();
        } else {
            $("#lbmakhachang").text("Số tài khoản");
            $("#customerName").attr("placeholder", "Số tài khoản");
            $("#div-tpid").show();
        }
    });
}
function keypressNumber(mId, isNumber) {
    if (isNumber) {
        $("#" + mId).keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .

            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                    // Allow: Ctrl+A, Command+A
                            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
                            // Allow: home, end, left, right, down, up
                                    (e.keyCode >= 35 && e.keyCode <= 40)) {
                        // let it happen, don't do anything

                        return;
                    }
                    // Ensure that it is a number and stop the keypress
                    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                        //  console.log("dsdsd");
                        e.preventDefault();
                    }
                    if ($(this).val().length >= 12) {
                        e.preventDefault();
                        //return;
                    }
                });
    } else {
        $("#" + mId).unbind();
    }

}
function changeProvider() {
    var idFirst = $("#tid").val();
    setData(idFirst);
    console.log(idFirst);
    $("#tid").change(function () {
        var value = $(this).val();
        if (value === 6 || value === "6") {
            $("#lbmakhachang").text("Số điện thoại");
            $("#services-order-title").text("NẠP TIỀN TẠI QUẦY");
            $("#customerName").attr("placeholder", "Số điện thoại");

            keypressNumber("customerName", true);
            $("#sml").hide();
            $("#div-totalMoneyChuyen").hide();
            $("#div-tpid").show();
            $("#lbtpid").text("Số tiền:");
        } else if (value === 7 || value === "7") {
            keypressNumber("customerName", false);
            $("#lbtpid").text("Chọn ngân hàng:");
            $("#services-order-title").text("CHUYỂN TIỀN NHANH");
            $("#div-totalMoneyChuyen").show();
            $('input[name=sml]').change();

            var currentValue = $('input[name=sml]:checked').val();
            if (currentValue === 1 || currentValue === "1") {
                $("#lbmakhachang").text("Số thẻ");
                $("#customerName").attr("placeholder", "Số thẻ");
            } else {
                $("#lbmakhachang").text("Số tài khoản");
                $("#customerName").attr("placeholder", "Số tài khoản");
            }

            $("#sml").show();
        }
        else {
            keypressNumber("customerName", false);
            $("#services-order-title").text("THANH TOÁN HÓA ĐƠN");
            $("#lbmakhachang").text("Mã khách hàng");
            $("#customerName").attr("placeholder", "Mã khách hàng");
            $("#sml").hide();
            $("#div-totalMoneyChuyen").hide();
            $("#div-tpid").show();
            $("#lbtpid").text("Chọn nhà cung cấp:");
        }
        setData(value);
        //console.log(value);
    });

}
function setData(type) {
    var str = "";
    if (tColection !== null && tColection.length > 0) {
        for (var i = 0; i < tColection.length; i++) {
            var obj = tColection[i];
            var scodex = "-1";
            var pcodex = "-1";
            try {
                scodex = obj.scode;
                pcodex = obj.pcode;
            }
            catch (err) {

            }
            var tidx = obj.tid + "";
            if (tidx === type) {
                var option = '<option pname="' + obj.pname + '"  pcode="' + pcodex + '" scode="' + scodex + '" sid="' + obj.sid + '" cid="' + obj.cid + '" ' +
                        ' value="' + obj.pid + '">' + obj.pname + '</option>';
                str = str + option;
            }
        }
    }
    // console.log(str);
    $("#tpid").html(str);
}
function clearOrder() {
    $("#information-order").hide();
    $("#ifcode").val("");
    $("#ifname").val("");
    $("#faddress").text("");
    $("#iftotalmoney").val("");
    $("#iftable").html("");
}
function renOrdertable(data) {
    if (data !== null) {
        var str = "";
        for (var i = 0; i < data.length; i++) {
            var row = data[i];
            var classx = "class='success'";
            if (i % 2 === 0)
                classx = "";
            var strRow = "<tr " + classx + " >";
            var tdcode = '<td class="text-center">' + row.code + '</td>';
            var tddate = '<td class="text-center">' + row.date + '</td>';
            var tdmoney = '<td class="text-center">' + row.money + '</td>';
            strRow = strRow + tdcode + tddate + tdmoney + "</tr>";
            str = str + strRow;
        }
        $("#iftable").html(str);
    }
}
function checkPaymentb3() {
    $("#check-paymentb3").click(function () {
        $("#paymentb3").show();
        var typePayment = $("#typePayment").val();
        if (typePayment === 1 || typePayment === "1") {// thanh toan bang tien mat
            $(".htType2").hide();
            $("#htcustomerMoney").val($("#iftotalmoney").val());
        }
        else {// thanh toan bang tai khoan
            // console.log($("#customerAccount").val()+"zzz");
            $("#htcustomerDebitAccount").val($("#customerAccount").val());
            $("#htcustomerName").val($("#customerAccountName").val());
            $("#htcustomerAccountBlance").val($("#customerAccountBlance").val());
            $("#htcustomerMoney").val($("#iftotalmoney").val());
            $(".htType2").show();
        }
        //if("#typePayment")
    });
}
function checkDataStepOneError() {
    var flag = 1;
    $("#totalMoneyChuyenError").text("");
    $("#customerNameError").text();
    $("#customerNameError").hide();
    $("#totalMoneyChuyenError").hide();
    //var patternx = /^\d+$/;
    if ($("#tid").val() === 7 || $("#tid").val() === "7") {
        var tmpMoneyChuyen = $("#totalMoneyChuyen").val();
        if (tmpMoneyChuyen.trim().length < 1) {
            $("#totalMoneyChuyenError").text("Số tiền không được để trống");
            $("#totalMoneyChuyenError").show();
            flag = 0;
        }
        var currentPayment = $("#typePayment").val();
        //if (currentPayment === 2 || currentPayment === "2") //tai khoan khach hang moi kt
        {
            try {
                var totalMoneyAccount = $("#customerAccountBlance").val().replace(/,/g, "");
                var miniMunAmount = 0;
                var messageText = "Số tiền chuyển lớn hơn số tiền trong tài khoản";
                if (currentPayment === 2 || currentPayment === "2") {
                    miniMunAmount = $("#minimumAmount").val();
                    messageText = "Số tiền sau khi trừ nhỏ hơn số dư tối thiếu";
                }
                var numberTotal = parseFloat(totalMoneyAccount) - parseFloat(miniMunAmount);
                console.log(numberTotal);
                tmpMoneyChuyen = tmpMoneyChuyen.replace(/,/g, "");
                if (parseFloat(tmpMoneyChuyen) > numberTotal) {

                    // $("#totalMoneyChuyenError").text("");
                    $("#totalMoneyChuyenError").text(messageText);
                    $("#totalMoneyChuyenError").show();
                    flag = 0;
                }

            }
            catch (e) {
            }
        }
        tmpMoneyChuyen = tmpMoneyChuyen.replace(/,/g, "");
        if (isNaN(tmpMoneyChuyen)) {
            $("#totalMoneyChuyenError").text("Số tiền chuyển phải là số");
            $("#totalMoneyChuyenError").show();
            flag = 0;
        }

    }
    var vCustomerName = $("#customerName").val();
    if (vCustomerName.trim().length < 1) {
        $("#customerNameError").text($("#lbmakhachang").text() + " không được để trống");
        $("#customerNameError").show();
        flag = 0;
    }
    if ($("#tid").val() === 6 || $("#tid").val() === "6") {
        var mphoneNumber = $("#customerName").val();
        if (isNaN(mphoneNumber)) {
            $("#customerNameError").text("Số điện thoại phải là kiểu số");
            $("#customerNameError").show();
            flag = 0;
        }
        var tmpMoneyChuyen = $("#tpid option:selected").attr("pname").replace(".", "");
        var totalMoneyAccount = $("#customerAccountBlance").val().replace(/,/g, "");
        var miniMunAmount = 0;
        var currentPayment = $("#typePayment").val();
        var messageText = "Số tiền chuyển lớn hơn số tiền trong tài khoản";
        if (currentPayment === 2 || currentPayment === "2") {
            miniMunAmount = $("#minimumAmount").val();
            messageText = "SSố tiền sau khi trừ nhỏ hơn số dư tối thiếu";
        }

        var numberTotal = parseFloat(totalMoneyAccount) - parseFloat(miniMunAmount);
        if (parseFloat(tmpMoneyChuyen) > numberTotal) {
            $("#customerNameError").text(messageText);
            $("#customerNameError").show();
            flag = 0;
        }
    }
    if (flag === 0) {
        return true;
    }
    else {
        return false;
    }

}
function nextStep2() {

    $("#nextStep2").click(function () {
        //nextStep2
        var vlidate = checkDataStepOneError();
        if (vlidate) {
            return;
        }

        $("#serviceErrormessage").text("");
        showLoading(1, "nextStep2", "imgnextStep2");
        $.ajax({
            type: 'get',
            contentType: "text/plain; charset=utf-8",
            url: "/" + tContext + '/paymentOrder/validateOrder',
            timeout: 1000 * 60 * 2,
            data: {
                tid: $("#tid").val(),
                pid: $("#tpid").val(),
                customerName: $("#customerName").val(),
                customerAccount: $("#customerAccount").val(),
                customerAccountName: $("#customerAccountName").val(),
                customerAccountBlance: $("#customerAccountBlance").val().replace(/,/g, ""),
                typePayment: $("#typePayment").val(),
                cid: $("#tpid option:selected").attr("cid"),
                sid: $("#tpid option:selected").attr("sid"),
                key: $("#key").val(),
                pcode: $("#tpid option:selected").attr("pcode"),
                scode: $("#tpid option:selected").attr("scode"),
                pname: $("#tpid option:selected").attr("pname"),
                totalMoneyChuyen: $("#totalMoneyChuyen").val().replace(/,/g, ""),
                typeSml: $('input[name=sml]:checked').val(),
                providerName: $("#tid option:selected").text(),
                providerTypeName: $("#tpid option:selected").text()
            },
            success: function (data) {
                if (data !== null && data !== "") {
                    var dataJson = JSON.parse(data);
                    if (dataJson.status === "1" || dataJson.status === 1) {
                        // window.location="/"+tContext+"/paymentOrder/steptwo?tid="+$("#tid").val()+
                        //     "&&pid="+$("#tpid").val()+
                        //        "&&customerAccount="+ $("#customerAccount").val()+
                        //       "&&typePayment="+$("#typePayment").val()+
                        //      "&&customerCodeOrder="+$("#customerName").val()+
                        //      "&&customerAccountBlance="+$("#customerAccountBlance").val();

                        if ($("#tid").val() === 6 || $("#tid").val() === "6") {
                            window.location = "/" + tContext + "/paymentOrder/stepthree?key=" + $("#key").val() + "&&parent=paymentOrder/stepone-topup";
                        }
                        else if ($("#tid").val() === 7 || $("#tid").val() === "7") {
                            // $("#div-toCustomerName").show();
                            // $("#toCustomerName").val(dataJson.message);
                            window.location = "/" + tContext + "/paymentOrder/stepthree?key=" + $("#key").val()
                                    + "&&parent=paymentOrder/stepone-smartlink"
                                    + "&&formName=" + dataJson.message;
                        }
                        else {
                            window.location = "/" + tContext + "/paymentOrder/steptwo?key=" + $("#key").val()
                                    + "&&minimumAmount=" + $("#minimumAmount").val()
                                    + "&&typePayment=" + $("#typePayment").val();
                        }

                    }
                    else if (dataJson.status === "0" || dataJson.status === 0) {
                        $("#serviceErrormessage").text(dataJson.message);
                    }
                    else if (dataJson.status === "2" || dataJson.status === 2) {
                        console.log(dataJson.data + "--" + dataJson.message);
                        if (dataJson.data === "2" || dataJson.data === 2) {
                            //2 la thang paypp
                            var text = enumPayoo(dataJson.message);
                            $("#serviceErrormessage").text(text);
                        } else if (dataJson.data === "3" || dataJson.data === 3) {//smart link
                            $("#serviceErrormessage").text(enumSmartLink(dataJson.message));
                        } else {
                            $("#serviceErrormessage").text(enumVnpay(dataJson.message));
                        }
                        // $("#errormessage").text(dataJson.message);
                        //alert(dataJson.message);
                    }
                }
                showLoading(0, "nextStep2", "imgnextStep2");
            },
            error: function (x, t, m) {
                if (t === "timeout") {
                    alert("get timeout");
                } else {
                    alert(t);
                }
                showLoading(0, "nextStep2", "imgnextStep2");
            }

        });
    });
}
function tvalidateOrder() {
    $("#tValidateOrder").click(function () {
        clearOrder();
        $.ajax({
            type: 'get',
            contentType: "text/plain; charset=utf-8",
            url: "/" + tContext + '/payment/validateOrder',
            timeout: 1000 * 60,
            data: {
                tid: $("#tid").val(),
                pid: $("#pid").val(),
                customerName: $("#customerName").val(),
                customerAccount: $("#customerAccount").val(),
                customerAccountName: $("#customerAccountName").val(),
                customerAccountBlance: $("#customerAccountBlance").val(),
                typePayment: $("#typePayment").val()

            },
            success: function (data) {
                if (data !== null && data !== "") {
                    var dataJson = JSON.parse(data);
                    if (dataJson.status === "1" || dataJson.status === 1) {
                        $("#information-order").show();
                        $("#ifcode").val(dataJson.data.customerCode);
                        $("#ifname").val(dataJson.data.customerName);
                        $("#faddress").text(dataJson.data.address);
                        $("#iftotalmoney").val(dataJson.data.totalMoney);
                        renOrdertable(dataJson.data.paymentOrders);
                    } else {
                        alert(dataJson.message);
                    }
                    console.log(dataJson);
                }
                console.log(data);
            },
            error: function (x, t, m) {
                if (t === "timeout") {
                    alert("got timeout");
                } else {
                    alert(t);
                }
            }
        });
    });
}
var mangso = ['không', 'một', 'hai', 'ba', 'bốn', 'năm', 'sáu', 'bảy', 'tám', 'chín'];
function dochangchuc(so, daydu)
{
    var chuoi = "";
    chuc = Math.floor(so / 10);
    donvi = so % 10;
    if (chuc > 1) {
        chuoi = " " + mangso[chuc] + " mươi";
        if (donvi === 1) {
            chuoi += " mốt";
        }
    } else if (chuc === 1) {
        chuoi = " mười";
        if (donvi === 1) {
            chuoi += " một";
        }
    } else if (daydu && donvi > 0) {
        chuoi = " lẻ";
    }
    if (donvi === 5 && chuc > 1) {
        chuoi += " lăm";
    } else if (donvi > 1 || (donvi === 1 && chuc === 0)) {
        chuoi += " " + mangso[ donvi ];
    }
    return chuoi;
}
function docblock(so, daydu)
{
    var chuoi = "";
    tram = Math.floor(so / 100);
    so = so % 100;
    if (daydu || tram > 0) {
        chuoi = " " + mangso[tram] + " trăm";
        chuoi += dochangchuc(so, true);
    } else {
        chuoi = dochangchuc(so, false);
    }
    return chuoi;
}
function dochangtrieu(so, daydu)
{
    var chuoi = "";
    trieu = Math.floor(so / 1000000);
    so = so % 1000000;
    if (trieu > 0) {
        chuoi = docblock(trieu, daydu) + " triệu";
        daydu = true;
    }
    nghin = Math.floor(so / 1000);
    so = so % 1000;
    if (nghin > 0) {
        chuoi += docblock(nghin, daydu) + " nghìn";
        daydu = true;
    }
    if (so > 0) {
        chuoi += docblock(so, daydu);
    }
    return chuoi;
}
function stringToMoney(so)
{
    if (so === 0)
        return mangso[0];
    var chuoi = "", hauto = "";
    do {
        ty = so % 1000000000;
        so = Math.floor(so / 1000000000);
        if (so > 0) {
            chuoi = dochangtrieu(ty, true) + hauto + chuoi;
        } else {
            chuoi = dochangtrieu(ty, false) + hauto + chuoi;
        }
        hauto = " tỷ";
    } while (so > 0);
    return chuoi;
}
var flagIdJumb = 0;
function validate(mclass) {
    //return true;
    flagIdJumb = 0;
    var flag = 1;
    $("." + mclass).each(function () {
        $(this).find("input[type=text]").each(function (index, element) {
            try {
                //   var child = $(this).find("input[type=text]");
                var child = element;
                var isNull = $(child).attr("isnull");
                var length = $(child).attr("length");
                var idError = $(child).attr("idError");
                if (idError === undefined) {
                    if ($(child).attr("id") !== undefined) {
                        idError = $(child).attr("id") + "Error";
                    }
                }

                var title = $(child).attr("title");
                $("#" + idError).text("");
                $("#" + idError).hide();
                if (isNull !== undefined) {
                    if ($(child).val() === null || $(child).val().trim() === "") {
                        if (idError !== undefined) {
                            $("#" + idError).text(title + " không được để trống");
                            $("#" + idError).show();
                            flag = 0;
                            if (flagIdJumb === 0)
                                flagIdJumb = $(child).attr("id");
                            //return false;
                        }
                    }
                } else if (length !== undefined) {
                    var strTmp = $(child).val().length;
                    var rqLength = parseInt(length);
                    if (rqLength > strTmp) {
                        $("#" + idError).text(title + "có độ dài(" + strTmp + ") vượt quá giới hạn chi phép");
                        $("#" + idError).show();
                        flag = 0;
                        if (flagIdJumb === 0)
                            flagIdJumb = $(child).attr("id");
                        // return false;
                    }
                }
            }
            catch (e) {

            }
        });

    });
    if (flag === 1) {
        return true;
    } else {
        if (flagIdJumb !== 0 || flagIdJumb !== "0")
            $(document).scrollTop($("#" + flagIdJumb).offset().top);
        return false;
    }
}
