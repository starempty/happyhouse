package com.ssafy.happyhouse.dto;

public class User {
	private String id; // PK
	private String pass;
	private String uName;
	private String uAddress;
	private String phoneNum;
	private String email;
	private boolean admin;
	
	public User() {
		
	}
	
	public User(String id, String pass, String uName, String uAddress, String phoneNum, String email, boolean admin) {
		setId(id);
		setPass(pass);
		setuName(uName);
		setuAddress(uAddress);
		setPhoneNum(phoneNum);
		setEmail(email);
		setAdmin(admin);
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuAddress() {
		return uAddress;
	}

	public void setuAddress(String uAddress) {
		this.uAddress = uAddress;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", pass=" + pass + ", uName=" + uName + ", uAddress=" + uAddress + ", phoneNum="
				+ phoneNum + ", email=" + email + ", admin=" + admin + "]";
	}
	
}
