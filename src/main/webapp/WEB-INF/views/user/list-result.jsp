<%-- 
    Document   : list
    Created on : Jul 25, 2015, 11:29:01 AM
    Author     : nhuongnm
--%>

<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h4 class="text-danger text-center">DANH SÁCH NHÂN VIÊN</h4>
<input type ="text" id = "txtselected" value="" readonly="true"/>
<table class="table table-bordered" id="tblData">  
    <thead>
        <tr>
            <th class="text-center btn-primary">###</th>
            <th class="text-center btn-primary">Tên đăng nhập</th>
            <th class="text-center btn-primary">Thông tin nhân viên</th>
            <th class="text-center btn-primary">Email</th>            
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${data}" var="value" varStatus="stt">     
            <tr>
                <td class="text-danger text-center">${stt.count}</td>
                <td class="text-left bold">${value.username}</td>
                <td class="text-center">${value.fullname}</td>
                <td class="text-center">${value.email}</td>                           
            </tr>            
        </c:forEach>
    </tbody>
</table>

<script>
    $(document).ready(function () {
        var table = $('#tblData').DataTable(master.templatePaginate);
        $('#tblData tbody').on('click', 'tr', function () {
            if ($(this).hasClass('selected')) {
                $(this).removeClass('selected');
            } else {
                table.$('tr.selected').removeClass('selected');
                $(this).addClass('selected');
                //alert(table.cell( this,0 ).data());
                $('#txtselected').val(table.cell(this, 0).data());
            }
        });
       // $('#btnOK').click(function () {
      //      alert($('#txtselected').val());
            //table.row('.selected').remove().draw( false );
       // });
    });
</script>      
