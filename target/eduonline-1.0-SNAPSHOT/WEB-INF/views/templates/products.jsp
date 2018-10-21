<%-- 
    Document   : products
    Created on : Jul 28, 2015, 11:03:41 AM
    Author     : nhuongnm
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="products">
     <c:forEach items="${products}" var="product">
         <div class="col-md-4" style="text-align:center">
             <p>${product.name}</p>
             <img src="..." alt="..." class="img-thumbnail">
             <p>${product.type}</p>
             <p>$ ${product.price}</p>
         </div>
     </c:forEach>
</div>
