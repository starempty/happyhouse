<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	p {
		display: inline-block;
	}
	label{
		width: 100px;
	}
	#cap{
		display: inline;
		font: smaller;
		color: red;
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
			<h2>회원정보 수정</h2>
		</div>
	</section><br>
	<!-- End Breadcrumbs -->
   <div class="container" style="min-height:70%">
      <form action="${root}/modify" method="post" class="border p-3"  data-aos="fade-right">
      	 <input type="hidden" name="id" value="${loginuser.id}">
      	 <input type="hidden" name="uName" value="${loginuser.uName}">
         <div class="form-group"  data-aos="fade-up">
            <label for="id" style="font-weight:bolder;">아이디</label>
            <p id="id">${loginuser.id}</p>
         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="uName" style="font-weight:bolder;">이름</label> 
           	<p id="uName">${loginuser.uName}</p>
         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="pass" style="font-weight:bolder;">비밀번호</label> 
            <input type="password" class="form-control" id="pass" name="pass" value="${loginuser.pass}"  required>

         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="phoneNum" style="font-weight:bolder;">전화 번호</label> 
            <div id="cap">*20자 이내</div>
            <input type="tel" class="form-control" id="phone" name="phoneNum" value="${loginuser.phoneNum}" required>

         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="email" style="font-weight:bolder;">이메일</label> 
            <div id="cap">*50자 이내</div>
            <input type="email" class="form-control" id="email" name="email" value="${loginuser.email}"required>

         </div>
            <div class="form-group" data-aos="fade-up">
            <label for="uAddress" style="font-weight:bolder;">주소</label> 
            <input type="text" class="form-control" id="uAddress" value="${loginuser.uAddress}" name="uAddress" required>

         </div>
         <div class="form-group" style="text-align:center">
	         <button  data-aos="fade-up"id="styleBtn" type="submit" >수정 완료</button>
	         <button  data-aos="fade-up"id="styleBtn" onclick="location.href='${root}/userinfo?id=${loginuser.id}'" type="button" >취소</button>
         </div>
      </form>
    
   </div>
     <%@ include file="include/footer.jsp" %>

</body>
</html>