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
  <%@ include file="/WEB-INF/views/include/header.jsp"%>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container" data-aos="fade-in">
      <h1>반갑습니다.</h1>
      <h2>We are team of talented developers making websites with SSAFY</h2>
      <div class="d-flex align-items-center">
        <i class="bx bxs-right-arrow-alt get-started-icon"></i>
        <a href="#about" class="btn-get-started scrollto">시작하기</a>
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">

        <div class="row">
          <!-- <div class="col-xl-4 col-lg-5" data-aos="fade-up">
            <div class="content">
              <h3>Why Choose Flexor for your company website?</h3>
              <h3>HAOUSE</h3>
              <p>
              	저희 HAOUSE 사이트는 ~~ 목적을 가지고 만들어졌습니다.
              </p>
              <div class="text-center">
                <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
          </div> -->
          <div class="col-xl-12 col-lg-7 d-flex">
            <div class="icon-boxes d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-receipt"></i>
                    <h4>주변 시세 비교</h4>
                    <p>우리집 주소 기반으로 월별 평균 실거래가를 확인해보세요. 다른 동네와 우리 동네의 실거래가 차이도 비교하실 수 있습니다.</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-cube-alt"></i>
                    <h4>실거래 정보 조회</h4>
                    <p>전국구 실거래 정보를 제공합니다.<br>내 집은 얼마에 팔지, 새 집은 얼마에 살지 확인해보세요.</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-images"></i>
                    <h4>회원 간 정보 공유</h4>
                    <p>저희 HAOUSE의 회원님들과 알짜정보를 교환하실 수 있습니다. 로그인 후 서비스를 이용해 주세요.</p>
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
            <h4 data-aos="fade-up">우리의 웹사이트를 소개합니다.</h4>
            <h3 data-aos="fade-up">SSAFY 5기 HAPPYHOUSE 프로젝트를<br>기반으로 만들어진 웹사이트입니다.</h3>
            <p data-aos="fade-up">HAOUSE는 집값의 정보를 조회하여 보다 효율적으로 부동산을 거래할 수 있도록 도움을 드리기 위하여 제작되었습니다.</p>

            <div class="icon-box" data-aos="fade-up">
              <div class="icon"><i class="bx bx-fingerprint"></i></div>
              <h4 class="title"><a href="">지역 간의 시세 비교</a></h4>
              <p class="description">저희는 사용자의 거주지 데이터를 분석할 뿐만 아니라 타지역의 데이터와 비교분석 할 수 있게 하여 사용자의 부동산거래에 있어 도움을 드리고 있습니다.</p>
            </div>

            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bx bx-gift"></i></div>
              <h4 class="title"><a href="">부동산 실거래 정보 제공</a></h4>
              <p class="description">부동산 실거래 정보를 제공함으로서 사용자가 거래가능한 주택정보들을 제공하고 있습니다.</p>
            </div>

            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="bx bx-atom"></i></div>
              <h4 class="title"><a href="">타 사용자들과의 커뮤니티</a></h4>
              <p class="description">사용자들간의 소통의 공간을 통해 정보를 교환함으로서 보다 많은 정보를 얻을 수 있습니다.</p>
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

     <!-- ======= Services Section ======= -->
  <!--  <section id="services" class="services section-bg">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>서비스</h2>
          <p>저희 웹사이트에서는 아래의 서비스들을 제공하고 있습니다.</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6" data-aos="fade-up">
            <div class="icon-box">
              <div class="icon"><i class="icofont-computer"></i></div>
              <h4 class="title"><a href="">지역 간의 시세 비교</a></h4> 
              <p class="description">지역간의 부동산 시세 비교</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="icofont-chart-bar-graph"></i></div>
              <h4 class="title"><a href="">주변 지역 실거래가 시각화</a></h4> 주변지역 실거래가 비교 차트 제공
              <p class="description">실거래가 그래프 제공</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="icofont-earth"></i></div>
              <h4 class="title"><a href="">타 사용자들과의 커뮤니티</a></h4>
              <p class="description">정보공유 커뮤니티</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="icofont-image"></i></div>
              <h4 class="title"><a href="">구현중...</a></h4>
              <p class="description">구현중인 기능입니다...</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="400">
            <div class="icon-box">
              <div class="icon"><i class="icofont-settings"></i></div>
              <h4 class="title"><a href="">구현중...</a></h4>
              <p class="description">구현중인 기능입니다...</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="500">
            <div class="icon-box">
              <div class="icon"><i class="icofont-tasks-alt"></i></div>
              <h4 class="title"><a href="">구현중...</a></h4>
              <p class="description">구현중인 기능입니다...</p>
            </div>
          </div>
        </div>

      </div>
    </section>End Services Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container">

        <div class="section-title">
          <h2 data-aos="fade-up">집값알려조</h2>
          <p data-aos="fade-up">안녕하세요 저희는 집값알려조팀입니다. 저희 사이트 HAOUSE를 통하여 본인 또는 주변의 집값을 알려드리기 위해 팀명을 정했습니다.<br>팀장과 개발을 맡은 김소빈, 개발과 발표를 맡은 서권우 두 명으로 구성되어 있습니다.</p>
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
            <h3>김소빈</h3>
            <h4>Main Developer</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              	메인 개발자 김소빈 입니다.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="${root}/resources/assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
            <h3>서권우</h3>
            <h4>Developer</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              	개발자 서권우 입니다.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>


        </div>

      </div>
    </section><!-- End Testimonials Section -->


    <%-- <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2 data-aos="fade-up">QnA</h2>
          <p data-aos="fade-up">질문이 있으시면 언제든지 적어주세요. 관리자가 확인하는 즉시 답변 드린답니다:)</p>
          <p data-aos="fade-up">If you have any question please write down here. The answer will be there right after we check.</p>
          
        </div>

        <div class="row justify-content-center">

          <div class="col-xl-3 col-lg-4 mt-4" data-aos="fade-up">
            <div class="info-box">
              <i class="bx bx-map"></i>
              <h3>Our Address</h3>
              <p>경북 구미시,<br> 3공단 3로 302</p>
            </div>
          </div>

          <div class="col-xl-3 col-lg-4 mt-4" data-aos="fade-up" data-aos-delay="100">
            <div class="info-box">
              <i class="bx bx-envelope"></i>
              <h3>Email Us</h3>
              <p>ssafy@ssafy.com<br>ssafy@haouse.com</p>
            </div>
          </div>
          <div class="col-xl-3 col-lg-4 mt-4" data-aos="fade-up" data-aos-delay="200">
            <div class="info-box">
              <i class="bx bx-phone-call"></i>
              <h3>Call Us</h3>
              <p>+82 02 3429 5100<br>+82 02 34290 5101</p>
            </div>
          </div>
        </div>

        <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="300">
          <div class="col-xl-9 col-lg-12 mt-4">
            <form action="${root}/question" method="post">
              <div class="form-row">
                <div class="col-md-6 form-group">
                  <input type="text" class="form-control" id="name" placeholder="성함을 남겨주세요." data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validate"></div>
                </div>
                <div class="col-md-6 form-group">
                  <input type="email" class="form-control" id="email" placeholder="답변 드릴 이메일을 남겨주세요." data-rule="email" data-msg="Please enter a valid email" />
                  <div class="validate"></div>
                </div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="어떤 점이 궁금하신가요?" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                <div class="validate"></div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="content" rows="13" data-rule="required" data-msg="Please write something for us" placeholder="조금 더 자세히 말씀해 주세요." style="resize: none"></textarea>
                <div class="validate"></div>
              </div>
              <div class="text-center"><button type="submit"  style="background: #ff5821; border: 0; padding: 10px 24px; color: #fff; transition: 0.4s;">질문 전송</button></div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section --> --%>

  </main><!-- End #main -->

  <%@ include file="include/footer.jsp" %>

</body>

</html>