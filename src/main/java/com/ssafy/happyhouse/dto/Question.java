package com.ssafy.happyhouse.dto;

public class Question {
	private int q_no;
	
	private String id;
	
	private String q_title;
	
	private String q_content;
	
	private String q_time;

	public int getQ_no() {
		return q_no;
	}

	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public String getQ_time() {
		return q_time;
	}

	public void setQ_time(String q_time) {
		this.q_time = q_time;
	}

	@Override
	public String toString() {
		return "Question [q_no=" + q_no + ", id=" + id + ", q_title=" + q_title + ", q_content=" + q_content
				+ ", q_time=" + q_time + "]";
	}
	
	
}
