package com.ssafy.happyhouse.model.service;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;

@Component
public class EmailUtilImpl implements EmailUtil {
	@Autowired
	private JavaMailSender sender;

	@Override
	public void sendEmail(String toAddress, String subject, String body) {
		SimpleMailMessage simplemsg = new SimpleMailMessage();
		simplemsg.setTo(toAddress);
		simplemsg.setSubject(subject);
		simplemsg.setText(body);
		sender.send(simplemsg);
	}
}
