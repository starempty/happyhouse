package com.ssafy.happyhouse.dto;

public class Notice {
	private int articleNo; // PK
	private int viewCnt;
	private String subject; // 제목
	private String content; // 내용
	private String regtime; // 등록시간
	private String id; // 글쓴이

	public Notice() { }
	
	public Notice(int articleNo, int viewCnt, String subject, String content, String regtime, String id) {
		setArticleNo(articleNo);
		setViewCnt(viewCnt);
		setSubject(subject);
		setContent(content);
		setRegtime(regtime);
		setId(id);
	}

	public int getArticleNo() {
		return articleNo;
	}

	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}
	
	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegtime() {
		return regtime;
	}

	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Notice [articleNo=" + articleNo + ", viewCnt=" + viewCnt + ", subject=" + subject + ", content="
				+ content + ", regtime=" + regtime + ", id=" + id + "]";
	}
}
