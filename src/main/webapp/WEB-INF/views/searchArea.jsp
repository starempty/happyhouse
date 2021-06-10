<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
#map {
	height: 100%;
}
</style>
<meta charset="UTF-8" />
<title>HAOUSE</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript">
	function searchGugun() {
		document.getElementById("guguncode_search").submit();
	}
	function searchFinal() {
		document.getElementById("final_search").submit();
	}
	function searchWithSortCond() {
		document.getElementById("sortCond").submit();
	}
</script>

</head>
<body>
	<!-- Sidebar Start -->
	<%@include file="include/sidebar.jsp"%>
	<!-- Sidebar End -->
 
	
	<%@include file="include/header.jsp"%>
	<!-- Start Breadcrumbs -->
	<section id="breadcrumbs" class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<ol>
				<li><a href="${root}/">홈</a></li>
				<li>서비스</li>
			</ol>
			<h2>동별 실거래가 정보</h2>
		</div>
	</section>
	<br>
	<!-- End Breadcrumbs -->
	<div class="container">

		<div class="form-row">
			<div class="col-md-3 form-group" data-aos="fade-up">
				<label><b>시/도</b></label>
				<form id="si_search" action="${root}/searchDong" method="get">
					<select name="city" class="form-control">
						<c:forEach var="city" items="${cities}">
							<option value="${city.sido_code}"
								<c:if test="${city.sido_name eq selectedcity}">selected</c:if>>${city.sido_name}</option>
						</c:forEach>
					</select>
				</form>
			</div>
			<div class="col-md-3 form-group" data-aos="fade-up">
				<label><b>구/군</b></label>
				<form id="guguncode_search" action="${root}/searchDong" method="get">
					<select name="gugun" id="guguncode_search" class="form-control"
						onchange="javascript:searchGugun()">
						<c:forEach var="gugun" items="${guguns}">
							<option value="${gugun.gugun_name}"
								<c:if test="${gugun.gugun_name eq selectedgugun}">selected</c:if>>${gugun.gugun_name}</option>
						</c:forEach>
					</select>
				</form>
			</div>
			<div class="col-md-3 form-group" data-aos="fade-up">
				<label><b>읍/면/동</b></label>
				<form id="final_search" action="${root}/searchDong" method="get">
					<input type="hidden" name="gugun" value="${selectedgugun}">
					<select name="dong" id="final_search" class="form-control"
						onchange="javascript:searchFinal()">
						<c:forEach var="dong" items="${dongs}">
							<option value="${dong.dong}"
								<c:if test="${dong.dong eq selecteddong}">selected</c:if>>${dong.dong}</option>
						</c:forEach>
					</select>
				</form>
			</div>
			<div class="col-md-3 form-group" data-aos="fade-up">
				<label><b>정렬조건</b></label>
				<form id="sortCond" action="${root}/searchDong" method="get">
					<input type="hidden" name="city" value="11"> <input
						type="hidden" name="gugun" value="${selectedgugun}"> <input
						type="hidden" name="dong" value="${selecteddong}"> <select
						name="sortCond" id="sortCond" class="form-control"
						onchange="javascript:searchWithSortCond()">
						<option value="none">선택</option>
						<option value="areadesc"
							<c:if test="${selectedcond eq 'areadesc'}">selected</c:if>>전용면적(△)</option>
						<option value="area"
							<c:if test="${selectedcond eq 'area'}">selected</c:if>>전용면적(▽)</option>
						<option value="dealAmountdesc"
							<c:if test="${selectedcond eq 'dealAmountdesc'}">selected</c:if>>거래가(△)</option>
						<option value="dealAmount"
							<c:if test="${selectedcond eq 'dealAmount'}">selected</c:if>>거래가(▽)</option>
						<option value="dealDaydesc"
							<c:if test="${selectedcond eq 'dealDaydesc'}">selected</c:if>>거래일(△)</option>
						<option value="dealDay"
							<c:if test="${selectedcond eq 'dealDay'}">selected</c:if>>거래일(▽)</option>
					</select>
				</form>
			</div>
		</div>
		<table class="table table-striped" data-aos="fade-up">
			<thead>
				<tr style="text-align: center">
					<th>번호</th>
					<th>아파트명</th>
					<th>전용면적(㎡)</th>
					<th>거래가(만원)</th>
					<th>거래일</th>
					<th>상세보기</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="house" items="${houses}" varStatus="status">
					<tr data-aos="fade-up">
						<td>${status.count}</td>
						<td>${house.aptName}</td>
						<td>${house.area}</td>
						<td>${house.dealAmount}</td>
						<td>${house.dealYear}.${house.dealMonth}.${house.dealDay}</td>
						<td style="text-align: center"><c:if
								test="${loginuser ne null}">
								<a href="${root}/searchAptDetail?no=${house.no}">확인</a>
							</c:if> <c:if test="${loginuser eq null}">
								<a href="#" onclick="needLogin()">확인</a>
							</c:if></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<script>
			function needLogin() {
				alert("로그인이 필요한 서비스입니다.")
				location.href = "${root}/goLogin";
			}
		</script>
	</div>

	<%@ include file="include/footer.jsp"%>
	<%@ include file="include/commission.jsp" %>
	<%@ include file="include/tax.jsp" %>
</body>
</html>