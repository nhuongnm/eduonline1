<%-- 
    Document   : create-user
    Created on : Jul 27, 2015, 6:08:30 PM
    Author     : nhuongnm
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>

<form class="form-horizontal" modelAttribute="product" method="post" accept-charset="utf8">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <legend><h4 class="text-danger">THÊM MỚI PRODUCT</h4></legend>
    <h1>${message}</h1>
    <div class="form-group">
        <label class="col-sm-2 control-label">orderid</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" readonly="true" placeholder="orderid " name="orderid" value="${product.orderid}">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Tên</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" placeholder="Tên " name="name" value ="${product.name}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">mô tả</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" placeholder="Mô tả" name="description">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">weight</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" placeholder="weight" name="weight">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">height</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" placeholder="height" name="height">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">wide</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" placeholder="wide" name="wide">
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">length</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" placeholder="length" name="length">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">note</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" placeholder="note" name="note">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Category</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" placeholder="Category" name="category">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-5">
            <button type="submit" class="btn btn-danger">Tạo mới</button>
            <button type="reset" class="btn btn-success">Làm lại</button>
        </div>
    </div>
</form>
