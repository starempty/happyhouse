package com.ssafy.happyhouse.dto;

public class Dong {
	private String dongcode;
	private String city;
	private String gugun;
	private String dong;
	public String getDongcode() {
		return dongcode;
	}
	public void setDongcode(String dongcode) {
		this.dongcode = dongcode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	@Override
	public String toString() {
		return "Dong [dongcode=" + dongcode + ", city=" + city + ", gugun=" + gugun + ", dong=" + dong + "]";
	}

	
}
