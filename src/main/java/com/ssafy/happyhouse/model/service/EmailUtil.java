package com.ssafy.happyhouse.model.service;

public interface EmailUtil {
	void sendEmail(String toAddress, String subject, String body);
}
