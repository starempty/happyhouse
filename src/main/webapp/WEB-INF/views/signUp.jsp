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
<script type="text/javascript">
$(document).ready(function() {
	$("#joinBtn").click(function() {
		if($("#uName").val() == "") {
			alert("이름을 입력하세요.");
			return;
		} else if($("#id").val() == "") {
			alert("아이디를 입력하세요.");
			return;
		} else if($("#pass").val() == "") {
			alert("비밀번호를 입력하세요.");
			return;
		} else if(!$("#pass").val().equal($("#pwdcon").val())) {
			alert("비밀번호를 확인하세요.");
			return;
		} else if($("#phoneNum").val() == "") {
			alert("전화번호를 입력하세요.");
			return;
		} else if($("#email").val() == "") {
			alert("이메일을 입력하세요.");
			return;
		} else if($("#uAddress").val() == "") {
			alert("주소를 입력하세요.");
			return;
		} else {
			$("#userform").submit();
		}
	});
});
function findAdd() {
    new daum.Postcode({
        oncomplete: function(data) {
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                roadAddr += ' (' + extraRoadAddr + ')';
            }
            var address = '('+data.zonecode+') '+roadAddr
            $('#uAddress').val(address)
            $('#address2').focus();
        }
    }).open();
}


</script>


</head>
<body>
<%@include file="include/header.jsp" %>
	<div style="height:50px"></div>
   <div class="container mt-3" >
      <h2><strong>회원 가입</strong></h2>
      <form action="${root}/signUp" method="post" class="border p-3" id="userform">
         <div class="form-group">
            <label for="id" style="font-weight:bolder;">아이디 (*20자 이내)</label> 
            <input type="text"class="form-control" id="id" placeholder="ID" name="id" required>

         </div>
         <div class="form-group">
            <label for="pass" style="font-weight:bolder;">패스워드 (*20자 이내)</label> 
            <input type="password" class="form-control" id="pass" placeholder="Password" name="pass" required>

         </div>
         <div class="form-group">
            <label for="pwdcon" style="font-weight:bolder;">패스워드 확인(*20자 이내)</label> 
            <input type="password" class="form-control" id="pwdcon" placeholder="password" name="pwdcon" required>

         </div>
         <div class="form-group">
            <label for="uName" style="font-weight:bolder;">이름(*10자 이내)</label> 
            <input type="text" class="form-control" id="uName" placeholder="Name" name="uName" required>

         </div>
         <div class="form-group">
            <label for="phoneNum" style="font-weight:bolder;">전화 번호 (*20자 이내)</label> 
            <input type="tel" class="form-control" id="phoneNum" placeholder="01012340123" name="phoneNum" required>

         </div>
         <div class="form-group">
            <label for="email" style="font-weight:bolder;">이메일 (*50자 이내)</label> 
            <input type="email" class="form-control" id="email" placeholder="example@gmail.com" name="email" required>

         </div>
         <div class="form-group">
            <label for="uAddress" style="font-weight:bolder;">주소 (*)</label> 
            <input type="text" class="form-control" id="uAddress" placeholder="Click!" onclick="findAdd()" name="uAddress" required>

         </div>
         <div class="form-group">
            <label for="address2" style="font-weight:bolder;">상세 주소 (50자 이내)</label> 
            <input type="text" class="form-control" id="address2" placeholder="주소 상세" name="address2" required>

         </div>
         <button id="joinBtn" type="submit" class="btn btn-warning form-control">등록</button>
      </form>
   </div>
   <div style="height:100px;"></div>
   <%@ include file="include/footer.jsp" %>
	
	
</body>
</html>