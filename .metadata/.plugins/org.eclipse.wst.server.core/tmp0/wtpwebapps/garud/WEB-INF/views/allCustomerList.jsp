<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ include file="header.jsp" %>
<html>
<head>


 


</head>
<body >

<br>
<br>
<br>
<br>
<br>
<div  >
<div class="container" >
    <div class="row col-md-14 col-md-offset-0 custyle"  >
    <table class="table table-striped custab"  id="#table_id">
      <div class="panel-heading" style="background-color: blue">
		<center>        <h3 style="color:white;">List of Customers
		        </h3></center>
		    </div> 
    <thead>
    
        <tr>
            <th><big>Customer Id</big></th>
            <th><big>Customer Name</big></th>
            <th><big> Contact Number</big></th>
            <th><big>User Name</big></th>
            <th class="text-center"><big>Action</big></th>
        </tr>
    </thead>
    <c:forEach var="c" items="${customerList }">
    <tr>
    	<td>${c.custId}</td>
    	<td>${c.cFirstName}</td>
    	<td>${c.phone}</td>
    	<td>${c.users.username}</td>
    	<url:url value="/customer/Details/${c.custId }" var="url"></url:url>
    	<url:url value="/admin/customer/delete/${c.custId }" var="url2"></url:url>
    	<url:url value="/user/customer/update/${c.custId }" var="url3"></url:url>
    	<td class="text-center">
    	<a class='btn btn-info btn-xs' href="${url}"><span class="glyphicon glyphicon-info-sign"></span> Info</a> 
    	<a href="${url2}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a>
    	<a href="${url3}" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span> edit</a>
    	</td>
    </tr>
    </c:forEach>
    </table>
    
    </div>
    </div>
    </div>
    <br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</body>

<%@ include file="footer.jsp" %>
</html>
