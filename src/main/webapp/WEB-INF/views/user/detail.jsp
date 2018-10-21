<%-- 
    Document   : create-user
    Created on : Jul 27, 2015, 6:08:30 PM
    Author     : nhuongnm
--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>

<form class="form-horizontal" method="get" accept-charset="utf8">    
    <legend><h4 class="text-danger">CHI TIẾT USER</h4></legend>
    <div class="form-group">
        <label class="col-sm-2 control-label">Tên user</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Tên đăng nhập" name="${user.username}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Mật khẩu</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mật khẩu" name="${user.password}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Tên đầy đủ</label>
        <div class="col-sm-5">
            <input class="form-control" placeholder="Tên đầy đủ" name="${user.fullname}"></input>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Địa chỉ Email</label>
        <div class="col-sm-5">
            <input class="form-control" placeholder="Điền địa chỉ email" name="${user.email}"></input>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Số điện thoại</label>
        <div class="col-sm-5">
            <input class="form-control" placeholder="Điền số điện thoại" name="${user.mobile}"></input>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">ghi chú</label>
        <div class="col-sm-5">
            <textarea class="form-control" rows="5" placeholder="Ghi chú" name="${user.note}"></textarea>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-5">
            <button type="submit" class="btn btn-danger">Danh sách</button>            
        </div>
    </div>
</form>

