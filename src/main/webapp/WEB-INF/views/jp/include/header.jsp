<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
  <!-- Favicons -->
  <link href="${root}/resources/assets/img/favicon.png" rel="icon">
  <link href="${root}/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link href='http://fonts.googleapis.com/css?family=Lato:400,300,400italic,700,700italic,900' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800,300italic,400italic' rel='stylesheet' type='text/css'>
  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">

  <!-- Vendor CSS Files -->
  <link href="${root}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${root}/resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="${root}/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${root}/resources/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="${root}/resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${root}/resources/assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${root}/resources/assets/css/style.css" rel="stylesheet">
  
  <!-- bootstrap을 위한 js & css 등록 -->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" /> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "96eca88d-f845-4597-9d24-0212ecd8ea32"
  });
//Boot Channel as an anonymous user
  ChannelService.boot({
    "pluginKey": "96eca88d-f845-4597-9d24-0212ecd8ea32" //please fill with your plugin key
  });

  // Boot Channel as a registered user
  ChannelService.boot({
    "pluginKey": "96eca88d-f845-4597-9d24-0212ecd8ea32", //please fill with your plugin key
    "profile": {
      "name": ${loginuser.uName}, //fill with user name
      "mobileNumber": ${loginuser.phoneNum}, //fill with user phone number
      "id": ${loginuser.id}, //any other custom meta data
      "CUSTOM_VALUE_2": "VALUE_2"
    }
  });

  // Shutdown Channel
  ChannelService.shutdown();
</script>
<!-- End Channel Plugin -->
</head>
<c:set var="root" value="${pageContext.request.contextPath}" scope="session"></c:set>
  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container d-flex">
      <div class="contact-info mr-auto" style="margin-top:10px;">
        <ul>
          <li><i class="icofont-envelope"></i><a href="https://www.ssafy.com">ssafy@ssafy.com</a></li>
          <li><i class="icofont-clock-time icofont-flip-horizontal"></i> 月-金 09:00 - 18:00</li>
          <li><a href="${root}/">한국어</a></li>
          <li><a href="${root}/nation?code=us">English</a></li>
        </ul>

      </div>
      <div class="cta">
        <!-- <a href="#about" class="scrollto">Log in</a> -->
        <c:if test="${loginuser eq null }">
			<a class="scrollto" id="login" href="${root}/jp/goLogin" style="margin-top:10px; margin-bottom:10px;">Login</a>
		</c:if>
		<c:if test="${loginuser ne null }">
			おはようございます. ${loginuser.uName}&nbsp;&nbsp;
			<a class="scrollto" id="logout" href="${root}/jp/logout"  style="margin-top:10px; margin-bottom:10px;">Logout</a>
		</c:if>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="${root}/jp/"><span><!-- Flexor -->HAOUSE</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!--  class="active"<a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="${root}/jp/#about">HAOUSE 紹介</a></li>
          <li><a href="${root}/jp/#team">チームメンバ</a></li>
          <li class="drop-down"><a href="${root}/jp/#services">サ-ビス</a>
            <ul>
              <li><a href="${root}/jp/searchDong">同別実取引価格情報</a></li>
              <li><a href="${root}/jp/searchApt?AptName=전체">アパートの実取引価格情報</a></li>
	          <c:if test="${loginuser ne null}">
				 <li><a href="${root}/jp/chart?id=${loginuser.id}">周辺相場照会</a></li>
	    	     <li><a href="${root}/jp/getFavorite?user_id=${loginuser.id}">関心地域探訪</a></li>
	          </c:if>
            </ul>
          </li><%-- href="${root}/#contact" --%>
          <c:if test="${loginuser ne null}">
          	<li><a href="${root}/jp/board">質疑応答</a></li>
          </c:if>
          <li><a href="${root}/jp/list">お知らせ事項</a></li>
		<c:if test="${loginuser ne null}"><li><a class="scrollto" id="profile" href="${root}/jp/userinfo?id=${loginuser.id}">会員情報</a></li></c:if>
        </ul>
      </nav>
      <!-- .nav-menu -->

    </div>
    <script>
		let msg = "${msg}";
		if(msg) alert(msg);
	</script>
  </header><!-- End Header -->