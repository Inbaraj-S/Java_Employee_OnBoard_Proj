package com.proj;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {

	/**
	 * @param args
	 */
	public  static String toemailaddr;
	
	public static void go(String hodname, String firstname, String lastname,
			String startdate, String username, String password1, String hodemail) 
	{	
				final String username1 = "contactsinbaraj@gmail.com";
				final String password = "inbaselvam";
		 
				Properties props = new Properties();
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.starttls.enable", "true");
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.port", "587");
		 
				Session session = Session.getInstance(props,
				  new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(username1, password);
					}
				  });
		 
				try {
					System.out.println("hod email:"+hodemail);
					Message message = new MimeMessage(session);
					message.setFrom(new InternetAddress("contactsinbaraj@gmail.com"));
					message.setRecipients(Message.RecipientType.TO,
						InternetAddress.parse(hodemail));
					message.setSubject("Testing Subject");
					message.setText("Sir, "+hodname+"\n"+firstname+" "+lastname+" is joining on "+startdate+
							". All the formalities have been completed. The systems have given access to "+firstname+
							". You may communicate the following userid and password for accessing the further commun" +
							"ication regard to application access.\n\n Username is "+username+"\nPassword is "+password1+"\n" +
									"Sincerely,\n\n S Inbaraj,\n Admin");
					Transport.send(message);
		 
					System.out.println("Done mail");
		 
				} catch (Exception e) 
				{
					System.out.println("mailsending failed"+e);
					throw new RuntimeException(e);
				}
	}

}
