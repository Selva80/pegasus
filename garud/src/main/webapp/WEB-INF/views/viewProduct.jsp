

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file ="header.jsp" %>
 
<html>

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
		
    <div class="row col-md-5 col-md-offset-2 custyle">
    <div class="panel panel-primary">
<div class="panel-heading">
		        <h3>Product Details of ${product.pname}
		        </h3>
		    </div>
    <table class="table table-striped custab" >
    
    <tr>
    <th class="sel">Product Id</th>
    <td>${product.pid }</td>
    </tr>
    <tr>
    <th class="sel">Product Name</th>
    <td>${product.pname }</td>
    </tr>
    <tr>
    <th class="sel">Image</th>
    <td><div class="col-md-12 product-men ">
    
    
    <div id="myCarousel" class="carousel slide gallery2" data-ride="carousel">
 
    <div class="carousel-inner gallery">
    <div class="item active ">
    <div ><img src="${pageContext.request.contextPath }/resources/images/product/${product.pid}_0.png"></div>
    </div>
    <div class="item ">
    <div><img  id="zoom" src="${pageContext.request.contextPath }/resources/images/product/${product.pid}_1.png"></div>
    </div>
    <div class="item ">
    <div ><img src="${pageContext.request.contextPath }/resources/images/product/${product.pid}_2.png" id="zoom"></div>
    </div>
    </div>
    
    
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
    </td>
    </tr>
    <tr>
    <th class="sel">Product Description</th>
    <td colspan="2">${product.pdesc }</td>
    </tr>
    <tr>
    <th class="sel">Product Manufacturer</th>
    <td>${product.manufacture }</td>
    </tr>
    <tr>
    <th class="sel">Product In Stock</th>
    <td>${product.inStock }</td>
    </tr>
    <tr>
    <th class="sel">Product Price per unit</th>
    <td> &#8377; ${product.price }  </td>
    </tr>
    <tr>
    <th class="sel">Product Weight</th>
    <td>${product.pweight }</td>
    </tr>
    <tr>
    <th class="sel">Product Warranty</th>
    <td>${product.pWarranty }</td>
    </tr>
    <tr>
    <th class="sel">Product Colour</th>
    <td>${product.pColor }</td>
    </tr>
    
    <tr>
    <th class="sel">Product Category</th>
    <td>${category.categoryDetails }</td>
    </tr>
    
    
    
    
   
    </table>
    
    
   
    </div>
    </div>
    </div>
    <br>
    <br>
    <br>

</body>
<%@ include file="buy.jsp" %>
<%@ include file="footer.jsp" %>
</html>