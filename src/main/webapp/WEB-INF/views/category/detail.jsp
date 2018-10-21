<%-- 
    Document   : create-user
    Created on : Jul 27, 2015, 6:08:30 PM
    Author     : nhuongnm
--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>

<form class="form-horizontal" method="get" accept-charset="utf8">    
    <legend><h4 class="text-danger">CHI TIẾT CATEGORY</h4></legend>
    <div class="form-group">
        <label class="col-sm-2 control-label">Tên </label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Tên" name="${data.name}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">mô tả</label>
        <div class="col-sm-5">
            <input type="text" class="form-control readonly" placeholder="Mô tả" name="${data.description}">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-5">
            <button type="submit" class="btn btn-danger">Danh sách</button>            
        </div>
    </div>
</form>

