<%-- 
    Document   : create-user
    Created on : Jul 27, 2015, 6:08:30 PM
    Author     : nhuongnm
--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="baseURL" value="${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, pageContext.request.contextPath)}" />


<div class="form-group">
    <button type="button" id="btnCreateOrderMedia" class="btn btn-danger">Thêm Media</button>
    <button type="button" id ="btnListOrderMedia"  class="btn btn-danger">Xem Media</button>
</div>

<form class="form-horizontal" method="get" accept-charset="utf8">    
    <legend><h4 class="text-danger">CHI TIẾT ĐƠN HÀNG</h4></legend>

    <div id="tabs">
        <ul>
            <li><a href="#thongtinchung">Thong tin chung</a></li>
            <li><a href="#noichuyen">Thong tin noi chuyen</a></li>
            <li><a href="#noinhan">Dia chi noi nhan</a></li>
            <li><a href="#lienhe">Thong tin lien he noi nhan</a></li>
        </ul>
        <div id="thongtinchung">
            <div class="form-group">
                <label class="col-sm-2 control-label">id </label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Tên" value="${data.id}" name ="id" id="id">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">userorder </label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Tên" value="${data.userorder}" name ="userorder">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">price</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.price}" name ="price">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">quantity</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.quantity}" name ="quantity">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">orderTime</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.orderTime}" name ="orderTime">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">needShippingTime</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.needShippingTime}" name ="needShippingTime">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">narrative</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.narrative}" name ="narrative">
                </div>
            </div>
        </div>
        <div id="noichuyen">
            <div class="form-group">
                <label class="col-sm-2 control-label">Shipfrom</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfrom}" name ="shipfrom">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromCity</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromCity}" name ="shipfromCity">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromDistrict</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromDistrict}" name ="shipfromDistrict">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromStreet</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromStreet}" name ="shipfromStreet">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromAddress</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromAddress}" name ="shipfromAddress">
                </div>
            </div>
        </div>
        <div id="noinhan">
            <div class="form-group">
                <label class="col-sm-2 control-label">Shipto</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipto}" name ="shipto">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoCity</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoCity}" name ="shiptoCity">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoDistrict</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoDistrict}" name ="shiptoDistrict">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoStreet</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoStreet}" name="shiptoStreet">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoAddress</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoAddress}" name ="shiptoAddress">
                </div>
            </div>
        </div>
        <div id="lienhe">
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoMobile</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoMobile}" name ="shiptoMobile">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoContact</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoContact}" name ="shiptoContact">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">note</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.note}" name ="note">
                </div>
            </div>
        </div>
    </div>  
    <!--
        <div class="col-sm-6 left">
            <div class="form-group">
                <label class="col-sm-2 control-label">id </label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Tên" value="${data.id}" name ="id" id="id">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Shipfrom</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfrom}" name ="shipfrom">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromDistrict</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromDistrict}" name ="shipfromDistrict">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromAddress</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromAddress}" name ="shipfromAddress">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoCity</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoCity}" name ="shiptoCity">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoStreet</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoStreet}" name="shiptoStreet">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoMobile</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoMobile}" name ="shiptoMobile">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">note</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.note}" name ="note">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">quantity</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.quantity}" name ="quantity">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">needShippingTime</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.needShippingTime}" name ="needShippingTime">
                </div>
            </div>
        </div>
    
    
        <div class="col-sm-6 right">
            <div class="form-group">
                <label class="col-sm-2 control-label">userorder </label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Tên" value="${data.userorder}" name ="userorder">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromCity</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromCity}" name ="shipfromCity">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromStreet</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromStreet}" name ="shipfromStreet">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Shipto</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipto}" name ="shipto">
                </div>
            </div>    
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoDistrict</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoDistrict}" name ="shiptoDistrict">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoAddress</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoAddress}" name ="shiptoAddress">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoContact</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoContact}" name ="shiptoContact">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">price</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.price}" name ="price">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">orderTime</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.orderTime}" name ="orderTime">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">narrative</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.narrative}" name ="narrative">
                </div>
            </div>
        </div>
    <!--
    <div class="form-group">
    <label class="col-sm-2 control-label">id </label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Tên" value="${data.id}" name ="id" id="id">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">userorder </label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Tên" value="${data.userorder}" name ="userorder">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">Shipfrom</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfrom}" name ="shipfrom">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">shipfromCity</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromCity}" name ="shipfromCity">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">shipfromDistrict</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromDistrict}" name ="shipfromDistrict">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">shipfromStreet</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromStreet}" name ="shipfromStreet">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">shipfromAddress</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipfromAddress}" name ="shipfromAddress">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">Shipto</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shipto}" name ="shipto">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">shiptoCity</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoCity}" name ="shiptoCity">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">shiptoDistrict</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoDistrict}" name ="shiptoDistrict">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">shiptoStreet</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoStreet}" name="shiptoStreet">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">shiptoAddress</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoAddress}" name ="shiptoAddress">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">shiptoMobile</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoMobile}" name ="shiptoMobile">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">shiptoContact</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.shiptoContact}" name ="shiptoContact">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">note</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.note}" name ="note">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">price</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.price}" name ="price">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">quantity</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.quantity}" name ="quantity">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">orderTime</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.orderTime}" name ="orderTime">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-2 control-label">needShippingTime</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.needShippingTime}" name ="needShippingTime">
    </div>
    </div>
    
    <div class="form-group">
    <label class="col-sm-2 control-label">status</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.status}" name ="status">
    </div>
    </div>
    
    <div class="form-group">
    <label class="col-sm-2 control-label">narrative</label>
    <div class="col-sm-5">
        <input type="text" class="form-control readonly" placeholder="Mô tả" value="${data.narrative}" name ="narrative">
    </div>
    </div>
    -->
    <div class="form-group">
        <a href="<c:url value="/order/list"/>"><button type="button" class="btn btn-danger">DANH SACH</button></a>
    </div>


    <div class="form-group">

    </div>
    <h4 class="text-danger text-center">DANH SÁCH PRODUCT</h4>
    <h1 id="msgMessage">${message}</h1>
    <input type="button" id="btnAdd" value="..." class="btn btn-danger"/>    
    <input type="button" id="btnNew" value="Add New" class="btn btn-danger"/>    
    <table class="table table-bordered" id="tblData">  
        <thead>
            <tr>
                <th class="text-center btn-primary">###</th>
                <th class="text-center btn-primary">Tên</th>
                <th class="text-center btn-primary">Mô tả</th>     
                <th class="text-center btn-primary">Action</th>
                <th class="text-center btn-primary">Media</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${productlist}" var="value" varStatus="stt">     
                <tr>
                    <td class="text-danger text-center">${stt.count}</td>
                    <td class="text-left bold">${value.name}</td>
                    <td class="text-center">${value.description}</td> 
                    <td class="text-center">
                        <input id="btnProduct" value="Sua" type="button" onclick="editProduct(${value.id})" class="btn btn-danger"/>
                    </td> 
                    <td class="text-center">
                        <input id="btnMedia" value="Them Media" type="button" onclick="createMedia(${value.id})" class="btn btn-danger"/>
                        <input id="btnMedia" value="Xem Media" type="button" onclick="getMedia(${value.id})" class="btn btn-danger"/>
                    </td>                                    
                </tr>
            </c:forEach>
        </tbody>
    </table>
</form>

<div id="dialog" title="Product" hidden="true">    
</div>        

<input id="btnHoanThanh" value="HOAN THANH" type="button" class="btn btn-danger"/>
<script type="text/javascript" lang="javascript">
    var url_original = "${baseURL}";
    var access_token = "";
    var shipping_service_url = "";
    var user_id = "";
    var dialog_height = 400;
    var dialog_width = 660;
    var dialog_minWidth = 650;
    $(document).ready(function () {
        access_token = "${userProfile.accesstoken.access_token}";
        shipping_service_url = "${userProfile.shipping_service_url}";
        user_id = "${userProfile.user.id}";
        //alert (user_id);
        //var shipping_service_url = "http://localhost:9090/shippingservices";
        //alert (shipping_service_url);


        $('#btnAdd').click(function ()
        {
            var list_url = "<c:url value="product/list-result"/>";
            var userid = $('#btnAdd').val();
            var orderid = $('#id').val();
            //alert(orderid);
            $("#dialog").data('orderid', userid);
            var url = url_original + "/" + list_url;
            // alert(userid);
            //alert(url);
            $("#dialog").load(url).dialog({
                height: dialog_height,
                width: dialog_width,
                minWidth: dialog_minWidth,
                modal: true,
                open: function () {
                    //alert(1);
                    //$(this).find("input[id=txtselected]").val($(this).data('orderid'));
                },
                buttons: {
                    "Xác nhận": function () {
                        // var selectedid = $("#dialog").contents().find("#txtselected").val();
                        var selectedid = $(this).find("input[id=txtselected]").val();
                        if (selectedid !== "")
                        {
                            // alert(selectedid);   
                            list_url = "api/product/copy?access_token=" + access_token;
                            url = shipping_service_url + "/" + list_url;
                            //var orderid = $("#dialog").contents().find("#orderid").val();

                            jsonString = JSON.stringify({"orderid": orderid
                                , "status": "DRAFT"
                                , "userid": user_id
                                , "id": selectedid
                            });

                            $.ajax({
                                url: url,
                                type: "POST",
                                contentType: "application/json",
                                dataType: "json",
                                data: jsonString, //Stringified Json Object
                                cache: false, //This will force requested pages not to be cached by the browser  
                                processData: false, //To avoid making query String instead of JSON
                                success: function (resposeJsonObject) {
                                    // Success Action
                                    //alert(resposeJsonObject);
                                    // reload page;
                                    location.reload();
                                }

                            });
                            $(this).dialog("close");
                            location.reload();
                            //alert(selectedid);
                            //alert(orderid);
                        }

                    },
                    "Hủy": function () {
                        //alert(0);
                        $(this).dialog("close");
                    }
                }
            });
        });


        $('#btnNew').click(function ()
        {
            var list_url = "<c:url value="product/create"/>";
            var orderid = $('#id').val();
            $("#dialog").data('orderid', orderid);
            var url = url_original + "/" + list_url + "/" + orderid;
            // alert(userid);
            //alert(url);
            $("#dialog").load(url).dialog({
                height: dialog_height,
                width: dialog_width,
                minWidth: dialog_minWidth,
                modal: true,
                open: function () {
                    //alert(1);
                    $(this).find("input[id=txtselected]").val($(this).data('orderid'));
                },
                buttons: {
                    "Xác nhận": function () {
                        list_url = "api/product/create?access_token=" + access_token;
                        url = shipping_service_url + "/" + list_url;
                        //alert(url);
                        var orderid = $("#dialog").contents().find("#orderid").val();
                        var name = $("#dialog").contents().find("#name").val();
                        var description = $("#dialog").contents().find("#description").val();
                        var weight = $("#dialog").contents().find("#weight").val();
                        var height = $("#dialog").contents().find("#height").val();
                        var wide = $("#dialog").contents().find("#wide").val();
                        var length = $("#dialog").contents().find("#length").val();
                        var note = $("#dialog").contents().find("#note").val();
                        var category = $("#dialog").contents().find("#category").val();
                        jsonString = JSON.stringify({"orderid": orderid
                            , "name": name
                            , "description": description
                            , "weight": weight
                            , "height": height
                            , "wide": wide
                            , "length": length
                            , "note": note
                            , "category": category
                            , "status": "DRAFT"
                            , "userid": user_id
                        });

                        //alert(jsonString);
                        //$(this).load(url, data2);
                        $.ajax({
                            url: url,
                            type: "POST",
                            contentType: "application/json;charset=UTF-8",
                            dataType: "json",
                            data: jsonString, //Stringified Json Object
                            cache: false, //This will force requested pages not to be cached by the browser  
                            processData: false, //To avoid making query String instead of JSON
                            success: function (resposeJsonObject) {
                                // Success Action
                                //alert(resposeJsonObject);
                                // reload page;
                                location.reload();
                            }

                        });
                        //alert(10);
                        $(this).dialog("close");
                    },
                    "Hủy": function () {
                        //alert(0);
                        $(this).dialog("close");
                    }
                }
            });
        });

        $('#btnHoanThanh').click(function ()
        {
            alert("xx");
        });

        $('#btnCreateOrderMedia').click(function ()
        {
            alert("Show create Order for Media");
        });

        $('#btnListOrderMedia').click(function ()
        {
            alert("Show List Order for Media");
        });

        $(function () {
            $("#tabs").tabs();
        });
    });

    function getMedia(product)
    {
        alert(product);
        var list_url = "<c:url value="product/list-result"/>";

        var url = url_original + "/" + list_url;
        // alert(userid);
        //alert(url);
        $("#dialog").load(url).dialog({
            height: dialog_height,
            width: dialog_width,
            minWidth: dialog_minWidth,
            modal: true,
            open: function () {
                //alert(1);
                $(this).find("input[id=txtselected]").val($(this).data('orderid'));
            },
            buttons: {
                "Xác nhận": function () {
                    $(this).dialog("close");
                },
                "Hủy": function () {
                    //alert(0);
                    $(this).dialog("close");
                }
            }
        });
    }

    function createMedia(productid)
    {
        alert("Create new product media " + productid);
    }
    function editProduct(productid)
    {
        alert("productid " + productid);
    }

</script>  
