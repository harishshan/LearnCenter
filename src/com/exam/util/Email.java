package com.exam.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;

public class Email 
{
	private static final Logger logger = Logger.getLogger(Email.class);
	public void sendMail(String toEmail,String subject,String body)
	{
		try
		{
			logger.info("SendEmail ToEmail:"+toEmail +" Subject:"+subject+" Body:"+body);
			Properties emailProperties = System.getProperties();
	        emailProperties.put("mail.smtp.port", "587");
	        emailProperties.put("mail.smtp.auth", "true");
	        emailProperties.put("mail.smtp.host", "smtp.gmail.com");
	        emailProperties.put("mail.smtp.starttls.enable", "true");
	        emailProperties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	        String from = "chitras72@gmail.com";
	        String password = "28501828bptc";
	        String emailHost = "smtp.gmail.com";
	        logger.debug("FromUser: "+from+" Password: "+password+"EmailHost: "+emailHost+"Email Properties:"+emailProperties.toString());
	        
	        Session mailSession = Session.getDefaultInstance(emailProperties, null);
	        MimeMessage emailMessage = new MimeMessage(mailSession);
	        emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));        
	        emailMessage.setSubject(subject);
	        emailMessage.setContent(body, "text/html");
	        Transport transport = mailSession.getTransport("smtp");
	        transport.connect(emailHost, from, password);
	        transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
	        transport.close();
	        logger.info("Email sent successfully");	        
		}
		catch(AddressException e)
		{
			logger.error(e.toString(),e);
		}
		catch(MessagingException e)
		{
			logger.error(e.toString(),e);
		}
		catch(Exception e)
		{
			logger.error(e.toString(),e);
		}		
    }     
}