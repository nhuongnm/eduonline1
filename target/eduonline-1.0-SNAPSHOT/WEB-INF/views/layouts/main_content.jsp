<%-- 
    Document   : main_content
    Created on : Aug 4, 2015, 9:53:15 AM
    Author     : Bach
--%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">         
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Style Bootstrap-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css">
        <!--Style Sheet-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/wrapper.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/logo.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/user.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/menu.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/content.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/header.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/sidebar.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/footer.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/datatable.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/jquery-ui.min.css">
        <!--jQuery Library Core-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/jquery-1.9.1.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/jquery-ui.min.js"></script>
        <!--Java Script Bootstrap-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/bootstrap-3.3.5/js/bootstrap.min.js"></script>
        <!--jQuery by Developer-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/dropdown-menu.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/loadingoverlay.js"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/bootbox.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/bach.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/controller.js"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/datatables.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resource/scripts/tScript.js"></script>        

        <title><tiles:getAsString name="title"/></title>

    </head>
    <body>
        <!--Check login-->

        <!--End Check login-->

        <div id="wrapper">
            <div id="wrapper-1" class="col-md-2">
                <!--Section Logo NCB-->
                <tiles:insertAttribute name="logo" />

                <!--Section thông tin user-->
                <tiles:insertAttribute name="user" />

                <!--Session menu chức năng-->
                <tiles:insertAttribute name="menu" />
                
                <!--Secion footer-->
                <tiles:insertAttribute name="footer" />
            </div><!--End div#wrapper-1-->

            <div id="wrapper-2" class="col-md-10">
                <!--Section Header-->
                <tiles:insertAttribute name="header" />

                <div id="wrapper-2-1">
                    <!--Section content-->
                    <div id="content" class="col-md-12">
                        <tiles:insertAttribute name="content" />
                    </div>                    
                    
                </div>
                <div class="clearfix"></div>
            </div><!--End div#wrapper-2-->
        </div><!--End div#wrapper-->
    </body>
</html>
