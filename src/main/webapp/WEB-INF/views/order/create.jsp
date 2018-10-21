<%-- 
    Document   : create-user
    Created on : Jul 27, 2015, 6:08:30 PM
    Author     : nhuongnm
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<c:set var="baseURL" value="${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, pageContext.request.contextPath)}" />

<form class="form-horizontal" modelAttribute="order" method="post" accept-charset="utf8">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <legend><h4 class="text-danger">THÊM MỚI ORDER </h4></legend>

    <div id="tabs">
        <ul>
            <li><a href="#thongtinchung">Thong tin chung</a></li>
            <li><a href="#noichuyen">Thong tin noi chuyen</a></li>
            <li><a href="#noinhan">Dia chi noi nhan</a></li>
            <li><a href="#lienhe">Thong tin lien he noi nhan</a></li>
        </ul>
        <div id="thongtinchung">
            <!--- THONG TIN SHIP-->
            <div class="form-group">
                <label class="col-sm-2 control-label">Nguoi dat</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="Nguoi dat" readonly="true" name="userorder" id="userorder"/>
                    <input type="button" id="btnuser" value="..." />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">price</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="price" name="price"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Quantity</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="Quantity" name="Quantity"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">needShippingTime</label>
                <div class="col-sm-5">
                    <textarea type="text" class="form-control" placeholder="needShippingTime" name="needShippingTime"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">narrative</label>
                <div class="col-sm-5">
                    <textarea type="text" class="form-control" placeholder="narrative" name="narrative"></textarea>
                </div>
            </div>
        </div>
        <div id="noichuyen">
            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromCity</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="shipfromCity" name="shipfromCity"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromDistrict</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="shipfromDistrict" name="shipfromDistrict"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromStreet</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="shipfromStreet" name="shipfromStreet"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">shipfromAddress</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="shipfromAddress" name="shipfromAddress"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Shipfrom</label>
                <div class="col-sm-5">
                    <textarea type="text" class="form-control readonly" placeholder="Shipfrom" name="Shipfrom"></textarea>
                </div>
            </div>
        </div>
        <div id="noinhan">
            <!-- SHIP TO-->    
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoCity</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="shiptoCity" name="shiptoCity"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoDistrict</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="shiptoDistrict" name="shiptoDistrict"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoStreet</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="shiptoStreet" name="shiptoStreet"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoAddress</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="shiptoAddress" name="shiptoAddress"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Shipto</label>
                <div class="col-sm-5">
                    <textarea type="text" class="form-control " placeholder="Noi nhan" name="Shipto"></textarea>
                </div>
            </div>
        </div>
        <div id="lienhe">
            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoMobile</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="shiptoMobile" name="shiptoMobile"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">shiptoContact</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control readonly" placeholder="shiptoContact" name="shiptoContact"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">note</label>
                <div class="col-sm-5">
                    <textarea class="form-control" placeholder="ghi chú" name ="note"></textarea>
                </div>
            </div>
        </div>

    </div>


    <!-- PRODUCT LIST LIST PRODUCT WITH CREATE NEW-->

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-5">
            <button type="submit" class="btn btn-danger">Tạo mới</button>
            <button type="reset" class="btn btn-success">Làm lại</button>
        </div>
    </div>
</form>

<div id="dialog" title="Chọn User" hidden="true">    
</div>


<script type="text/javascript" lang="javascript">
    $(document).ready(function () {
        var url_original = "${baseURL}";
        var list_url = "<c:url value="user/list-result"/>";
        var dialog_height = 400;
        var dialog_width = 660;
        var dialog_minWidth = 650;

        $('#btnuser').click(function ()
        {
            var userid = $('#userorder').val();
            $("#dialog").data('userid', userid);
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
                    $(this).find("input[id=txtselected]").val($(this).data('userid'));
                },
                buttons: {
                    "Xác nhận": function () {
                        var valuex = $(this).find("input[id=txtselected]").val();
                        //alert (valuex);
                        if (valuex !== "")
                        {
                            $('#userorder').val(valuex);
                        }
                        $(this).dialog("close");
                    },
                    "Hủy": function () {
                        //alert(0);
                        $(this).dialog("close");
                    }
                }
            });
        });
        $(function () {
            $("#tabs").tabs();
        });
    });
</script>    