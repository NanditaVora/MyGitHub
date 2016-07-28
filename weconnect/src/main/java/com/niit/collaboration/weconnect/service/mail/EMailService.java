package com.niit.collaboration.weconnect.service.mail;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.messaging.MessagingException;
import org.springframework.stereotype.Service;

import com.niit.collaboration.weconnect.model.security.User;

@Service
public class EMailService {

	public static final String REPLY_TO_ADDRESS = "dontreply@weconnect.com";
	public static final String FROM_ADDRESS="registration@weconnect.com";
	
	
	@Autowired
	private JavaMailSender javaMailSender;
	
	public void send(User user, String subject, String body) throws MessagingException, javax.mail.MessagingException
	{
		System.out.println("Sending EMail");
		MimeMessage mail =  javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mail,null);
		helper.setTo(user.getEmail());
		helper.setReplyTo(REPLY_TO_ADDRESS);
		helper.setFrom(FROM_ADDRESS);
		helper.setSubject(subject);
		helper.setText(body);
		javaMailSender.send(mail);
		
	}
}
