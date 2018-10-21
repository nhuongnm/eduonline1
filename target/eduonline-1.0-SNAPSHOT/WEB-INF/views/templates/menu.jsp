<%-- 
    Document   : menu
    Created on : Aug 4, 2015, 3:18:53 PM
    Author     : Bach
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<security:authorize access="hasAuthority('ROLE_USER')" var="isKSV">    
</security:authorize>
<security:authorize access="hasAuthority('GDV')" var="isGDV">    
</security:authorize>
<security:authorize access="hasAuthority('HOISO')" var="isHOISO">    
</security:authorize>
<security:authorize access="hasAuthority('ADMIN')" var="isADMIN">    
</security:authorize>
<security:authorize access="hasAuthority('AUTHENTICATED')" var="isAUTHEN">    
</security:authorize>

<div id="menu">
    <ul>
        <li class=""><!--sử dụng class active để hightlight menu-->
            <a href='<c:url value="/"/>'><span>Trang chủ</span></a>
        </li>
        <li class=""><!--sử dụng class active để hightlight menu-->            
        </li> 
        <c:if test="${isGDV}">
            <li class="has-sub">
                <a href='#'><span>Giao dịch viên</span></a>
                <ul>
                    <li><a href="<c:url value='/paymentOrder/stepone'/>"><span>Thanh toán hoá đơn</span></a></li>
                    <li><a href="<c:url value='/paymentOrder/stepone-topup'/>"><span>Nạp tiền tài khoản</span></a></li>                    
                    <!--
                    <li><a href="<c:url value='/paymentOrder/stepone-smartlink'/>"><span>Chuyển tiền nhanh LNH</span></a></li>                    
                    -->
                </ul>
            </li>                
        </c:if>
        <c:if test="${isKSV}">
            <li class="has-sub">
                <a href='#'><span>Kiểm soát viên</span></a>
                <ul>
                    <li><a href="<c:url value="/transcation/listByBranch"></c:url>"><span>Duyệt giao dịch</span></a></li>
                    </ul>
                </li>
        </c:if>        
        <li><a href='<c:url value="/order/list"></c:url>'><span>Danh sách giao dịch</span></a></li>
        <li><a href='<c:url value="/product/list"></c:url>'><span>Danh sách Hàng hóa</span></a></li>

            <li><a href="<c:url value="/report/form"/>"><span>Báo cáo</span></a></li>
            <li class="has-sub">
                <a href='#'><span>Tiện ích - Hỗ trợ</span></a>
                <ul>
                    <li><a href="<c:url value = "/resource/report/eps_hdsd.pdf"/>" target = 'blank'><span>Hướng dẫn sử dụng</span></a></li>
                    <!--
                    <li><a href="#"><span>Đổi mật khẩu</span></a></li>
                    -->
                </ul>
            </li>
        <c:if test="true">
            <li class="has-sub">
                <a href='#'><span>Quản trị & Phân quyền</span></a>
                <ul>
                    <li><a href="<c:url value="/user/list"/>"><span>Người dùng</span></a></li>
                    <li><a href="<c:url value="/category/list"/>"><span>Loai san pham</span></a></li>                    
                </ul>
            </li>            
        </c:if>
    </ul>
</div><!--End div#menu-->
