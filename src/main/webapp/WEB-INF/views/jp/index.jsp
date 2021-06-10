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
  <%@ include file="/WEB-INF/views/jp/include/header.jsp"%>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container" data-aos="fade-in">
      <h1>いらっしゃいませ.</h1>
      <h2>私たちは不動産に関する要素をお手伝いします。</h2>
      <div class="d-flex align-items-center">
        <i class="bx bxs-right-arrow-alt get-started-icon"></i>
        <a href="#about" class="btn-get-started scrollto">始め</a>
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
                    <h4>周辺相場比較</h4>
                    <p>家の住所を基に、月別の平均実取引価格を確認してください。 他の町とうちの町の実際取引価格の差も比較することができます。</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-cube-alt"></i>
                    <h4>実取引情報照会</h4>
                    <p>全国区実取引情報を提供します。<br>私の家はいくらで売るか、新しい家はいくらで買うか確認してみてください。</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-images"></i>
                    <h4>会員間の情報共有</h4>
                    <p>HAOUSEの会員様と情報交換が可能です。 ログインした後、サービスをご利用ください。</p>
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
            <h4 data-aos="fade-up">私たちのウェブサイトをご紹介いたします。</h4>
            <h3 data-aos="fade-up">SSAFY 5期HAPPYHOUSEプロジェクトを<br>基盤に作られたウェブサイトです。</h3>
            <p data-aos="fade-up">HAOUSEは住宅価格の情報を照会してより効率的に不動産を取引できるようにサポートするために製作されました。</p>

            <div class="icon-box" data-aos="fade-up">
              <div class="icon"><i class="bx bx-fingerprint"></i></div>
              <h4 class="title"><a href="">地域間の相場比較</a></h4>
              <p class="description">私たちは使用者の居住地データを分析するだけでなく、他の地域のデータと比較分析できるようにして使用者の不動産取引においてお手伝いをしています。</p>
            </div>

            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bx bx-gift"></i></div>
              <h4 class="title"><a href="">不動産の実取引情報提供</a></h4>
              <p class="description">不動産の実取引情報を提供することで、ユーザーが取引可能な住宅情報を提供しています。</p>
            </div>

            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="bx bx-atom"></i></div>
              <h4 class="title"><a href="">他のユーザーとのコミュニティ</a></h4>
              <p class="description">ユーザー間のコミュニケーション空間を通して情報を交換することで、より多くの情報を得ることができます。</p>
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
          <h2 data-aos="fade-up">住宅価格教えてティム</h2>
          <p data-aos="fade-up">こんにちは。 僕たちは、住宅価格教えてティムです。サイトHAOUSEで本人または周辺の住宅価格を知らせるためにチーム名を決めました。<br>チーム長と開発を担当するキム·ソビン、開発と発表を担当するソ·グォヌの2名で構成されています。</p>
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
            <h3>キム·ソビン</h3>
            <h4>Main Developer</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              	メイン開発者のキム·ソビンです。
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="${root}/resources/assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
            <h3>ソ·グォンウ</h3>
            <h4>Developer</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              	開発者のソ·グォンウです。
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