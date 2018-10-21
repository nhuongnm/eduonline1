<%-- 
    Document   : main
    Created on : Jul 28, 2015, 10:43:23 AM
    Author     : nhuongnm
--%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--Style Bootstrap-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css">
	<!--Style Sheet-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/login.css">
	<!--jQuery Library Core-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/jquery-1.9.1.js"></script>
        <!--Java Script Bootstrap-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/bootstrap.min.js"></script>
        
        <title><tiles:getAsString name="title"/></title>    
    </head>
    <body>
        <div class="container" id="wraper">
            <div class="row">
                <tiles:insertAttribute name="header" />
            </div>
            <div class="row">
                <tiles:insertAttribute name="content" />
            </div>
            <div class="row">
                <tiles:insertAttribute name="footer" />
            </div>
	</div><!--End div#wrapper-->       
    </body>
</html>
