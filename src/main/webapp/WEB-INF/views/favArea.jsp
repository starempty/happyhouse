<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="keywords">
<title>HAOUSE</title>
</head>
<body>
	<%@include file="/WEB-INF/views/include/header.jsp"%>
	<!-- Start Breadcrumbs -->
	<section id="breadcrumbs" class="breadcrumbs"  data-aos="fade-in" style="margin-bottom:0;">
		<div class="container">
			<ol>
				<li><a href="${root}/">홈</a></li>
				<li>관심 지역 탐방</li>
			</ol>
			<h2>관심지역 실거래 정보</h2>
		</div>
	</section>
	<!-- End Breadcrumbs -->
	<br>
	<!-- 지도가 표시될 div -->
	<c:if test="${not empty positions }">
		<div id="map" style="width:100%;height:500px;"></div>
		<div style="height:50px"></div>
	</c:if>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1e0c5670c12f95d4f6c48d82c5cd2f8d&libraries=services"></script>
	<div class="container">
		<c:if test="${empty favorites }">
		<div id="message" style="text-align: center; height:200px; margin-top:80px;"></div>
		</c:if>
		<c:if test="${not empty favorites}">
			<table class="table table-striped" data-aos="fade-up">
				<thead>
					<tr style="text-align:center">
					    <th>번호</th>
					    <th>아파트명</th>
					    <th>읍/면/동</th>
					    <th>전용면적(㎡)</th>
					    <th>거래가(만원)</th>
					    <th>거래일</th>
					    <th>상세보기</th>
				    </tr>
				</thead>
				<tbody>
					<c:forEach var="house" items="${favorites}" varStatus="status">
						<tr data-aos="fade-up">
							<td>${status.count}</td>
				    		<td>${house.aptName}</td>
				    		<td>${house.dong}</td>
				    		<td>${house.area}</td>
				    		<td>${house.dealAmount}</td>
				    		<td>${house.dealYear}.${house.dealMonth}. ${house.dealDay}</td>
				    		<td style="text-align:center">
				    			<a href="${root}/searchAptDetail?no=${house.no}">확인</a>
				    		</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</c:if>
	</div>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
<script type="text/javascript" src="${root}/js/favmap.js"></script>
<script type="text/javascript">
	if(${positions}.length == 0){
		document.getElementById("message").innerHTML = "현재 관심지역이 존재하지 않습니다.<br><br><a href='${root}/searchDong'>관심지역을 추가해보세요!</a>";
	}else{
		drawFavMap(${positions}, ${lat}, ${lng})
	}
</script>
</html>