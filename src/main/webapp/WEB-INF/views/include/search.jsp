<%@ page contentType="text/html; charset=UTF-8"%>
<!-- <style>
form>label, form>select, form>input {
	margin-right: 10px !important;
}
</style> -->
<%-- <form method="get" action="${root}/list" id="searchForm"
	class="form-inline">
	<!-- 현재의 페이지 정보를 hidden으로 관리한다. -->
	<input type="hidden" name="currentPage" id="currentPage"> <label>검색
		컬럼:</label> 
		
		
	<select name="key" id="key" class="form-control">
		<option value="none">선택</option>
		<option value="articleNo">글번호</option>
		<option value="subject">제목</option>
		<option value="content">내용</option>
	</select> 
	
	<label>검색어:</label> <input type="text" name="word" id="word"
		class="form-control">
	<!-- 클릭 시 전송되는 것을 막기 위해 type은 submit이 아니라 button이다. -->
	<input type="button" value="검색" class="btn btn-primary" id="btnSearch">
</form> --%>

<div class="sidebar-item search-form">
	<form action="${root}/list" method="get" id="searchForm">
		<input type="hidden" name="currentPage" id="currentPage">
		<input type="hidden" name="key" id="key" value="content">
		<input type="text" name="word" id="word" placeholder="내용을 입력하세요.">
		<button type="button" id="btnSearch">
			<i class="icofont-search" id="btnSearch"></i>
		</button>
	</form>
</div>
<script>
	// <select>요소에서 value 기준으로 <option>을 선택한다.
	/* function selectOptionByValue(selectId, value) {
		let select = document.querySelector("#" + selectId)
		let opts = select.options;
		for (let i = 0; i < opts.length; i++) {
			if (opts[i].value == value) {
				select.selectedIndex = i;
				break;
			}
		}
	} */
	// 전달받은 SearchCondition을 화면에 설정하는 함수를 만든다.
	/* function setSearchCondition() {
		selectOptionByValue("key", "${searchCondition.key}");
		document.querySelector("#word").value = "${searchCondition.word}"
		document.querySelector("#currentPage").value = "${searchCondition.currentPage}"
	} */
	// 화면 정보를 설정한다.
	// setSearchCondition();

	// page를 이용해서 자료를 검색한다. 함수 호출은 paging.jsp에서 이뤄진다.
	function movePage(page) {
		// currentPage에 전달받은 page를 저장한다.
		document.querySelector("#currentPage").value = page;
		// searchForm을 submit 시킨다.
		document.querySelector("#searchForm").submit();
	}

	// btnSearch가 클릭되면 currentPage를 1로 해서 검색 조건으로 검색한다.
	document.querySelector("#btnSearch").addEventListener("click", function() {
		console.log("click")
		movePage(1);
	})
</script>