<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- ======= Footer ======= -->
  <footer id="footer"  data-aos="fade-up">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>HAOUSE</h3>
            <p>
            	경북 구미시<br>
               	3공단 3로 302<br><br>
              <strong>연락처:</strong> +82 02 3429 5100<br>
              <strong>이메일 :</strong> ssafy@ssafy.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Sitemap</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="${root}/">홈</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="${root}/#about">HAOUSE 소개</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="${root}/#team">팀 구성</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="${root}/searchDong">동별 실거래가 정보</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="${root}/list">공지사항</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
          <h4>&nbsp;</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">동별 실거래가 정보</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">아파트별 실거래가 정보</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">주변 지역 월평균 실거래가 시각화</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">주변 상권 조회</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">회원 커뮤니티</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Newsletter 정기 구독</h4>
            <p>매달 새로운 소식을 이메일로 보내드릴게요<br> 원하시면 이메일을 보내 구독해주세요 ☺</p>
            <form action="${root}/sendMail" method="get">
              	<input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container d-lg-flex py-4">

      <div class="mr-lg-auto text-center text-lg-left">
        <div class="copyright">
          &copy; Copyright <strong><span>Flexor, ksbjjang333, rnjsdn2481</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/flexor-free-multipurpose-bootstrap-template/ -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
      <div class="social-links text-center text-lg-right pt-3 pt-lg-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
  <!-- Vendor JS Files -->
  <script src="${root}/resources/assets/vendor/jquery/jquery.min.js"></script>
  <script src="${root}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${root}/resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="${root}/resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="${root}/resources/assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="${root}/resources/assets/vendor/venobox/venobox.min.js"></script>
  <script src="${root}/resources/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="${root}/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${root}/resources/assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="${root}/resources/assets/js/main.js"></script>