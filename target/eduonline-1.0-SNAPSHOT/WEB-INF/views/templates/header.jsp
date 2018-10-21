<%-- 
    Document   : header
    Created on : Aug 4, 2015, 5:33:31 PM
    Author     : BachLX
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>

<div id="header">
    <div id="header-title" class="col-md-10">
        <h4>Dịch vụ vận chuyển hàng hóa</h4>
        <p>Đăng nhập lần cuối : <span>${userProfile.user.lastlogin}</span></p>
    </div><!--End div#header-title-->
    <div id="logout" class="col-md-2">
        <div id="logout-child">
            <a href="<c:url value="/logout" />">
                <span>Đăng xuất</span>
                <img src="${pageContext.request.contextPath}/resource/images/logout.jpg" alt="logout" />
            </a>									
        </div>
    </div><!--End div#logout-->
    <div class="clearfix"></div>
</div><!--End div#header-->