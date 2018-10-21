<%-- 
    Document   : create-user
    Created on : Jul 27, 2015, 6:08:30 PM
    Author     : nhuongnm
--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>

<form class="form-horizontal" method="get" accept-charset="utf8" modelAttribute="data">    
    <legend><h4 class="text-danger">CHI TIẾT ORDER</h4></legend>
    <div class="form-group">
        <label class="col-sm-2 control-label">userorder </label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Tên" name="${data.userorder}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Shipfrom</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shipfrom}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">shipfromCity</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shipfromCity}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">shipfromDistrict</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shipfromDistrict}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">shipfromStreet</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shipfromStreet}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">shipfromAddress</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shipfromAddress}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Shipto</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shipto}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">shiptoCity</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shiptoCity}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">shiptoDistrict</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shiptoDistrict}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">shiptoStreet</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shiptoStreet}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">shiptoAddress</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shiptoAddress}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">shiptoMobile</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shiptoMobile}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">shiptoContact</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.shiptoContact}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">note</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.note}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">price</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.price}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">quantity</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.quantity}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">orderTime</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.orderTime}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">needShippingTime</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.needShippingTime}">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">status</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.status}">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">narrative</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.narrative}">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-5">
            <button type="submit" class="btn btn-danger">Danh sách</button>            
        </div>
    </div>


    <h4 class="text-danger text-center">DANH SÁCH PRODUCT</h4>
    <table class="table table-bordered" id="tblData">  
        <thead>
            <tr>
                <th class="text-center btn-primary">###</th>
                <th class="text-center btn-primary">Tên</th>
                <th class="text-center btn-primary">Mô tả</th>                            
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${productlist}" var="value" varStatus="stt">     
                <tr>
                    <td class="text-danger text-center">${stt.count}</td>
                    <td class="text-left bold">${value.name}</td>
                    <td class="text-center">${value.description}</td>                                    
                </tr>
            </c:forEach>
        </tbody>
    </table>

</form>

