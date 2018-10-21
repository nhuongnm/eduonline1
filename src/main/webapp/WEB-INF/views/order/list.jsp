<%-- 
    Document   : list
    Created on : Jul 25, 2015, 11:29:01 AM
    Author     : nhuongnm
--%>

<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="form-group">
    <a href="<c:url value="/order/create"/>"><button type="button" class="btn btn-danger">Thêm</button></a>
</div>

<h4 class="text-danger text-center">DANH SÁCH ĐƠN HÀNG</h4>
<table class="table table-bordered" id="tblData">  
    <thead>
        <tr>
            <th class="text-center btn-primary">###</th>
            <th class="text-center btn-primary">người đặt</th>
            <th class="text-center btn-primary">Shipfrom</th>     
            <th class="text-center btn-primary">shipfromCity</th>
            <th class="text-center btn-primary">Shipto</th>
            <th class="text-center btn-primary">shiptoCity</th>
            <th class="text-center btn-primary">shiptoContact</th>
            <th class="text-center btn-primary">shiptoMobile</th>
            <th class="text-center btn-primary">status</th>    
            <th class="text-center btn-primary">Action</th>    
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${data}" var="value" varStatus="stt">     
            <tr>
                <td class="text-danger text-center">${stt.count}</td>
                <td class="text-left bold">${value.userorder}</td>
                <td class="text-center">${value.shipfrom}</td>                
                <td class="text-center">${value.shipfromCity}</td>                
                <td class="text-center">${value.shipto}</td>                
                <td class="text-center">${value.shiptoCity}</td>                
                <td class="text-center">${value.shiptoContact}</td>                
                <td class="text-center">${value.shiptoMobile}</td>                
                <td class="text-center">${value.status}</td>                
                <td class="text-center">
                    <a href="<c:url value="/order/view/${value.id}"/>" rel="tooltip" title="xem">
                        <span class="btn-success btn-sm glyphicon glyphicon-wrench"></span>
                    </a>
                </td>
            </tr>            
        </c:forEach>
    </tbody>
</table>

<script>
    $('#tblData').DataTable(master.templatePaginate);    
</script>      
