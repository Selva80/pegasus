<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<!-- for-mobile-apps -->

</head>
<body>
<!-- header -->
<%@ include file="header.jsp" %>
<!-- //banner-top -->
<%@ include file="slider.jsp" %>
<!-- content -->

<%@ include file="content1.jsp" %>
<!-- //content -->

<!-- content-bottom -->

<%@ include file="content2.jsp" %>
<!-- //content-bottom -->
<!-- product-nav -->

<div class="product-easy">
	<div class="container">
		
		<script src="${pageContext.request.contextPath }/resources/js/easyResponsiveTabs.js" type="text/javascript"></script>
		<script type="text/javascript">
							$(document).ready(function () {
								$('#horizontalTab').easyResponsiveTabs({
									type: 'default', //Types: default, vertical, accordion           
									width: 'auto', //auto or any width like 600px
									fit: true   // 100% fit in a container
								});
							});
							
		</script>
		<div class="sap_tabs">
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Latest Designs</span></li> 
					<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Special Offers</span></li> 
					<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Collections</span></li> 
				</ul>				  	 
				<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
					<!-- for C:foreach -->
						<c:forEach var="p" items="${productList }">
				
					<div class="col-md-3 product-men ">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="${pageContext.request.contextPath }/resources/images/product/${p.pid}_0.png" alt="" class="pro-image-front" height="220" width="340">
									<img src="${pageContext.request.contextPath }/resources/images/product/${p.pid}_0.png" alt="" class="pro-image-back" height="220" width="340">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
											<url:url value="/allviewproduct/${p.pid}" var="url"></url:url>
												<a href="${url }" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
								</div>
								<div class="item-info-product ">
								<url:url value="/allviewproduct/${p.pid }" var="url"></url:url>
									<h4><a href="${url}">${p.pname}</a></h4>
									<div class="info-product-price">
										<span class="item_price"> &#8377; ${p.price}</span>
										<del></del>
									</div>
									<url:url value="/user/addToCart/${p.pid }" var="url"></url:url>
									<a href="${url }" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
								</div>
							</div>
						</div>
						
						
						</c:forEach> 
						<div class="clearfix"></div>
						
							
					</div>	
				</div>	
			</div>
		</div>
	</div>
</div>
<!-- //product-nav -->

<%@ include file="buy.jsp" %>
<!-- footer -->
<%@ include file="footer.jsp" %>
<!-- //footer -->

</body>
</html>
