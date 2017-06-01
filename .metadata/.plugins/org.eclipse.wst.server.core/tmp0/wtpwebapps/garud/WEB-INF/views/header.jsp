<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pignose css -->
<link href="${pageContext.request.contextPath }/resources/css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />


<!-- //pignose css -->
<link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart -->
	<script src="${pageContext.request.contextPath }/resources/js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->

<script src="${pageContext.request.contextPath }/resources/js/jquery.easing.min.js"></script>
</head>
<body>

<div class="header">
	<div class="container">
		<ul >
			<li style="color:black"><span class="glyphicon glyphicon-time" aria-hidden="true"></span>Free and Fast Delivery</li>
			<li style="color:black" ><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Free shipping On all orders</li>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">			
 <li><a href="">Welcome ${pageContext.request.userPrincipal.name } </a>
 </c:if>	
				
			
		</ul>
	</div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
	<div class="container">
		<div class="col-md-1 header-left">
			<h1><img src="${pageContext.request.contextPath }/resources/images/pg1.png"></h1>
		</div>
		<div class="col-md-1 header-left">
			<h2><a href="#">PEGASUS</a></h2>
		</div>
		
		
			
			
			<div class="col-md-6 header-right">
			<form class="navbar-form navbar-right">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
			
		</div>
		
			<div class="col-md-3 header-right ">
			<div class="form-group">
			<a target="_blank" title="find us on Facebook" href="http://www.facebook.com/PLACEHOLDER"><img alt="follow me on facebook" src="//login.create.net/images/icons/user/facebook_30x30.png" border=0></a>
			<a target="_blank" title="follow me on twitter" href="http://www.twitter.com/PLACEHOLDER"><img alt="follow me on twitter" src="//login.create.net/images/icons/user/twitter_30x30.png" border=0></a>
			<a target="_blank" title="follow me on twitter" href="http://www.twitter.com/PLACEHOLDER"><img alt="follow me on twitter" src="//login.create.net/images/icons/user/twitter-b_30x30.png" border=0></a> 
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav menu__list">
				  <url:url value="/home" var="url"></url:url>
					<li class="active menu__item menu__item--current"><a class="menu__link" href="${url}">Home <span class="sr-only">(current)</span></a></li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<url:url value="/admin/supplier/supplierPage" var="url1"></url:url>
					<li class=" menu__item"><a class="menu__link"  href="${url1 }">Supplier Details</a></li>
					<url:url value="/admin/product/productList" var="url"></url:url>
			<li class=" menu__item"><a class="menu__link" href="${url }">view Products</a></li>
			<url:url value="/admin/product/addProduct" var="url"></url:url>
			<li class=" menu__item"><a class="menu__link" href="${url }" style="color: white">Add Product</a></li>
					<url:url value="/admin/CustomerDetails" var="url"></url:url>
			<li class=" menu__item"><a class="menu__link" href="${url }" style="color: white">Customers List</a></li>
					</security:authorize>
					<url:url  value="/electronics" var="url"></url:url>
					<li class=" menu__item"><a class="menu__link" href="${url }">Electronics</a></li>
					
					
					
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<li class="dropdown menu__item">
			<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown">
                     Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<c:forEach var="c" items="${categories }">
			<li>
<a href="<c:url value="/admin/product/productsByCategory?searchCondition=${c.categoryDetails }"></c:url>" >
  ${c.categoryDetails }</a></li>
  <br>
			</c:forEach>
			</ul>
			</li>
			</security:authorize>
			
					
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">men's wear <span class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
										<a href="mens.html"><img src="${pageContext.request.contextPath }/resources/images/woo1.jpg" alt=" "/></a>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
										<li><br></li>
											<li><a href="mens"> formal-Shirts</a></li>
											<li></li>
											<li><a href="mens"> casual-Shirts</a></li>
											<li></li>
											<li><a href="mens.html">Trousers</a></li>
											<li></li>
											<li><a href="mens.html">T-Shirts</a></li>
											<li></li>
											
											
										</ul>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
										<li><br></li>
										<li><a href="mens.html">Denims</a></li>
											<li></li>
											<li><a href="mens.html">Accessories</a></li>
											<li></li>
											<li><a href="mens.html">Shoes</a></li>
											<li></li>
											<li><a href="mens.html">watches</a></li>
											<li></li>
																						</ul>
											</div>
									
									<div class="clearfix"></div>
								</div>
							</ul>
					</li>
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">women's wear <span class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><br></li>
											<li><a href="mens">Sarees</a></li>
											<li></li>
											<li><a href="mens">Shirts</a></li>
											<li></li>
											<li><a href="mens.html">Traditional</a></li>
											<li></li>
											<li><a href="mens.html">T-Shirts</a></li>
											<li></li>
										</ul>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><br></li>
										<li><a href="mens.html">Denims</a></li>
											<li></li>
											<li><a href="mens.html">Accessories</a></li>
											<li></li>
											<li><a href="mens.html">Shoes</a></li>
											<li></li>
											<li><a href="mens.html">watches</a></li>
											<li></li>
										</ul>
									</div>
									<div class="col-sm-6 multi-gd-img multi-gd-text ">
										<a href="womens.html"><img src="${pageContext.request.contextPath}/resources/images/woo.jpg" alt=" "/></a>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul>
					</li>
			
					
					
					
					
					
					<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<li class=" menu__item"><a class="menu__link"  href="<c:url value="/j_spring_security_logout"></c:url>"><span class="glyphicon glyphicon-log-out"></span> logout</a></li>
					</c:if>
					
			
					
					<c:if test="${pageContext.request.userPrincipal.name==null }">
					<url:url value="/registerform" var="url"></url:url>
					 <li class=" menu__item" ><a class="menu__link" href="${url }"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li></a></li>
					 </c:if>
					 
					<url:url value="/login" var="url"></url:url>
					<c:if test="${pageContext.request.userPrincipal.name==null }">
				<li class=" menu__item"><a class="menu__link"  href="${url }" class="user" ><span class="glyphicon glyphicon-log-in"></span> Login</a>
				</li></c:if>
			
		
				  </ul>
				</div>
			  </div>
			</nav>	
		</div>
		<security:authorize access="hasRole('ROLE_USER')">
		
		<div class="top_nav_right">
		
			<div class="cart box_1">
			<url:url var="url" value="/checkout"></url:url>
						<a href="${url}">
							<h3> <div class="total">
								<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
								<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
								
							</h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
						
						
			</div>
				
		</div>
		</security:authorize>
		
		<div class="clearfix"></div>
	</div>
</div>
</body>
</html>