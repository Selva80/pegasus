

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 
<html>
<%@ include file="header.jsp" %>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pegasus</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/viewProduct.css">
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<div class="container">
		
    <div class="row col-md-10 col-md-offset-0 custyle">
    <div class="panel panel-primary">
<div class="panel-heading">
		        <h3>Personal Details of ${customer.cFirstName}
		        </h3>
		    </div>
    <table class="table table-striped custab" >
      <tr>
        
    <th class="sel">Customer Id</th>
    <th class="sel"> First Name</th>
    <th class="sel"> Last Name</th>
    <th class="sel">Email Address</th>
    <th class="sel">Phone Number</th>
    <th class="sel">User Name</th>
    </tr>
    <tr>
    
    <td>${customer.custId }</td>
    <td>${customer.cFirstName }</td>
    <td >${customer.cLastName }</td>
    <td>${customer.cEmail }</td>
    <td>${customer.phone }</td>
    <td>${customer.users.username }</td>
    </tr>
    </table>
    </div>
    </div>
    
 <br>
 <br>
 <br>
 <div class="row col-md-10 col-md-offset-0 custyle">
 <div class="panel panel-primary">
<div class="panel-heading">
		        <h3>Billing Address
		        </h3>
		    </div>
    <table class="table table-striped custab" >
    <tr>
    
    <th class="sel">Apartment Number</th>
     <th class="sel">Steet Name</th>
     <th class="sel">City</th>
     <th class="sel">Country</th>
     <th class="sel">Pincode</th>
     
    
    </tr>
    <tr>
    
    <td>${customer.billingAddress.apartmentnumber}</td>
    <td>${customer.billingAddress.streetname }</td>
    <td>${customer.billingAddress.city }</td>
    <td>${customer.billingAddress.country }</td>
    <td>${customer.billingAddress.zipcode }</td>
    </tr>
    
    </table>
    </div>
    </div>
    <div class="row col-md-10 col-md-offset-0 custyle">
 <div class="panel panel-primary">
<div class="panel-heading">
		        <h3>Shipping Address
		        </h3>
		    </div>
    <table class="table table-striped custab" >
    <tr>
    
    <th class="sel">Apartment Number</th>
     <th class="sel">Steet Name</th>
     <th class="sel">City</th>
     <th class="sel">Country</th>
     <th class="sel">Pincode</th>
     
    
    </tr>
    <tr>
    
    <td>${customer.shippingAddress.apartmentnumber}</td>
    <td>${customer.shippingAddress.streetname }</td>
    <td>${customer.shippingAddress.city }</td>
    <td>${customer.shippingAddress.country }</td>
    <td>${customer.shippingAddress.zipcode }</td>
    </tr>
    
    </table>
    </div>
    </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    
    
</body>
<%@ include file="buy.jsp" %>
<!-- footer -->
<%@ include file="footer.jsp" %>
</html>