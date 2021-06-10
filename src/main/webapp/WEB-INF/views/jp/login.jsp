<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HAOUSE</title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- Bootstrap core CSS -->
<link href="css/normalize.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<!-- Icon font CSS -->
<link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="fonts/icofont/css/icofont.css" rel="stylesheet">
<link href="fonts/themify-icons/themify-icons.css" rel="stylesheet">
<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Lato:400,300,400italic,700,700italic,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800,300italic,400italic'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- bootstrap을 위한 js & css 등록 -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" /> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Style CSS -->
<link href="css/style.css" rel="stylesheet">

<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript" src="js/cafe.js"></script>
<script type="text/javascript" src="js/map.js"></script>
<link href="${root}/resources/assets/css/login.css" rel="stylesheet">


<%@include file="include/header.jsp" %>
</head>
<body>
	<div class="login-reg-panel" data-aos="fade-in">
		<div class="login-info-box">
			<h2>Have an account?</h2>
			<p>Lorem ipsum dolor sit amet</p>
			<label id="label-register" for="log-reg-show">Login</label>
			<input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked">
		</div>
							
		<div class="register-info-box">
			<h2>Don't you have <br>an account?</h2>
			<p>Let's Join Us</p>
			<label id="label-login" for="log-login-show" ><a href="${root}/jp/signUp" style="color:white">会員加入</a></label>
			<input type="radio" name="active-log-panel" id="log-login-show">
		</div>
							
		<div class="white-panel">
			<form action="${root}/jp/login" method="post">
				<div class="login-show show-log-panel">
					<h2>Log In</h2>
					<input type="text" id="id" name="id" placeholder="id">
					<input type="password" id="pass" name="pass" placeholder="password">
					<input type="submit" value="login">
					<a href="${root}/jp/findPass">パスワードをお忘れですか</a>
				</div>
			</form>
			<div class="register-show">
				<h2>REGISTER</h2>
				<input type="text" placeholder="Email">
				<input type="password" placeholder="Password">
				<input type="password" placeholder="Confirm Password">
				<input type="button" value="Register">
			</div>
		</div>
	</div>
	<div style="height:300px;"></div>
   <%@ include file="include/footer.jsp" %>
	
	
</body>
<%--     --%>
</html>