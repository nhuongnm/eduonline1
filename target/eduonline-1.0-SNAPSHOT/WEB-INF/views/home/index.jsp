<%-- 
    Document   : index
    Created on : Jul 25, 2015, 2:40:34 PM
    Author     : nhuongnm
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true" %>

<h2>INDEX</h2>
<a href="<c:url value="/user"/>">List User</a>
<a href="<c:url value="/user/create"/>">Create User</a>
<a href="<c:url value="/group"/>">list group</a>
