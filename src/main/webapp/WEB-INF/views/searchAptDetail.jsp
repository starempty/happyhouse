<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${root}/resources/assets/css/map.css" rel="stylesheet">
<body>

	<%@include file="include/header.jsp" %>
	<!-- Sidebar Start -->
	<%@include file="include/sidebar.jsp"%>
	<!-- Sidebar End -->
	<!-- Start Breadcrumbs -->
	<section id="breadcrumbs" class="breadcrumbs">
		<div class="container">
			<ol>
				<li><a href="${root}/">홈</a></li>
				<li>실거래가 정보</li>
			</ol>
			<h2>${house.aptName} 상세보기</h2>
		</div>
	</section>
	<br>
	<!-- End Breadcrumbs -->
	<div class="container">
		<div class='row justify-cotent-end'>
			<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
				<div id="aptList" class="row" style="overflow-x: hidden; height: 500px;">
				<!-- 아파트 정보 -->
					<table class="table table-striped"  data-aos="fade-up">
						<tr>
							<th>아파트 이름</th>
							<td>${ house.aptName }</td>
						</tr>
						<tr>
							<th>지역(동)</th>
							<td>${ house.dong }</td>
						</tr>
						<tr>
							<th>거래금액</th>
							<td>${ house.dealAmount }</td>
						</tr>
						<tr>
							<th>전용면적</th>
							<td>${ house.area }</td>
						</tr>
						<tr>
							<th>위도, 경도</th>
							<td>${house.lat}, ${house.lng}</td>
						</tr>
						<tr>
							<th>건축일</th>
							<td>${house.buildYear}</td>
						</tr>
						<tr>
							<th>거래 날짜</th>
							<td>${house.dealYear}.${house.dealMonth}.${house.dealDay}</td>
						</tr>
						<tr style="text-align: center">
							<td colspan="2"><a href="${root}/addFavorite?user_id=${loginuser.id}&house_no=${house.no}">관심지역추가</a></td>
						</tr>
					</table>
					<%-- <div id="contract">
							<p><strong> : </strong></p>
							<p><strong>${ house.dong }</strong></p>
							<p><strong>거래금액 : ${ house.dealAmount } 만원</strong></p>
							<p><strong>전용면적 : ${ house. area }</strong></p>
							<p><strong>위도 : ${ house.lat } | 경도 : ${ house.lng }</strong></p>
							<p><strong>건축일 : ${ house.buildYear }년</strong></p>
							<p>거래 날짜 : ${ house.dealYear }. ${ house.dealMonth }. ${ house.dealDay } <a href="${root}/addFavorite?user_id=${loginuser.id}&house_no=${house.no}">관심지역추가</a></p><hr>
					</div> --%>
				</div>
			</div>
			<div class="col-sm-6">
			<div id="mapwrap"> 
			    <!-- 지도가 표시될 div -->
			    <div id="map" style="width:100%;height:350px;"></div>

			    <div class="map_wrap">
				    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
				    <ul id="category">
				        <li id="BK9" data-order="0"> 
				            <span class="category_bg bank"></span>
				            <img alt="" src="${root}/">
				            	은행
				        </li>       
				        <li id="MT1" data-order="1"> 
				            <span class="category_bg mart"></span>
				            	마트
				        </li>  
				        <li id="PM9" data-order="2"> 
				            <span class="category_bg pharmacy"></span>
				            	약국
				        </li>  
				        <li id="OL7" data-order="3"> 
				            <span class="category_bg oil"></span>
				            	주유소
				        </li>  
				        <li id="CE7" data-order="4"> 
				            <span class="category_bg cafe"></span>
				            	카페
				        </li>  
				        <li id="CS2" data-order="5"> 
				            <span class="category_bg store"></span>
				            	편의점
				        </li>      
				        <li id="SW8" data-order="5"> 
				            <span class="category_bg store"></span>
				            	지하철역
				        </li>      
				        <li id="PK6" data-order="3"> 
				            <span class="category_bg oil"></span>
				            	주차장
				        </li>      
				    </ul>
				</div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1e0c5670c12f95d4f6c48d82c5cd2f8d&libraries=services"></script>
				<script type="text/javascript" src="${root}/js/kakaomap.js"></script>
				<script>
					var lat = ${house.lat};
					var lng = ${house.lng};
					var houseName = "${house.aptName}";
					drawMap(lat, lng, houseName);
				</script>
			</div>
		</div>
	</div>
</div>
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>