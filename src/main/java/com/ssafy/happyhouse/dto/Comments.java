package com.ssafy.happyhouse.dto;

public class Comments {
	private int comment_no;
	
	private String user_id;
	
	private String user_name;
	
	private String comment;
	
	private String comment_time;
	
	private int q_no;
	
	public int getComment_no() {
		return comment_no;
	}
	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getComment_time() {
		return comment_time;
	}
	public void setComment_time(String comment_time) {
		this.comment_time = comment_time;
	}
	public int getQ_no() {
		return q_no;
	}
	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}
	@Override
	public String toString() {
		return "Comments [comment_no=" + comment_no + ", user_id=" + user_id + ", user_name=" + user_name + ", comment="
				+ comment + ", comment_time=" + comment_time + ", q_no=" + q_no + "]";
	}
	
	
}
