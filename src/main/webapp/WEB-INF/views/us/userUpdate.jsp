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
				<li><a href="${root}/">HOME</a></li>
				<li>UserInfo</li>
			</ol>
			<h2>Modify</h2>
		</div>
	</section><br>
	<!-- End Breadcrumbs -->
   <div class="container" style="min-height:70%">
      <form action="${root}/us/modify" method="post" class="border p-3"  data-aos="fade-right">
      	 <input type="hidden" name="id" value="${loginuser.id}">
      	 <input type="hidden" name="uName" value="${loginuser.uName}">
         <div class="form-group"  data-aos="fade-up">
            <label for="id" style="font-weight:bolder;">ID</label>
            <p id="id">${loginuser.id}</p>
         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="uName" style="font-weight:bolder;">NAME</label> 
           	<p id="uName">${loginuser.uName}</p>
         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="pass" style="font-weight:bolder;">PASSWORD</label> 
            <input type="password" class="form-control" id="pass" name="pass" value="${loginuser.pass}"  required>

         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="phoneNum" style="font-weight:bolder;">PhoneNum</label> 
            <div id="cap">*Less then 20 characters</div>
            <input type="tel" class="form-control" id="phone" name="phoneNum" value="${loginuser.phoneNum}" required>

         </div>
         <div class="form-group" data-aos="fade-up">
            <label for="email" style="font-weight:bolder;">E-mail</label> 
            <div id="cap">*Less then 50 characters</div>
            <input type="email" class="form-control" id="email" name="email" value="${loginuser.email}"required>

         </div>
            <div class="form-group" data-aos="fade-up">
            <label for="uAddress" style="font-weight:bolder;">Address</label> 
            <input type="text" class="form-control" id="uAddress" value="${loginuser.uAddress}" name="uAddress" required>

         </div>
         <div class="form-group" style="text-align:center">
	         <button  data-aos="fade-up"id="styleBtn" type="submit" >Modify Confirm</button>
	         <button  data-aos="fade-up"id="styleBtn" onclick="location.href='${root}/us/userinfo?id=${loginuser.id}'" type="button" >Cancel</button>
         </div>
      </form>
    
   </div>
     <%@ include file="include/footer.jsp" %>

</body>
</html>