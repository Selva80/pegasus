<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="header.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container" style="margin-top: 20px">
		
<div class="panel panel-default">
    <div class="panel-heading text-center">
		<h1>Supplier Form</h1>
 	</div>
 <br>	 
 <div class="panel-body form">
 <url:url value="/admin/supplier/addSupplier" var="url"></url:url>
<form:form modelAttribute="supplier" action="${url }">
		<form:input type="hidden" path="supplierId" placeholder="Supplier Id" /> 
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierName">Enter Supplier Name</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:input class="form-control" path="supplierName" placeholder="Supplier Name" autofocus="true"/>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:errors path="supplierName" cssClass="error" />
		</div>	
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierDescription">Enter Description of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<form:input class="form-control" path="supplierDescription" placeholder="Supplier Description" />
		</div>	
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierDescription" cssClass="error" />
		</div>	
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierLandmark">Enter Landmark of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<form:input class="form-control" path="supplierLandmark" placeholder="Supplier Landmark" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierLandmark" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierStreet">Enter Street of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:input class="form-control" path="supplierStreet" placeholder="Supplier Street" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<form:errors path="supplierStreet" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierCity">Enter City of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:input class="form-control" path="supplierCity" placeholder="Supplier City" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<form:errors path="supplierCity" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierState">Enter State of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:input class="form-control" path="supplierState" placeholder="Supplier State" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierState" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierCountry">Enter Country of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:input class="form-control" path="supplierCountry" placeholder="Supplier Country" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierCountry" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierEmail">Enter Email of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:input class="form-control" path="supplierEmail" placeholder="Supplier Email" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierEmail" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierContactNo">Enter Contact Number of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:input class="form-control" path="supplierContactNo" placeholder="Supplier Contact Number" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierContactNo" cssClass="error" />
		</div>	
	</div>
	<br>
	<div class="row">
		<div class="text-center col-xs-12 col-sm-12 col-md-12">
			<button class="btn btn-success" type="submit" >${btnLabel} <span class="glyphicon glyphicon-plus"></span></button>
			<button class="btn btn-danger" type="reset" >Reset <span class="glyphicon glyphicon-repeat"></span></button>
		</div>
	</div>
</form:form>
 </div>
 </div>

<hr style="height:2px;border-width:0;color:gray;background-color:gray">

<!-- Supplier List -->

<div>
<div class="panel panel-default">
    <div class="panel-heading text-center">
 		<h1>Supplier List</h1>
 	</div>
 <br>
 <div class="panel-body table-responsive">
  <div class="row">
 	<div class="col-xs-12 col-md-4 col-sm-4">
 		<input class="form-control" type="text"  ng-model="search" placeholder="search..." /> 		
 	</div>
 </div>
 <br>
<table class="table" ng-controller="myController" >
<thead>
	<tr>
		<th role="button" ng-click="orderByMe('supplierName')">Name <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i></th>
		<th role="button" ng-click="orderByMe('supplierDescription')"><center>Description <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i></center></th>
		<th role="button" ng-click="orderByMe('supplierLandmark')">Landmark </th>
		<th role="button" ng-click="orderByMe('supplierStreet')">Street <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i></th>
		<th role="button" ng-click="orderByMe('supplierCity')">City <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i></th>
		<th role="button" ng-click="orderByMe('supplierState')">State <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i></th>
		<th role="button" ng-click="orderByMe('supplierCountry')">Country </th>
		<th role="button" ng-click="orderByMe('supplierEmail')">Email <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i></th>
		<th role="button" ng-click="orderByMe('supplierContactNo')">Contact Number <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i></th>
		<th>Operations</th> 
	</tr>
</thead>
<tbody>
<c:forEach  var="supplierList" items="${supplierList}">
	<tr >
		<td>${supplierList.supplierName}</td>
		<td>${supplierList.supplierDescription}</td>
		<td>${supplierList.supplierLandmark}</td>
		<td>${supplierList.supplierStreet}</td>
		<td>${supplierList.supplierCity}</td>
		<td>${supplierList.supplierState}</td>
		<td>${supplierList.supplierCountry}</td>
		<td>${supplierList.supplierEmail}</td>
		<td>${supplierList.supplierContactNo}</td>		<url:url value="/admin/supplier/updateSupplierById/${supplierList.supplierId}" var="url1"></url:url><url:url value="/admin/supplier/deleteSupplierById/${supplierList.supplierId}" var="url"></url:url>
		<td><a href="${url1 }" class="btn btn-warning" data-toggle="tooltip" title="edit" role="button"><i class="fa fa-pencil-square" aria-hidden="true">edits</i></a>
	<a href="${url }" class="btn btn-danger" data-toggle="tooltip" title="Delete" role="button"><i class="fa fa-trash fa-lg" aria-hidden="true">delete</i></a></td>
	</tr>
	</c:forEach>
</tbody>
</table>
 </div>
</div>
</div>
</div>
<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${supplierListByJson}
$scope.orderByMe = function(x) {
    $scope.myOrderBy = x;
}
});
</script>
</body>
<%@ include file="buy.jsp"%>
<%@ include file="footer.jsp"%>
</html>