<%-- 
    Document   : index
    Created on : Jul 25, 2015, 2:40:34 PM
    Author     : nhuongnm
    Edit       : BachLX
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true" %>

<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
    <font color="red">        
        <c:set value="${SPRING_SECURITY_LAST_EXCEPTION.message}" var="message"/>.
    </font>
</c:if>

<form role="form" class="login-form" method="post" action="<c:url value='/login' />">
    <div class="form-group" id="login-form-logo">
        <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
        <img src="${pageContext.request.contextPath}/resource/images/logo_ncb.png" alt="logo NCB">
    </div>
    <div class="form-group">
        <h3 class="login-form-title bold text-center">Đăng nhập dịch vụ (Shipping)</h3>
    </div>    
    <div class="form-group">
        <p class="bold text-danger">${message}</p>
    </div>
    <div class="form-group div-control">
        <input type="text" class="form-control text-center login-form-control" name="username" placeholder="Nhập tài khoản/Email">
    </div>
    <div class="form-group div-control">
        <input type="password" class="form-control text-center login-form-control" name="password" placeholder="Nhập mật khẩu">
    </div>
    <div class="form-group div-control">
        <button type="submit" id="login-form-submit" class="btn btn-danger bold">Đăng nhập</button>
    </div>
</form>
