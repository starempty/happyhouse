<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HAOUSE</title>
</head>
<body>
	<%@include file="include/header.jsp"%>
	<!-- Start Breadcrumbs -->
	<section id="breadcrumbs" class="breadcrumbs"  data-aos="fade-in">
		<div class="container">
			<ol>
				<li><a href="${root}/">홈</a></li>
				<c:if test="${loginuser ne null }">
					<li><a href="${root}/noticeWrite" class="btn-buy">공지사항 작성</a></li>
				</c:if>
			</ol>
			<h2>공지사항</h2>
		</div>
	</section><br>
	<!-- End Breadcrumbs -->
	<section class="blog" id="blog"><!-- class="clearfix" style="min-height: 100%;" -->
		<div class="container" >
			<div class="row" data-aos="fade-in">
				<div class="col-lg-8 entries" >
					<c:if test="${empty notices}">
						<h4>공지사항이 없습니다.</h4>
					</c:if>
					<c:if test="${not empty notices}">
					<div class="list-group" style="margin-top:0" >
						<c:forEach var="notice" items="${notices}">
							<a href="${root}/noticeDetail?articleNo=${notice.articleNo}" class="list-group-item list-group-item-action " data-aos="fade-up"><!-- active -->
								<div class="d-flex w-100 justify-content-between" style="height:50px;vertical-align:center">
									<h5 style="margin-top:12px;">${notice.subject}</h5>
									<small>${notice.regtime}</small>
								</div>
								<%-- <p class="mb-1" style="overflow: hidden; text-overflow:ellipsis; white-space: nowrap; width:70%; height:20px;">${notice.content}</p> --%>
							</a> 
						</c:forEach>
						<div style="height:50px"></div>
						<div class="blog-pagination aos-init aos-animate" data-aos="fade-up">
				          <%@ include file="include/paging.jsp"%>
				        </div>
				        
					</div>
					</c:if>

					
					
					<!-- End .comment-list -->
				</div>
				<div class="col-lg-4" data-aos="fade-up">
					<div class="sidebar">
						<h3 class="sidebar-title">내용 검색</h3>
						<%@ include file="include/search.jsp"%>
						<!-- <h3 class="sidebar-title">Categories</h3>
						<div class="sidebar-item categories">
							<ul>
								<li><a href="#">General <span>(25)</span></a></li>
								<li><a href="#">Lifestyle <span>(12)</span></a></li>
								<li><a href="#">Travel <span>(5)</span></a></li>
								<li><a href="#">Design <span>(22)</span></a></li>
								<li><a href="#">Creative <span>(8)</span></a></li>
								<li><a href="#">Educaion <span>(14)</span></a></li>
							</ul>

						</div> -->
						<!-- End sidebar categories-->

						<h3 class="sidebar-title">인기 공지사항</h3>
						<div class="sidebar-item recent-posts">
							<c:forEach var="Rank" items="${noticeRank}">
								<div class="post-item clearfix">
								<h4>
									<a href="${root}/noticeDetail?articleNo=${Rank.articleNo}">${Rank.subject}</a>
								</h4>
								<time datetime="${Rank.regtime}">${Rank.regtime}</time>
							</div>
							</c:forEach>
						</div>
						<!-- End sidebar recent posts-->

						<!-- <h3 class="sidebar-title">Tags</h3>
						<div class="sidebar-item tags">
							<ul>
								<li><a href="#">App</a></li>
								<li><a href="#">IT</a></li>
								<li><a href="#">Business</a></li>
								<li><a href="#">Business</a></li>
								<li><a href="#">Mac</a></li>
								<li><a href="#">Design</a></li>
								<li><a href="#">Office</a></li>
								<li><a href="#">Creative</a></li>
								<li><a href="#">Studio</a></li>
								<li><a href="#">Smart</a></li>
								<li><a href="#">Tips</a></li>
								<li><a href="#">Marketing</a></li>
							</ul>

						</div> -->
						<!-- End sidebar tags-->

					</div>
					<!-- End sidebar -->

				</div>
				<!-- End blog sidebar -->
			</div>
		</div>
		

		

	</section>
	<%@ include file="include/footer.jsp"%>
	<!-- <script>
		function mvWrite(){
			location.href = "noticeWrite.jsp";
		}
	</script> -->
</body>
</html>