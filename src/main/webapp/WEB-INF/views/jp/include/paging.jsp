<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 원래 ul 클래스명 pagination/ https://getbootstrap.com/docs/4.0/components/pagination/ --%>
<ul class="justify-content-center">
	<!-- <li>
		<i class="icofont-rounded-left"><a href="javascript:movePage(1);" class="page-link"></a></i>
	</li> -->
	<li> 
		
		<a href="javascript:movePage(${navigation.startRange? 1 : navigation.startPage-1})"><i class="icofont-rounded-left"></i></a>
	</li>
<c:forEach var="i" begin="${navigation.startPage}" end="${navigation.endPage}">
	<li class="${navigation.currentPage==i? 'page-item active' : 'page-item'}">
		<a href="javascript:movePage(${i})">${i}</a>
	</li>
</c:forEach>
	<li class="page-item">
		<a href="javascript:movePage(${navigation.endRange? navigation.endPage : navigation.endPage+1})"><i class="icofont-rounded-right"></i></a>
	</li>
	<%-- <li class="page-item">
		<a href="javascript:movePage(${navigation.totalPageCount})" class="page-link">마지막</a>
	</li> --%>
</ul>
