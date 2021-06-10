package com.ssafy.happyhouse.dto;

import java.text.DecimalFormat;

public class House {
	private int no; // 번호 (PK)
	private String dong; // 동
	private String aptName; // 아파트이름
	private String lat; // 위도
	private String lng; // 경도
	private String code;
	private String dealAmount; // 거래금액
	private String dealYear; // 거래연
	private String dealMonth; // 거래월
	private String dealDay; // 거래일
	private String area; // 면적
	private String buildYear; // 면적
	

	public House() {

	}

	public House(int no, String dong, String aptName, String dealAmount, String dealYear, String dealMonth,
			String dealDay, String area, String lat, String lng, String buildYear, String code) {
		setNo(no);
		setDong(dong);
		setAptName(aptName);
		setDealAmount(dealAmount);
		setDealYear(dealYear);
		setDealMonth(dealMonth);
		setDealDay(dealDay);
		setArea(area);
		setLat(lat);
		setLng(lng);
		setCode(code);
		setBuildYear(buildYear);
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getAptName() {
		return aptName;
	}

	public void setAptName(String aptName) {
		this.aptName = aptName;
	}

	public String getDealAmount() {
		return dealAmount;
	}

	public void setDealAmount(String dealAmount) {
		DecimalFormat formatter = new DecimalFormat("###,###");
		this.dealAmount = formatter.format(Double.parseDouble(dealAmount));
	}

	public String getDealYear() {
		return dealYear;
	}

	public void setDealYear(String dealYear) {
		this.dealYear = dealYear;
	}

	public String getDealMonth() {
		return dealMonth;
	}

	public void setDealMonth(String dealMonth) {
		this.dealMonth = dealMonth;
	}

	public String getDealDay() {
		return dealDay;
	}

	public void setDealDay(String dealDay) {
		this.dealDay = dealDay;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	public String getBuildYear() {
		return buildYear;
	}
	
	public void setBuildYear(String buildYear) {
		this.buildYear = buildYear;
	}

	@Override
	public String toString() {
		return "House [no=" + no + ", dong=" + dong + ", aptName=" + aptName + ", lat=" + lat + ", lng=" + lng
				+ ", dealAmount=" + dealAmount + ", dealYear=" + dealYear + ", dealMonth=" + dealMonth + ", dealDay="
				+ dealDay + ", area=" + area + ", buildYear=" + buildYear + "]";
	}

}
