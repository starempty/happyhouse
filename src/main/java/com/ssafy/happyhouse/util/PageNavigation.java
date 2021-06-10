package com.ssafy.happyhouse.util;

public class PageNavigation {

	private int startPage;
	private int endPage;
	private boolean startRange; // 이전 버튼 관리.
	private boolean endRange; // 다음 버튼 관리.
	private int totalCount; // 총 글의 갯수.
	private int newCount;
	private int totalPageCount; // 총 페이지수.
	private int currentPage; // 현재 페이지 번호.
	private int naviSize = 5; // 네비게이션 사이즈.
	private int countPerPage = 10;
	private String navigator;

	public PageNavigation(int currentPage, int totalCount) {
		makeNavigator(currentPage, totalCount);
	}
	
	public boolean isStartRange() {
		return startRange;
	}

	public void setStartRange(boolean startRange) {
		this.startRange = startRange;
	}

	public boolean isEndRange() {
		return endRange;
	}

	public void setEndRange(boolean endRange) {
		this.endRange = endRange;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getNewCount() {
		return newCount;
	}

	public void setNewCount(int newCount) {
		this.newCount = newCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getNaviSize() {
		return naviSize;
	}

	public void setNaviSize(int naviSize) {
		this.naviSize = naviSize;
	}

	public String getNavigator() {
		return navigator;
	}

	public int getCountPerPage() {
		return countPerPage;
	}

	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public void makeNavigator(int currentPage, int totalCount) {
		// pageNation의 currentPage를 설정한다.
		this.setCurrentPage(currentPage);
		// pageNation의 totalCount를 설정한다.
		this.setTotalCount(totalCount);
		// pageNation의 countPerPage를 설정한다.
		this.setCountPerPage(countPerPage);
		// totalPageCount를 계산한다.
		int totalPageCount = (totalCount - 1) / countPerPage + 1;
		// pageNation의 totalPageCount를 설정한다.
		this.setTotalPageCount(totalPageCount);

		// pageNavigation의 시작 페이지를 계산해서 설정한다.
		this.setStartPage((currentPage - 1) / naviSize * naviSize + 1);
		// pageNavigation의 endPage를 계산해서 설정한다.
		this.setEndPage(this.getStartPage() + naviSize - 1);
		// 만약 totalPageCount가 위에서 계산한 값보다 작다면 totalPageCount로 설정한다.
		if (totalPageCount < this.getEndPage()) {
			this.setEndPage(totalPageCount);
		}
		// pageNation의 startRange를 계산해서 설정한다.
		this.setStartRange(currentPage <= naviSize);
		// pageNation의 endRange를 계산해서 설정한다.
		boolean endRange = (totalPageCount - 1) / naviSize * naviSize < currentPage;
		this.setEndRange(endRange);
	}

	@Override
	public String toString() {
		return "PageNavigation [startPage=" + startPage + ", endPage=" + endPage + ", startRange=" + startRange
				+ ", endRange=" + endRange + ", totalCount=" + totalCount + ", newCount=" + newCount
				+ ", totalPageCount=" + totalPageCount + ", currentPage=" + currentPage + ", naviSize=" + naviSize
				+ ", countPerPage=" + countPerPage + ", navigator=" + navigator + "]";
	}
	
	

}
