<%-- 
    Document   : user
    Created on : Aug 4, 2015, 3:16:17 PM
    Author     : Bach
--%>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="user">
    <div id="avatar">
        <p class="text-center">
            <span class="btn btn-lg glyphicon glyphicon-user"></span>
        </p>
    </div>
    <div id="info">
        <p class="text-center"><span>${userProfile.user.username}</span></p>
        <p class="text-center">${userProfile.user.fullname}</p>
    </div>
</div><!--End div#user-->    