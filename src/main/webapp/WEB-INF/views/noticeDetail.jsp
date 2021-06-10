<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HAOUSE</title>
</head>
<body>
	<%@include file="include/header.jsp"%>
	<!-- Start Breadcrumbs -->
	<section id="breadcrumbs" class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<ol>
				<li><a href="${root}/">홈</a></li>
				<li><a href="${root}/list">공지사항</a></li>
			</ol>
			<h2>공지사항 자세히보기</h2>
		</div>
	</section><br>
	<!-- End Breadcrumbs -->
	<section class="blog" id="blog" data-aos="fade-in">
		<div class="container">
			<div class="row">
				<article class="entry entry-single" style="width:100%">
					<h2 class="entry-title" style="text-align: center;">${notice.subject}</h2>
					<div class="entry-meta">
		            	<ul>
		                  <li class="d-flex align-items-center"><i class="icofont-user"></i>${notice.id}</li>
		                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i><time datetime="2020-01-01">${notice.regtime}</time></li>
		                  <li class="d-flex align-items-center"><i class="icofont-people"></i>조회수 ${notice.viewCnt}</time></li>
		                  <!-- <li class="d-flex align-items-center"><i class="icofont-comment"></i> <a href="blog-single.html">12 Comments</a></li> -->
		            	</ul>
		            </div>
					<div class="entry-content" style="width:100%; height:500px; overflow: auto;">
						<!-- <p id="noticeContent"></p>
						<script type="text/javascript">
							$(document).ready(function(){
								let contents = ;
								console.log(contents)
								document.getElementById("noticeContent").innerHTML = contents;
							})
						</script> -->
						<textarea class="form-control" name="content" style="padding:30px; height:100%; background-color:#ffffff; resize:none;" readonly>${notice.content}</textarea>
					</div>	<!-- form-group -->		
					<div class="pricing" style="text-align: center; margin-top:30px; ">
						<a href="${root}/list" class="btn-buy">목록</a>
						<a href="${root}/noticeModify?articleNo=${notice.articleNo}" class="btn-buy">수정</a>
						<a href="${root}/noticeDelete?articleNo=${notice.articleNo}" class="btn-buy">삭제</a>
					</div>
				</article>
			</div>
		</div>
	</section>
	<%@ include file="include/footer.jsp"%>
</body>
</html>