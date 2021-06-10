<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<style>
#chartdiv {
  width: 100%;
  height: 500px;
}
#chartdiv-cmp {
  width: 100%;
  height: 500px;
}
</style>
</head>
<body>
	<%@include file="include/header.jsp" %>
	<!-- Start Breadcrumbs -->
	<section id="breadcrumbs" class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<ol>
				<li><a href="${root}/">홈</a></li>
				<li>서비스</li>
			</ol>
			<h2>주변 시세 조회</h2>
		</div>
	</section><br>
	<!-- End Breadcrumbs -->
	
	<!-- Main Container-->
	<div class="container row" style="margin-top: 10px; margin:auto">
		<div class="row" style="width:100%;">
			<div class="col-md-6" style="padding:40px;"><h4 data-aos="fade-up">&nbsp;&nbsp;2020년 월별 실거래가 평균 비교하기</h4></div>
			<div class="row col-md-6" style="padding-top:10px; padding-left:30px; padding-right:0px;">
				<%@ include file="include/areaSearch.jsp" %>
			</div>
		</div>
		<div class="col-md-6"><div id="chartdiv"></div></div>
		<div class="col-md-6"><div id="chartdiv-cmp"></div></div>
	</div>
	<div style="height:100px;"></div>
	<%@ include file="include/footer.jsp" %>
</body>
<script type="text/javascript" src="${root}/resources/assets/js/memberChart.js"></script>
<script>
	drawChart(${data}, "chartdiv", "${memberDong}")
	drawChart(${cmpData}, "chartdiv-cmp", "${cmpDong}")
</script>
</html>