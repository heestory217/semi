package com.mytf.GoMember.mail;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class GmailSend {
	
	
	public static void send (String title, String content, String toEmail) throws MessagingException {
		
		Properties p=new Properties();
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.transport.protocol","smtp");
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.user", "fundingoinfoteam");
		p.put("mail.smtp.auth", "true");
		
		Session session=Session.getInstance(p, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				//gmail ID/PW
				//return new PasswordAuthentication("fundingoinfoteam", "vjseldrh123");
				return new PasswordAuthentication("nature881119@gmail.com", "~sda50860");
			}
		});

		MimeMessage msg=new MimeMessage(session);
	
		//Address fromAddr=new InternetAddress("fundingoinfoteam9@gmail.com");
		Address fromAddr=new InternetAddress("nature881119@gmail.com");
		msg.setFrom(fromAddr);
		
		Address toAddr=new InternetAddress(toEmail);
		msg.setRecipient(Message.RecipientType.TO, toAddr);
		
		session.setDebug(true);
		msg.setSubject(title);
		String message=content;
		
		msg.setContent(message, "text/html;charset=euc-kr");
		
		Transport.send(msg);
		
	}
/*
	public static void main(String[] args) {
		
		
		
		send("제목", "내용","메일보낼 계정");
		System.out.println("메일보내기 성공");
	}
*/
	
}
