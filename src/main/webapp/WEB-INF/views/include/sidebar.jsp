<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.quick_menu { 
	position: absolute; 
	right: 150px; 
	top: 370px; 
	width: 115px; 
	height: 395px; 
	border: 1px solid #ddd; 
	background: #fff; 
	font-weight: bold; 
	color: #000; 
	text-align: center;
	box-shadow: 0px 2px 15px rgb(0 0 0 / 10%);
	padding-top:10px;
	padding-bottom:10px;
	font-family: "Poppins", sans-serif;
}

.quick_menu button{
    border: 0;
    background: none;
    font-size: 16px;
    background: #ff5821;
    color: #fff;
    transition: 0.3s;
    width: 90px;
    height: 50px;
    box-shadow: 0px 2px 15px rgb(0 0 0 / 10%);
    font-size: small;
    margin-top:5px;
    margin-bottom:7px;
    
}
#recent div{
height:72px;
}

#danwe{
text-align: right; 
padding-top: 2px; 
font-weight:bold; 
color: #000; 
padding-right:8px;
}

.input{
	margin-left:15px;
}
</style>
<script type="text/javascript" src="${root}/js/sidebar.js"></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var $quickMenu = $('.quick_menu');                  // quick_menu 변수 선언
            // 스크롤 이벤트 발생
            $(window).scroll(function () {                      
                var scrollValue = $(window).scrollTop();        // 스크롤 위치 변수 선언
                // 퀵메뉴 가운데 위치값 계산
                var centerPosition = ( $(window).height() - $quickMenu.height() ) / 2 + $(window).scrollTop();
                if ( scrollValue < 170 ) {                      // 스크롤 위치값이 100 이하
                   $quickMenu.stop().animate({ 'top' : 370 + 'px' }, 1000);
                }else if ( scrollValue > 370 ) {               // 스크롤 위치값이 100 이상
                   $quickMenu.stop().animate({ 'top' : centerPosition + 'px' }, 1000);
               	}
            });
        });
    </script>
<div class="quick_menu" data-aos="fade-up">
	<!-- 최근 본 매물 -->
	<!-- <button>최근 본 매물</button>
		<div style="margin-top:5px;" id="recent">
			<div>강남구 개포동 머시기번지</div>
			<div>강남구 개포동 머시기번지</div>
		</div> -->
	Quick<br>check!
	<hr>
	<div style="margin-bottom: 10px">
		<div>
			<!-- 한 input 값이 들어갈 div -->
			<table width="100%" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td style="text-align: left;"><input id="area_m"
							class="input" type="text" onkeypress="num_only()" maxlength="5"
							style="color: #ff5725; font-weight: bold; ime-mode: disabled; text-align: right; cursor: text; height: 15px; padding: 0px; width: 72px; border-width: 0px;">
						</td>
						<td id="danwe" >㎡&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<button onclick="javascript:onClickCalcul();">계산하기&nbsp;<i class="icofont-check-circled"></i></button>
		</div>
		<div>
			<table width="100%" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td style="text-align: left;"><input id="area_pyung"
							class="input" type="text" onkeypress="num_only()" maxlength="5"
							style="color: #ff5725; font-weight: bold; ime-mode: disabled; text-align: right; cursor: text; height: 15px; padding: 0px; width: 72px; border-width: 0px;">
						</td>
						<td id="danwe" style="text-align: right; padding-top: 2px;font-weight:bold; color: #000; ">평&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<table width="100%" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td style="text-align: left;"><input id="area_ft"
							class="input" type="text" onkeypress="num_only()" maxlength="5"
							style="color: #ff5725; font-weight: bold; ime-mode: disabled; text-align: right; cursor: text; height: 15px; padding: 0px; width: 72px;; border-width: 0px;">
						</td>
						<td id="danwe" style="text-align: right; padding-top: 2px;font-weight:bold; color: #000; ">ft²&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<table width="100%" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td style="text-align: left;"><input id="area_yd"
							class="input" type="text" onkeypress="num_only()" maxlength="5"
							style="color: #ff5725; font-weight: bold; ime-mode: disabled; text-align: right; cursor: text; height: 15px; padding: 0px; width: 72px; border-width: 0px;">
						</td>
						<td id="danwe" style="text-align: right; padding-top: 2px;font-weight:bold; color: #000; ">d²&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div><!-- onclick="javascript:calcMoney('sale_prc');void(0);" onclick="javascript:calcMoney('boo_money');void(0);"-->
	<button data-toggle="modal" data-target="#taxModal">취득세<br>
		계산기</button>
	<button data-toggle="modal" data-target="#commissionModal">
		중개보수료<br>계산기
	</button>
</div>