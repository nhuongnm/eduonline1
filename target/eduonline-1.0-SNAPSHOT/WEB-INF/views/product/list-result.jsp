<%-- 
    Document   : list
    Created on : Jul 25, 2015, 11:29:01 AM
    Author     : nhuongnm
--%>

<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h4 class="text-danger text-center">DANH SÁCH PRODUCT</h4>
<input type ="text" id = "txtselected" value="" readonly="true"/>
<table class="table table-bordered" id="tblDataProduct">  
    <thead>
        <tr>
            <th class="text-center btn-primary">###</th>
            <th class="text-center btn-primary">Key</th>
            <th class="text-center btn-primary">Tên</th>
            <th class="text-center btn-primary">Mô tả</th>                        
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${data}" var="value" varStatus="stt">     
            <tr>
                <td class="text-danger text-center">${stt.count}</td>
                <td class="text-danger text-center">${value.id}</td>
                <td class="text-left bold">${value.name}</td>
                <td class="text-center">${value.description}</td>                                
            </tr>
            
        </c:forEach>
    </tbody>
</table>

<script>
    
    //$('#tblData').DataTable(master.templatePaginate);
    $(document).ready(function () {
        var table = $('#tblDataProduct').DataTable(master.templatePaginate);
        $('#tblDataProduct tbody').on('click', 'tr', function () {
            if ($(this).hasClass('selected')) {
                $(this).removeClass('selected');
            } else {
                table.$('tr.selected').removeClass('selected');
                $(this).addClass('selected');
                //alert(table.cell( this,0 ).data());
                $('#txtselected').val(table.cell(this, 1).data());
            }
        });
       // $('#btnOK').click(function () {
      //      alert($('#txtselected').val());
            //table.row('.selected').remove().draw( false );
       // });
    });
</script>      
