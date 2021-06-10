<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.modal {
font-size: small;
}
</style>
<script>
function calculateTax(){
	document.getElementById("answer2").innerHTML = "<h5>84,875,000원</h5><br>";
		/* "<div class='card'><div class='card-body'><p class='card-text'>1. 과세표준(취득가액)	2,425,000,000원.<br>2. 취득세	72,750,000원<br>3. 교육세	7,275,000원<br>4. 농어촌특별세	4,850,000원<br>세금합계	84,875,000원<br></p></div></div>"
 */}
</script>
<div class="modal fade" id="taxModal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">취득세 계산기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      
      <div class="modal-body"><!--  style="width: 18rem;" -->
		<p style="color:red">※ 본 계산은 실제 취득세와 다를 수 있으므로 참고용으로만 활용하시기 바랍니다.</p>
		<table class="table table-bordered">
			<tr>
				<th>취득방법</th>
				<td>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="type" id="inlineRadio1" value="option1" checked>
					  <label class="form-check-label" for="inlineRadio1">매매/교환</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="type" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">신축</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="type" id="inlineRadio3" value="option3">
					  <label class="form-check-label" for="inlineRadio3">상속</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="type" id="inlineRadio3" value="option3">
					  <label class="form-check-label" for="inlineRadio3">증여</label>
					</div>
				</td>
			</tr>
			<tr>
				<th>보유주택수</th>
				<td>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="transaction" id="inlineRadio1" value="option1" checked>
					  <label class="form-check-label" for="inlineRadio1">무주택</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="transaction" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">1주택</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="transaction" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">2주택</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="transaction" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">3주택</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="transaction" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">4주택 이상</label>
					</div>
				</td>
			</tr>
			<tr>
				<th>취득가액</th>
				<td>
					<div class="form-row">
					  <div class="col-5">
					   	<input type="text" name="price" class="form-control" value="242,500">
					  </div>
					  <div class="col-2">
					  	만원
					  </div>
					   	<p style="color:red">입력 예: 1억8천만원 → 18,000 만원</p>
					</div>
				</td>
			</tr>
			<tr>
				<th>전용면적</th>
				<td>
					<div class="form-row">
					  <div class="col-5">
					   	<select name="price" class="form-control">
					   		<option>전용면적 85㎡ 이하</option>
					   		<option>전용면적 85㎡ 초과</option>
					   	</select>
					  </div>
					</div>
				</td>
			</tr>
		</table>
		<div style="text-align:center; width:100%;">
		<div id="answer2"></div>
		<button type="button" class="btn btn-primary" onclick="calculateTax()">계산하기</button>
		</div>
		<br><br>
		<div class="card">
		  <div class="card-body">
		    <p class="card-text">
		    	<b>취득가액은 원칙적으로 '실거래가액'을 과세표준으로 적용합니다.</b><br>
		    	1. 실거래가액이 기준시가에 미달할 경우 : 기준시가를 과세표준으로 합니다.<br>
		    	2. 주택거래신고지역은 반드시 실거래가로 적용합니다.<br>
		    	3. 신규분양받은 아파트의 경우 : 분양가를 과세표준으로 적용합니다.<br>
		    </p>
		  </div>
		</div>
		<br><br>
		<div>
			<h5 style="text-align:center"><i class="icofont-checked"></i><b>부동산 취득세 요율표(참고)</b></h5>
	      	<h5><b>매매/교환</b></h5>
	      	<table class="table">
	      		<tr>
	      			<th>취득가액</th>
	      			<th>전용면적</th>
	      			<th>취득세</th>
	      			<th>지방교육세</th>
	      			<th>농어촌특별세</th>
	      		</tr>
	      		<tr>
	      			<td rowspan="2">6억이하</td>
	      			<td>85㎡이하</td>
	      			<td>1.0%</td>
	      			<td>0.1%</td>
	      			<td>비과세</td>
	      		</tr>
	      		<tr>
	      			<td>85㎡초과</td>
	      			<td>1.0%</td>
	      			<td>0.1%</td>
	      			<td>0.2%</td>
	      		</tr>
	      		<tr>
	      			<td rowspan="2">9억이하</td>
	      			<td>85㎡이하</td>
	      			<td>2÷3×취득가액÷1억-3</td>
	      			<td>취득세율×10%</td>
	      			<td>비과세</td>
	      		</tr>
	      		<tr>
	      			<td>85㎡초과</td>
	      			<td>2÷3×취득가액÷1억-3</td>
	      			<td>취득세율×10%</td>
	      			<td>0.2%</td>
	      		</tr>
	      		<tr>
	      			<td rowspan="2">9억초과</td>
	      			<td>85㎡이하</td>
	      			<td>3.0%</td>
	      			<td>0.3%</td>
	      			<td>비과세</td>
	      		</tr>
	      		<tr>
	      			<td>85㎡초과</td>
	      			<td>3.0%</td>
	      			<td>0.3%</td>
	      			<td>0.2%</td>
	      		</tr>
	      		<tr>
	      			<td rowspan="2">1세대<br>4주택이상</td>
	      			<td>85㎡이하</td>
	      			<td>4.0%</td>
	      			<td>0.4%</td>
	      			<td>비과세</td>
	      		</tr>
	      		<tr>
	      			<td>85㎡초과</td>
	      			<td>4.0%</td>
	      			<td>0.4%</td>
	      			<td>0.2%</td>
	      		</tr>
	      	</table>
      	</div>
      	<div>
	      	<h5><b>신축</b></h5>
	      	<table class="table">
	      		<tr>
	      			<th>구분</th>
	      			<th>전용면적</th>
	      			<th>취득세</th>
	      			<th>지방교육세</th>
	      			<th>농어촌특별세</th>
	      		</tr>
	      		<tr>
	      			<td rowspan="2">주택</td>
	      			<td>85㎡이하</td>
	      			<td>2.8%</td>
	      			<td>0.16%</td>
	      			<td>비과세</td>
	      		</tr>
	      		<tr>
	      			<td>85㎡초과</td>
	      			<td>2.8%</td>
	      			<td>0.16%</td>
	      			<td>0.2%</td>
	      		</tr>
	      	</table>
      	</div>
      	<div>
	      	<h5><b>상속</b></h5>
	      	<table class="table">
	      		<tr>
	      			<th>구분</th>
	      			<th>전용면적</th>
	      			<th>취득세</th>
	      			<th>지방교육세</th>
	      			<th>농어촌특별세</th>
	      		</tr>
	      		<tr>
	      			<td colspan="2">무주택자</td>
	      			<td>0.8%</td>
	      			<td>0.16%</td>
	      			<td>비과세</td>
	      		</tr>
	      		<tr>
	      			<td rowspan="2">유주택자</td>
	      			<td>85㎡이하</td>
	      			<td>2.8%</td>
	      			<td>0.16%</td>
	      			<td>비과세</td>
	      		</tr>
	      		<tr>
	      			<td>85㎡초과</td>
	      			<td>2.8%</td>
	      			<td>0.16%</td>
	      			<td>0.2%</td>
	      		</tr>
	      	</table>
      	</div>
      	<div>
	      	<h5><b>증여</b></h5>
	      	<table class="table">
	      		<tr>
	      			<th>구분</th>
	      			<th>전용면적</th>
	      			<th>취득세</th>
	      			<th>지방교육세</th>
	      			<th>농어촌특별세</th>
	      		</tr>
	      		<tr>
	      			<td rowspan="2">주택</td>
	      			<td>85㎡이하</td>
	      			<td>3.5%</td>
	      			<td>0.3%</td>
	      			<td>비과세</td>
	      		</tr>
	      		<tr>
	      			<td>85㎡초과</td>
	      			<td>3.5%</td>
	      			<td>0.3%</td>
	      			<td>0.2%</td>
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