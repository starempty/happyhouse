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
				<li>공지사항 수정</li>
			</ol>
			<h2>Notice Editing...</h2>
		</div>
	</section>
	<br>
	<!-- End Breadcrumbs -->
	<section class="contact" id="blog" style="padding-top: 0;" data-aos="fade-in">
		<div class="container">
			<div class="row">
				<form action="${root}/noticeModify" method="post"
					style="width: 100%;">
					<input type="hidden" name="articleNo" value="${notice.articleNo}">
					<input type="hidden" name="id" value="${loginuser.id}">
					<div class="form-group">
						<label class="col-md-2 control-label" for="subject">공지사항</label> <a
							href="${root}/list">수정 전 관련 공지사항을 확인해주세요.</a>
						<div class="validate"></div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label" for="subject"
							style="display: inline-block">제목</label> <input type="text"
							class="form-control col-md-9" style="display: inline-block"
							name="subject" id="subject" value="${notice.subject}"
							data-rule="minlen:1"
							data-msg="Please enter at least 1 chars of subject">
						<div class="validate"></div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label" for="content">내용</label>
						<textarea class="form-control" name="content" rows="20"
							data-rule="required" data-msg="Please write something for us"
							>${notice.content}</textarea>
						<div class="validate"></div>
					</div>
					<!-- <div class="mb-3">
						<div class="loading">Loading</div>
						<div class="error-message"></div>
						<div class="sent-message">공지사항이 수정되었습니다.</div>
					</div> -->
					<div class="text-center">
						<button type="submit" style="background: #ff5821; border: 0; padding: 10px 24px; color: #fff; transition: 0.4s;">수정 완료</button>
					</div>
				</form>
			</div>
		</div>
	</section>
	<%@ include file="include/footer.jsp"%>
</body>
</html>