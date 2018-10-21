<%-- 
    Document   : create-user
    Created on : Jul 27, 2015, 6:08:30 PM
    Author     : nhuongnm
--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<h1>Hello World! Users Edit</h1>

<form:form modelAttribute="user" method="post">
 <table> 
 <tr>
  <td>username</td>
  <td>
  <form:input path="username"/>
  <form:errors path="username" element="span"/>
  </td>
 </tr>
 <tr>
  <td>fullname</td>
  <td>
  <form:input path="fullname" />
  <form:errors path="fullname" element="span"/>
  </td>
 </tr> 
 <tr>
  <td>email</td>
  <td>
  <form:input path="email" />
  <form:errors path="email" element="span"/>
  </td>
 </tr>
 </table>
 <br/>
 <input type="submit" value="edit" />
</form:form>

<a href="/ncb.pss/user/"> List with condition</a>
<a href="/ncb.pss/user/list"> List without condition</a>

