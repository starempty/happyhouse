<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.modal {
font-size: small;
}
</style>
<script>
function calculate(){
	document.getElementById("answer").innerHTML = "<h4>25 만원</h4><br>"
}
</script>
<div class="modal fade" id="commissionModal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">중개보수료 계산기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      
      <div class="modal-body"><!--  style="width: 18rem;" -->
      	<div class="card">
		  <div class="card-body">
		    <h5 class="card-title" style="color:red">주택거래시 지불해야 하는 중개보수료를 확인해보세요!!</h5>
		    <p class="card-text">
		    	집을 매매할 때 들어가는 비용은 세금뿐만이 아닙니다. 과다한 중개보수료를 물지 않으려면 <br>
		    	
       			매매, 전세, 월세 등 거래유형별로 중개보수료를 정확히 알고 있어야 피해를 예방할 수 있습니다.
		    </p>
		  </div>
		</div>
		<br>
		<h6 style="color:red">부동산의 종류 및 거래의 유형을 선택하고 거래금액을 입력하신 후 "계산하기" 버튼을 클릭하십시오.</h6>
		※ 출처: 서울시 부동산 중개보수료 및 실비의 기준과 한도 등에 관한 조례
		<table class="table table-bordered">
			<tr>
				<th>부동산<br>종류</th>
				<td>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="type" id="inlineRadio1" value="option1" checked>
					  <label class="form-check-label" for="inlineRadio1">주택</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="type" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">주거용오피스텔(85㎡이하)</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="type" id="inlineRadio3" value="option3">
					  <label class="form-check-label" for="inlineRadio3">주택 외 중개대상물(85㎡ 이상 오피스텔 포함)</label>
					</div>
				</td>
			</tr>
			<tr>
				<th>거래<br>유형</th>
				<td>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="transaction" id="inlineRadio1" value="option1" checked>
					  <label class="form-check-label" for="inlineRadio1">매매/교환</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="transaction" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">임대차(전세)</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="transaction" id="inlineRadio3" value="option3">
					  <label class="form-check-label" for="inlineRadio3">임대차(월세)</label>
					</div>
				</td>
			</tr>
			<tr>
				<th>거래금액</th>
				<td>
					<div class="form-row">
					  <div class="col-3">
					    매매/교환액
					  </div>
					  <div class="col-3">
					    <input type="text" name="price" class="form-control" value="5000">
					  </div>
					  <div class="col">
					    만원
					  </div>
					</div>
				</td>
			</tr>
		</table>
		<div style="text-align:center; width:100%;">
		<div id="answer"></div>
		<button type="button" class="btn btn-primary" onclick="calculate()">계산하기</button>
		</div>
		<div>
	      	<h5><b>주택 수수료율</b></h5>
	      	<table class="table">
	      		<tr>
	      			<th>구분</th>
	      			<th>거래가액</th>
	      			<th>요율(%)</th>
	      			<th>한도액(만원)</th>
	      		</tr>
	      		<tr>
	      			<td rowspan="5">매매<br>교환</td>
	      			<td>5천만원 미만</td>
	      			<td>0.6</td>
	      			<td>25</td>
	      		</tr>
	      		<tr>
	      			<td>5천만원 이상 2억원 미만</td>
	      			<td>0.5</td>
	      			<td>80</td>
	      		</tr>
	      		<tr>
	      			<td>2억원 이상 6억원 미만</td>
	      			<td>0.4</td>
	      			<td>-</td>
	      		</tr>
	      		<tr>
	      			<td>6억원 이상 9억원 미만</td>
	      			<td>0.5</td>
	      			<td>-</td>
	      		</tr>
	      		<tr>
	      			<td>9억원 이상</td>
	      			<td>0.9% 내<br>당사자 간 협의</td>
	      			<td>-</td>
	      		</tr>
	      		<tr>
	      			<td rowspan="5">임대차 등</td>
	      			<td>5천만원 미만</td>
	      			<td>0.5</td>
	      			<td>20</td>
	      		</tr>
	      		<tr>
	      			<td>5천만원 이상 1억원 미만</td>
	      			<td>0.4</td>
	      			<td>30</td>
	      		</tr>
	      		<tr>
	      			<td>1억원 이상 3억원 미만</td>
	      			<td>0.3</td>
	      			<td>-</td>
	      		</tr>
	      		<tr>
	      			<td>3억원 이상 6억원 미만</td>
	      			<td>0.4</td>
	      			<td>-</td>
	      		</tr>
	      		<tr>
	      			<td>6억원 이상</td>
	      			<td>0.8% 내<br>당사자 간 협의</td>
	      			<td>-</td>
	      		</tr>
	      	</table>
      	</div>
      	<div>
	      	<h5><b>주택 월세 수수료율</b></h5>
	      	<table class="table">
	      		<tr>
	      			<th>거래가액</th>
	      			<th>요율</th>
	      		</tr>
	      		<tr>
	      			<td>「보증금+(월세액X100)」≥ 5천만원</td>
	      			<td>임대차 수수료율 적용</td>
	      		</tr>
	      		<tr>
	      			<td>「보증금+(월세액×100)」〈 5천만 원일 경우「보증금+(월세액×70)」으로 계산</td>
	      			<td>임대차 수수료율 적용</td>
	      		</tr>
	      	</table>
      	</div>
      	<div>
	      	<h5><b>오피스텔 수수료율</b></h5>
	   		(전용면적 85㎡이하, 전용 입식부엌ㆍ화장실ㆍ목욕시설을 갖춘 경우에 한함)
	      	<table class="table">
	      		<tr>
	      			<th>구분</th>
	      			<th>요율(%)</th>
	      		</tr>
	      		<tr>
	      			<td>매매/교환</td>
	      			<td>0.5</td>
	      		</tr>
	      		<tr>
	      			<td>임대차 등</td>
	      			<td>0.4</td>
	      		</tr>
	      	</table>
      	</div>
      	<div>
	      	<h5><b>주택 외 중개대상물 수수료율</b></h5>
	      	<table class="table">
	      		<tr>
	      			<th>구분</th>
	      			<th>거래가액</th>
	      			<th>요율</th>
	      		</tr>
	      		<tr>
	      			<td>매매<br>교환</td>
	      			<td>금액 기준 없음</td>
	      			<td>0.9% 내 당사자간 협의</td>
	      		</tr>
	      	</table>
      	</div>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>