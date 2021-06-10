<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<link href="${root}/resources/assets/css/login.css" rel="stylesheet">
</head>
<style>
.login-white-panel{
    position: relative;
    top: 20%;
    transform: translateY(-50%);
	text-align:center;
    width:70%;
	right:0;left:0;
    margin:auto;
    height:400px;
    
}
.white-panel-for-update{
    background-color: rgba(255,255, 255, 1);
    height:500px;
    position:absolute;
    top:-50px;
    left:25%;
    width:50%;
    transition:.3s ease-in-out;
    z-index:0;
    box-shadow: 0 0 15px 9px #00000096;
}

.login-show input[type="submit"] {
    max-width: 150px;
    width: 100%;
    background: #ff5821;
    color: #f9f9f9;
    border: none;
    padding: 10px;
    text-transform: uppercase;
    border-radius: 2px;
    float: right;
    cursor: pointer;
}
.login-show input[type="text"], .login-show input[type="password"] {
    width: 100%;
    display: block;
    margin: 0;
    padding: 15px;
    border: 1px solid #b5b5b5;
    outline: none;
}
</style>
<body>

<%@include file="include/header.jsp" %>
	<div class="login-white-panel " data-aos="fade-in">		
		<div class="white-panel-for-update mr-10">
			<c:if test="${findUser eq null}">
				<form action="${root}/findPass" method="post">
					<div class="login-show show-log-panel">
						<h2>아이디와 이름을 입력하세요.</h2>
						<input class="mt-5" type="text" id="checkId" name="checkId" placeholder="아이디"><br>
						<input type="text" id="checkName" name="checkName" placeholder="이름"><br>
						<input type="submit" value="아이디 확인">
					</div>
				</form>
			</c:if>
			<c:if test="${findUser ne null}">
				<form action="${root}/setPass" method="post">
					<div class="login-show show-log-panel">
						<h2>변경하실 비밀번호를 입력하세요.</h2>
						<input type="hidden" id="id" name="id" value="${findUser.id}">
						<input class="mt-5" type="password" id="pass" name="pass" placeholder="비밀번호"><br>
						<input type="password" id="passConfirm" name="passConfirm" placeholder="비밀번호확인">
						<input class="mt-5" type="submit" value="비밀번호 변경">
					</div>
			  	</form>
			</c:if>
		</div>
	</div>
	<div style="height:300px;"></div>
	<%-- <c:if test="${findUser eq null}">
   		<div class="white-panel">
	      
	      <form action="${root}/findPass" method="post">
			<div class="login-show show-log-panel">
				
				<input type="submit" value="아이디 확인">
			</div>
		  </form>
   		</div>
	</c:if>
	<c:if test="${findUser ne null}">
   		<div class="white-panel">
	      <h2><strong>변경하실 비밀번호를 입력하세요</strong></h2>
	      <form action="${root}/setPass" method="post">
			<div class="login-show show-log-panel">
				<input type="hidden" id="id" name="id" value="${findUser.id}">
				<input type="password" id="pass" name="pass" placeholder="비밀번호"><br>
				<input type="password" id="passConfirm" name="passConfirm" placeholder="비밀번호확인">
				<input type="submit" value="비밀번호 변경">
			</div>
		  </form>
   		</div>
	</c:if> --%>
   
   <%@ include file="include/footer.jsp" %>
   


 <!-- The Modal -->
<div class="modal" id="deleBtn">
  <div class="modal-dialog">
  	<form action="${root}/deleteUser" method="post">
  		<div class="modal-content">

	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">비밀번호 확인</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
				<div class="form-group">
		 		 <label for="pass">비밀번호:</label>
		 		 <input type="password" class="form-control" id="new-pass" name="pass" placeholder="패스워드 입력">
				</div>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="submit" class="btn btn-primary" id="del_r">확인</button>
	        <button type="button" class="btn btn-danger" id="del_c" data-dismiss="modal" data-dismiss="modal">취소</button>
	      </div>
	    </div>
  	</form>
  </div>
</div>
	
</body>
</html>