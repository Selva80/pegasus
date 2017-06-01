


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>


<head>
<%@ include file="header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pegasus</title>

<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/Pegasus.png" />

	
</head>
<body > 

<br><br><br>

<div class="container"  >
<div class="main-login main-center" style="border-color: blue">
<div class="panel panel-primary">
<div class="panel-heading">
		        <h2>
		        Product Form
		        </h2>
		        </div>
		        </div>
<url:url var="url" value="/admin/product/saveProduct"></url:url>
<form:form action="${url}"  class="form-horizontal" modelAttribute="product" method="post"  enctype="multipart/form-data">


<div class="row main">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<label for="pid"></label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:hidden path="pid" ></form:hidden>
			</div>
			
			
		</div>
		
			<div class="form-group">
							<label for="pname" class="cols-sm-2 control-label"><big>Enter the Name of the Product</big></label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" ></i></span>
									<form:input  class="form-control" path="pname"   placeholder="Enter Product Name"/>
									<form:errors path="pname" cssStyle="color:red"></form:errors>
								</div>
							</div>
						</div>
		
	
		<div class="form-group">
							<label for="pdesc" class="cols-sm-2 control-label"><big>Enter the Description of the Product</big></label>
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-product-hunt" ></i></span>
									<form:input  class="form-control" path="pdesc"   placeholder="Enter Description"/>
									<form:errors path="pdesc" cssStyle="color:red"></form:errors>
								</div>
							</div>
						
						</div>
						<div class="form-group">
							<label for="manufacture" class="cols-sm-2 control-label"><big>Enter the manufacture of the Product</big></label>
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-home" ></i></span>
									<form:input  class="form-control" path="manufacture"   placeholder="Enter manufacture"/>
									<form:errors path="manufacture" cssStyle="color:red"></form:errors>
								</div>
							</div>
						
						</div>
		
		
		<div class="form-group">
							<label for="inStock"   class="cols-sm-2 control-label"><big>Enter the number of the Product in Stock </big></label>
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-list-ol" ></i></span>
									<form:input  class="form-control" path="inStock"  placeholder="Enter product in stock"/>
									<form:errors path="inStock" cssStyle="color:red"></form:errors>
								</div>
							</div>
						
						</div>
		<div class="form-group">
							<label for="price" class="cols-sm-2 control-label"><big>Enter the price of the Product</big></label>
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-money" ></i></span>
									<form:input  class="form-control" path="price"   placeholder="Enter price"/>
									<form:errors path="price" cssStyle="color:red"></form:errors>
								</div>
							</div>
						
						</div>
						
						
					
						<div class="form-group">
							<label for="pweight" class="cols-sm-2 control-label"><big>Enter the Weight of the Product</big></label>
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-cubes" ></i></span>
									<form:input  class="form-control" path="pweight"   placeholder="Enter Weight"/>
									<form:errors path="pweight" cssStyle="color:red"></form:errors>
								</div>
							</div>
						
						</div>
						<div class="form-group">
							<label for="pWarranty" class="cols-sm-2 control-label"><big>Enter the Warranty of the Product</big></label>
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-clock-o" ></i></span>
									<form:input  class="form-control" path="pWarranty"   placeholder="Enter Warranty"/>
									<form:errors path="pWarranty" cssStyle="color:red"></form:errors>
								</div>
							</div>
						
						</div>
						<div class="form-group">
							<label for="pColor" class="cols-sm-2 control-label"><big>Enter the Colour of the Product</big></label>
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-pencil-square" ></i></span>
									<form:input  class="form-control" path="pColor"   placeholder="Enter Colour"/>
									<form:errors path="pColor" cssStyle="color:red"></form:errors>
								</div>
							</div>
						
						</div>
						<div class="form-group">
<label for="category"><big>Select Category</big></label>
<c:forEach items="${categories }" var="c">
 &nbsp;&nbsp;&nbsp;
<form:radiobutton path="category.cid" value="${c.cid }"/> &nbsp;${c.categoryDetails }

</c:forEach>
<form:errors path="category" cssStyle="color:red"></form:errors>
</div>
						
						
						<div class="form-group">
						<label for="image" class="cols-sm-2 control-label"><big>Upload Image 1</big></label>
						<div class="cols-sm-10">
								<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-picture-o" ></i></span>
							
								<form:input type="file" path="image" />
								</div>
								</div>
								<label for="image" class="cols-sm-2 control-label"><big>Upload Image 2</big></label>
						<div class="cols-sm-10">
								<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-picture-o" ></i></span>
							
								<form:input type="file" path="image" />
								</div>
								</div>
								<label for="image" class="cols-sm-2 control-label"><big>Upload Image 3</big></label>
						<div class="cols-sm-10">
								<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-picture-o" ></i></span>
							
								<form:input type="file" path="image" />
								</div>
								</div>
								<label for="image" class="cols-sm-2 control-label"><big>Upload Image 4</big></label>
						<div class="cols-sm-10">
								<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-picture-o" ></i></span>
							
								<form:input type="file" path="image" />
								</div>
								</div>
								</div>
						
							
							
								<div class="form-group ">
							<button type="submit"  class="btn btn-primary btn-lg btn-block login-button">Add Product</button>
						</div>


</form:form>

<br>
<br>
<br>
<br>
</div>

</div>  
	

</body>
</html>
<%@ include file="footer.jsp" %>