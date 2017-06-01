<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- banner -->
<div class="banner-grid">
	<div id="visual">
			<div class="slide-visual">
				<!-- Slide Image Area (1000 x 424) -->
				<ul class="slide-group">
					<li><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/ba1.jpg" alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/ba2.jpg" alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/ba3.jpg" alt="Dummy Image" /></li>
				</ul>

				<!-- Slide Description Image Area (316 x 328) -->
				<div class="script-wrap">
					<ul class="script-group">
						<li><div class="inner-script"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/baa1.jpg" alt="Dummy Image" /></div></li>
						<li><div class="inner-script"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/baa2.jpg" alt="Dummy Image" /></div></li>
						<li><div class="inner-script"><img class="img-responsive" src="${pageContext.request.contextPath }/resources/images/baa3.jpg" alt="Dummy Image" /></div></li>
					</ul>
					<div class="slide-controller">
						<a href="#" class="btn-prev"><img src="${pageContext.request.contextPath }/resources/images/btn_prev.png" alt="Prev Slide" /></a>
						<a href="#" class="btn-play"><img src="${pageContext.request.contextPath }/resources/images/btn_play.png" alt="Start Slide" /></a>
						<a href="#" class="btn-pause"><img src="${pageContext.request.contextPath }/resources/images/btn_pause.png" alt="Pause Slide" /></a>
						<a href="#" class="btn-next"><img src="${pageContext.request.contextPath }/resources/images/btn_next.png" alt="Next Slide" /></a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/pignose.layerslider.js"></script>
	<script type="text/javascript">
	//<![CDATA[
		$(window).load(function() {
			$('#visual').pignoseLayerSlider({
				play    : '.btn-play',
				pause   : '.btn-pause',
				next    : '.btn-next',
				prev    : '.btn-prev'
			});
		});
	//]]>
	</script>

</div>
<!-- //banner -->
</body>
</html>