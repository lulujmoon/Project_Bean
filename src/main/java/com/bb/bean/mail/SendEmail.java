package com.bb.bean.mail;

	import java.util.Properties;

	import javax.mail.Message;
	import javax.mail.MessagingException;
	import javax.mail.PasswordAuthentication;
	import javax.mail.Session;
	import javax.mail.Transport;
	import javax.mail.internet.InternetAddress;
	import javax.mail.internet.MimeMessage;

	public class SendEmail {
	 public static void main(String[] args) {

		 //smtp서버명
	  String host     = "smtp.naver.com";
	  final String user   = "fly5148";
	  final String password  = "Wldbsrksk2@";
	  
	  //받는사람메일주소
	  String to     = "dbstjrgml91@gmail.com";

	  
	  // Get the session object
	  Properties props = new Properties();
	  props.put("mail.smtp.host", host);
	  props.put("mail.smtp.auth", "true");

	  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	   protected PasswordAuthentication getPasswordAuthentication() {
	    return new PasswordAuthentication(user, password);
	   }
	  });

	  // Compose the message
	  try {
	   MimeMessage message = new MimeMessage(session);
	   message.setFrom(new InternetAddress(user));
	   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

	   // Subject
	   message.setSubject("석희에게");
	   
	   // Text
	   message.setText("석희야 안녕");

	   // send the message
	   Transport.send(message);
	   System.out.println("message sent successfully...");

	  } catch (MessagingException e) {
	   e.printStackTrace();
	  }
	 }
	}

