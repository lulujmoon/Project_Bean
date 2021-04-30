package com.bb.bean.mail;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/mail/**")
public class MailController {
	
	@Autowired
	private MailService mailService;
	
	@GetMapping("mailList")
	public ModelAndView getList()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MailDTO> ar = mailService.getList();
		mv.addObject("list",ar);
		mv.setViewName("mail/mailList");
		return mv;
	}
	
	@GetMapping("sendMail")
	public void sendMail(MailDTO mailDTO)throws Exception{
	
		List<MailDTO> ar = mailService.getList();
		
		System.out.println(ar.get(0)); 
		
		//smtp서버명
	  String host     = "smtp.naver.com";
	  final String user   = "fly5148@naver.com";
	  final String password  = "Wldbsrksk2@";
	  
	  //받는사람메일주소

	  
	  String to  = 
			  			ar.get(0).toString();

	  
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
	   message.setSubject("석희야!@");
	   
	   // Text
	   message.setText("석희야 사랑해");

	   // send the message
	   Transport.send(message);
	   System.out.println("message sent successfully...");

	  } catch (MessagingException e) {
	   e.printStackTrace();
	  }
	  
	 }
	}


