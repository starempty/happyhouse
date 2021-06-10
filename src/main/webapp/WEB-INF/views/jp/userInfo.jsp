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
				<li><a href="${root}/jp/">HOME</a></li>
				<li>会員情報</li>
			</ol>
			<h2>会員情報</h2>
		</div>
	</section><br>
	<!-- End Breadcrumbs -->
	
   <div class="container" style="min-height:70%">
      <form action="" class="border p-3"  data-aos="fade-right">
         <div class="form-group" data-aos="fade-up">
            <label for="id" style="font-weight:bolder;">Id</label>
            <p id="id">${user.id}</p>
         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="pass" style="font-weight:bolder;">Password</label> 
            <p id="pass">${user.pass}</p>
         </div>

         <div class="form-group" data-aos="fade-up">
            <label for="uName" style="font-weight:bolder;">名前</label> 
           	<p id="uName">${user.uName}</p>
         </div>
         
         <div class="form-group" data-aos="fade-up">
            <label for="phoneNum" style="font-weight:bolder;">電話番号</label> 
            <p id="phoneNum">${user.phoneNum}</p>
         </div>
         
         <div class="form-group" data-aos="fade-up">
            <label for="email" style="font-weight:bolder;">E-mail</label> 
            <p id="email">${user.email}</p>
         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="uAddress" style="font-weight:bolder;">住所</label> 
           	<p id="uAddress">${user.uAddress}</p>
         </div>
		<br><br><!-- btn-info -->
		<div class="form-group" style="text-align:center">
         <button  data-aos="fade-up" id="styleBtn" type="button" onclick="location.href='${root}/jp/'">確認</button>
         <button  data-aos="fade-up" id="styleBtn" type="button" onclick="location.href='${root}/jp/modify'" >修整</button>
         <button  data-aos="fade-up" id="styleBtn" type="button" data-toggle="modal" data-target="#deleBtn" >削除</button>
		</div>
      </form>
   </div>
   
   <%@ include file="include/footer.jsp" %>
   


 <!-- The Modal -->
<div class="modal" id="deleBtn">
  <div class="modal-dialog">
  	<form action="${root}/jp/deleteUser" method="post">
  		<div class="modal-content">

	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">パスワード確認</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
				<div class="form-group">
		 		 <label for="pass">パスワード:</label>
		 		 <input type="password" class="form-control" id="new-pass" name="pass" placeholder="パスワード">
				</div>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="submit" class="btn btn-primary" id="del_r">確認</button>
	        <button type="button" class="btn btn-danger" id="del_c" data-dismiss="modal" data-dismiss="modal">キャンセル</button>
	      </div>
	    </div>
  	</form>
  </div>
</div>
	
</body>
</html>