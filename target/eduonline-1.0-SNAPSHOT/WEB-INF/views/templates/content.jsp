<%-- 
    Document   : content
    Created on : Aug 4, 2015, 5:39:31 PM
    Author     : Bach
--%>

<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row-style">
    <div class="item">
        <a href="<c:url value='/paymentOrder/stepone'/>" style="text-decoration: none">
            <div class="image">
                <img src="${pageContext.request.contextPath}/resource/images/thanhtoan.png" alt="">
            </div>
            <p class="text-center">Thanh toán hoá đơn</p>
        </a>
    </div>
    <div class="item">        
        <a href="<c:url value='/paymentOrder/stepone-topup'/>" style="text-decoration: none">
            <div class="image">
                <img src="${pageContext.request.contextPath}/resource/images/naptien.png" alt="">
            </div>
            <p class="text-center">Nạp tiền tài khoản</p>
        </a>
    </div>
    <!--
<div class="item">        
    <a href="<c:url value='/paymentOrder/stepone-smartlink'/>" style="text-decoration: none">
    <div class="image">
        <img src="${pageContext.request.contextPath}/resource/images/chuyentiennhanh.png" alt="">
    </div>
    <p class="text-center">Chuyển khoản nhanh liên ngân hàng</p>
    </a>
</div>
    -->
    <div class="clearfix"></div>
</div>
<div class="row-style">    
    <div class="item">
        <a href="<c:url value='/report/form'/>" style="text-decoration: none">
            <div class="image">
                <img src="${pageContext.request.contextPath}/resource/images/baocao.png" alt="">
            </div>
            <p class="text-center" class="text-center">Báo cáo</p>
        </a>
    </div>
    <div class="item">
        <div class="image">
            <img src="${pageContext.request.contextPath}/resource/images/hotro.png" alt="">
        </div>
        <p class="text-center">Hỗ trợ</p>
    </div>
    <div class="clearfix"></div>
</div>
