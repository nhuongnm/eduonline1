<%-- 
    Document   : create-user
    Created on : Jul 27, 2015, 6:08:30 PM
    Author     : nhuongnm
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>

<form class="form-horizontal" modelAttribute="data" method="post" accept-charset="utf8">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <legend><h4 class="text-danger">THÊM MỚI CATEGORY</h4></legend>
    <div class="form-group">
        <label class="col-sm-2 control-label">Tên</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" placeholder="Tên " name="name">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">mô tả</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" placeholder="Mô tả" name="description">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-5">
            <button type="submit" class="btn btn-danger">Tạo mới</button>
            <button type="reset" class="btn btn-success">Làm lại</button>
        </div>
    </div>
</form>
