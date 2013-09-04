package com.proj;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Tester {

	public static void main(String[] args) {
		
		final String username1 = "contactsinbaraj@gmail.com";
		final String password = "inbaselvam";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,new javax.mail.Authenticator() {
											protected PasswordAuthentication getPasswordAuthentication()
											{
												return new PasswordAuthentication(username1, password);
											}
		  });
 
		try {
			System.out.println("hod email:");
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("contactsinbaraj@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse("pappusingh49@gmail.com"));
			message.setSubject("Testing");
			message.setText("hey \n is joining on . All the formalities have been completed.The systems have given access to  You may communicate the following userid and password for accessing the further communication regard to application access.\n\n username is \npassword is \n +Sincerely,\n\n S Inbaraj,\n HR department");
			Transport.send(message);
 
			System.out.println("Done mail");
 
		} catch (Exception e) 
		{
			System.out.println("mailsending failed"+e);
			throw new RuntimeException(e);
		}
	}
}
