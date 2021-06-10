<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HAOUSE</title>
</head>
<body>
	<%@include file="include/header.jsp"%>
	<!-- Start Breadcrumbs -->
	<section id="breadcrumbs" class="breadcrumbs">
		<div class="container">
			<ol>
				<li><a href="${root}/">홈</a></li>
				<li><a href="${root}/list">공지사항</a></li>
			</ol>
			<h2>공지사항 작성</h2>
		</div>
	</section>
	<br>
	<!-- End Breadcrumbs -->
	<section class="contact" id="blog" style="padding-top: 0;">
		<div class="container">
				<form action="${root}/noticeRegist" method="post" style="width: 100%;">
					<div class="form-group">
						<label class="col-md-2 control-label" for="subject">공지사항</label> 
						<a href="${root}/list">작성 공지사항을 먼저 읽고 글을 작성해 주세요.</a>
						<div class="validate"></div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label" for="subject" style="display: inline-block">제목</label> 
						<input type="text" class="form-control col-md-9" style="display: inline-block" name="subject" id="subject" data-rule="minlen:5" data-msg="Please enter at least 1 chars of subject">
						<div class="validate"></div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label" for="content">내용</label>
						<textarea class="form-control" name="content" rows="20" data-rule="required" data-msg="Please write something for us"></textarea>
						<!-- <div id="content"></div> -->
						<div class="validate"></div><!--   -->
					</div>
					<div class="text-center">
						<button type="submit" style="background: #ff5821; border: 0; padding: 10px 24px; color: #fff; transition: 0.4s;">작성 완료</button>
					</div>
				</form>
		</div>
	</section>
	<%@ include file="include/footer.jsp"%>
	
</body>
</html>