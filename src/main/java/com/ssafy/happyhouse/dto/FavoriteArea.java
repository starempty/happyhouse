package com.ssafy.happyhouse.dto;

public class FavoriteArea {
	private String user_id;
	private int house_no;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getHouse_no() {
		return house_no;
	}
	public void setHouse_no(int house_no) {
		this.house_no = house_no;
	}
	public FavoriteArea(String user_id, int house_no) {
		super();
		this.user_id = user_id;
		this.house_no = house_no;
	}
	@Override
	public String toString() {
		return "FavoriteArea [user_id=" + user_id + ", house_no=" + house_no + "]";
	}
	
	
}
