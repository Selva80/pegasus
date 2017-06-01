<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="url" uri="http://www.springframework.org/tags" %>
	<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="header.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<div class="checkout">
		<div class="container">
			<h3>My Shopping Bag</h3>
			<div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>Product Image</th>
							<th>Product Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Total Amount of your All product</th>
							<th>Operations</th>
						</tr>
					</thead>
					<c:forEach items="${cartList}" var="cart">
					<tr class="rem1">
						
						 <td><div class="gallery"><img src="${pageContext.request.contextPath }/resources/images/product/${cart.productId}_0.png" alt=" " width="300" height="150" /></div></td>
						<td class="invert">${cart.productName}</td>
						<td class="invert"> &#8377;${cart.rate}</td>
						<td class="invert">${cart.quantity}</td>
						<td class="invert"> &#8377; ${cart.amount}</td>
						<td>
						<url:url value="/allviewproduct/${cart.productId}" var="url"></url:url>
						<url:url value="/user/deleteFromCart/${cart.cartItemId}" var="url1"></url:url>
			<a href="${url}" class="btn btn-info"  title="View Product Full Details" role="button"><i class="fa fa-eye" aria-hidden="true"></i>info</a>
			<a href="${url1}" class="btn btn-danger" title="Remove item from cart" role="button"><i class="fa fa-times fa-1x" aria-hidden="true"></i>del</a>
		</td>
					</c:forEach>
				</table>
			</div>
			<div class="checkout-left">

				<div class="checkout-right-basket animated wow slideInRight"
					data-wow-delay=".5s">
					<a href="mens.html"><span class="glyphicon glyphicon-menu-left"
						aria-hidden="true"></span>Back To Shopping</a>
				</div>
				<div class="checkout-left-basket animated wow slideInLeft"
					data-wow-delay=".5s">
					<h4>Shopping basket</h4>
					<ul>
					<c:forEach items="${cartList}" var="cart">
						<li>${cart.productName}<i>-</i> <span>&#8377; ${cart.amount}</span></li>
						</c:forEach>
						<li>Total <i>-</i> <span></span></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${cartListByJson}
});
</script> 
</body>
<%@ include file="buy.jsp" %>
<%@ include file="footer.jsp" %>
</html>