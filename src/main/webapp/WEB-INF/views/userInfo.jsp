<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }"/>

<style type="text/css">
	p {
		display: inline-block;
	}
	label{
		width: 100px;
	}
	#styleBtn{
	    background: #ff5821;
	    border: 0;
	    padding: 10px 24px;
	    color: #fff;
	    transition: 0.4s;
	    display: inline-block;
	}
</style>
</head>
<body>

<%@include file="include/header.jsp" %>
<!-- Start Breadcrumbs -->
	<section id="breadcrumbs" class="breadcrumbs"  data-aos="fade-in">
		<div class="container">
			<ol>
				<li><a href="${root}/">홈</a></li>
				<li>회원정보</li>
			</ol>
			<h2>회원정보 조회</h2>
		</div>
	</section><br>
	<!-- End Breadcrumbs -->
	
   <div class="container" style="min-height:70%">
      <form action="" class="border p-3"  data-aos="fade-right">
         <div class="form-group" data-aos="fade-up">
            <label for="id" style="font-weight:bolder;">아이디</label>
            <p id="id">${user.id}</p>
         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="pass" style="font-weight:bolder;">패스워드</label> 
            <p id="pass">${user.pass}</p>
         </div>

         <div class="form-group" data-aos="fade-up">
            <label for="uName" style="font-weight:bolder;">이름</label> 
           	<p id="uName">${user.uName}</p>
         </div>
         
         <div class="form-group" data-aos="fade-up">
            <label for="phoneNum" style="font-weight:bolder;">전화 번호</label> 
            <p id="phoneNum">${user.phoneNum}</p>
         </div>
         
         <div class="form-group" data-aos="fade-up">
            <label for="email" style="font-weight:bolder;">이메일</label> 
            <p id="email">${user.email}</p>
         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="uAddress" style="font-weight:bolder;">주소</label> 
           	<p id="uAddress">${user.uAddress}</p>
         </div>
		<br><br><!-- btn-info -->
		<div class="form-group" style="text-align:center">
         <button  data-aos="fade-up" id="styleBtn" type="button" onclick="location.href='${root}/'">확인</button>
         <button  data-aos="fade-up" id="styleBtn" type="button" onclick="location.href='${root}/modify'" >수정</button>
         <button  data-aos="fade-up" id="styleBtn" type="button" data-toggle="modal" data-target="#deleBtn" >삭제</button>
		</div>
      </form>
   </div>
   
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