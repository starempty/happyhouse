<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}" scope="session"/>
<c:set var="nation" value="${nation}" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="keywords">
<title>HAOUSE</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/us/include/header.jsp"%>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container" data-aos="fade-in">
      <h1>Welcome.</h1>
      <h2>We are team of talented developers making websites with SSAFY</h2>
      <div class="d-flex align-items-center">
        <i class="bx bxs-right-arrow-alt get-started-icon"></i>
        <a href="#about" class="btn-get-started scrollto">Start</a>
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">

        <div class="row">
          <div class="col-xl-12 col-lg-7 d-flex">
            <div class="icon-boxes d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-receipt"></i>
                    <h4>Price comparison</h4>
                    <p>Check the average monthly transaction price based on our address. You can also compare the actual transaction price difference between other neighborhoods and ours.</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-cube-alt"></i>
                    <h4>Search Information</h4>
                    <p>It provides information on actual transactions in the National District.<br>Check how much my house is for and how much my new house is for.</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-images"></i>
                    <h4>Share Information</h4>
                    <p>You can exchange the best information with our HAOUSE members. Please log in and use the service.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about section-bg">
      <div class="container">

        <div class="row">
          <div class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch" data-aos="fade-right">
            <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-xl-7 col-lg-6 icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
            <h4 data-aos="fade-up">Introduce our Website.</h4>
            <h3 data-aos="fade-up">This is a website<br>based on the SSAFY 5th HAPPYHOUSE project.</h3>
            <p data-aos="fade-up">HAOUSE is designed to help you trade real estate more efficiently by looking up information on house prices.</p>

            <div class="icon-box" data-aos="fade-up">
              <div class="icon"><i class="bx bx-fingerprint"></i></div>
              <h4 class="title"><a href="">Price comparison</a></h4>
              <p class="description">Not only do we analyze users' residential data, but we also help users in real estate transactions by allowing them to compare and analyze data from other regions.</p>
            </div>

            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bx bx-gift"></i></div>
              <h4 class="title"><a href="">Provide real estate transaction information</a></h4>
              <p class="description">By providing real estate transaction information, we provide user-available housing information.</p>
            </div>

            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="bx bx-atom"></i></div>
              <h4 class="title"><a href="">Share Information</a></h4>
              <p class="description">You can get more information by exchanging information through the communication space between users.</p>
            </div>

          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients">
      <div class="container" data-aos="fade-up">

        <div class="owl-carousel clients-carousel">
          <img src="${root}/resources/assets/img/clients/client-1.png" alt=""><!-- bootstrap -->
          <img src="${root}/resources/assets/img/clients/client-2.png" alt=""><!-- ssafy -->
          <img src="${root}/resources/assets/img/clients/client-3.png" alt=""><!-- java -->
          <img src="${root}/resources/assets/img/clients/client-4.png" alt=""><!-- vuejs -->
          <img src="${root}/resources/assets/img/clients/client-5.png" alt=""><!-- mysql -->
          <img src="${root}/resources/assets/img/clients/client-6.png" alt=""><!-- jquery -->
          <img src="${root}/resources/assets/img/clients/client-7.png" alt=""><!-- ajax -->
          <img src="${root}/resources/assets/img/clients/client-8.png" alt=""><!-- amchart -->
        </div>

      </div>
    </section><!-- End Clients Section -->
    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container">

        <div class="section-title">
          <h2 data-aos="fade-up">Team HAOUSE</h2>
          <p data-aos="fade-up">Hello, we are Team HAOUSE. We have decided on a team name to tell you the price of your house or your house through our website HAOUSE.<br>There are two people, Kim So Bin, who is in charge of team leader and development, and Seo Kwon Woo, who is in charge of development and presentation.</p>
        </div>

        <div class="row">
		<div class="col-lg-3 col-md-6 d-flex align-items-stretch"></div>
          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up">
            <div class="member">
              <div class="member-img">
                <img src="${root}/resources/assets/img/team/team-1.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="icofont-twitter"></i></a>
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>KIM SOBIN</h4>
                <span>Main Developer</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
              <div class="member-img">
                <img src="${root}/resources/assets/img/team/team-2.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="icofont-twitter"></i></a>
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>SEO GWEONWOO</h4>
                <span>Developer</span>
              </div>
            </div>
          </div>
		<div class="col-lg-3 col-md-6 d-flex align-items-stretch"></div>

        </div>

      </div>
    </section><!-- End Team Section -->
<!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container" data-aos="fade-up">

        <div class="owl-carousel testimonials-carousel">

          <div class="testimonial-item">
            <img src="${root}/resources/assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
            <h3>KIMSOBIN</h3>
            <h4>Main Developer</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              	Main Developer
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="${root}/resources/assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
            <h3>SEOGWEONWOO</h3>
            <h4>Developer</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              	Developer
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>


        </div>

      </div>
    </section><!-- End Testimonials Section -->
  </main><!-- End #main -->

  <%@ include file="include/footer.jsp" %>

</body>

</html>