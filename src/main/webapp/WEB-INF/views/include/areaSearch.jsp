<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-md-4 form-group" data-aos="fade-up">
	<label>시/도</label>
	<form id="si_search" action="${root}/chart" method="get">
		<select name="city" class="form-control">
			<c:forEach var="city" items="${cities}">
				<option value="${city.sido_code}"
					<c:if test="${city.sido_name eq selectedcity}">selected</c:if>>${city.sido_name}</option>
			</c:forEach>
		</select>
	</form>
</div>
<div class="col-md-4 form-group" data-aos="fade-up">
	<label>구/군</label>
	<form id="guguncode_search" action="${root}/chart" method="get">
		<input type="hidden" name="id" value="${loginuser.id}">
		<select name="gugun" id="guguncode_search" class="form-control"
			onchange="javascript:searchGugun()">
			<c:forEach var="gugun" items="${guguns}">
				<option value="${gugun.gugun_name}"
					<c:if test="${gugun.gugun_name eq selectedgugun}">selected</c:if>>${gugun.gugun_name}</option>
			</c:forEach>
		</select>
	</form>
</div>
<div class="col-md-4 form-group" data-aos="fade-up" style="padding-right:0px;">
	<label>읍/면/동</label>
	<form id="final_search" action="${root}/chart" method="get">
		<input type="hidden" name="id" value="${loginuser.id}">
		<input type="hidden" name="gugun" value="${selectedgugun}"> <select
			name="dong" id="final_search" class="form-control"
			onchange="javascript:searchFinal()">
			<c:forEach var="dong" items="${dongs}">
				<option value="${dong.dong}"
					<c:if test="${dong.dong eq selecteddong}">selected</c:if>>${dong.dong}</option>
			</c:forEach>
		</select>
	</form>
</div>

<script type="text/javascript">
function searchGugun(){
	document.getElementById("guguncode_search").submit();
}
function searchFinal(){
	document.getElementById("final_search").submit();
}
</script>