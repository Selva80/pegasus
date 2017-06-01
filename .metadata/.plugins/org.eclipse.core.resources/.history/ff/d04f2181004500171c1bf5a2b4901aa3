<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
 
<html>
<head>
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pignose css -->



<!-- //pignose css -->

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- Angular Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<script type="text/javascript">
    $(document).ready(function () {
    	var searchCondition = '${searchCondition}';
        $('.table').DataTable({
          "lengthMenu" : [[7,9,11,-1],[7,9,11,"ALL"]] ,
          "oSearch" : {
        	  "sSearch" : searchCondition
        	  
          }
        }); 
    }); 
</script>
 


</head>
<body >

<br>
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
		 <center>       <h3 style="color:white ">Product Details Lists
		        </h3></center>
		    </div> 
    <thead>
    
        <tr>
           
            <th><big>Product Name</big></th>
             <th><big>Categories</big></th>
            <th><big>Product Price</big></th>
            <th class="text-center"><big>Action</big></th>
        </tr>
    </thead>
    <c:forEach var="p" items="${products}">
   
    <tr>
    	
    	<td>${p.pname}</td>
    	<td>${p.category.categoryDetails}</td>
    	<td>${p.price}</td>
    	<url:url value="/admin/product/allviewproduct/${p.pid }" var="url"></url:url>
    	<url:url value="/admin/product/deleteproduct/${p.pid }" var="url2"></url:url>
    	<url:url value="/admin/product/updateProductById/${p.pid }" var="url3"></url:url>
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
    <div class="container" >
    <div class="row col-md-8 col-md-offset-1 custyle"  >
     <url:url value="/admin/product/addProduct" var="url"></url:url>
    <a type="button" href="${url}" class="btn btn-primary btn-md">Add NEW PRODUCT</a>
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


</html>
