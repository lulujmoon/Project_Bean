package com.bb.bean.mail;

import java.lang.ProcessBuilder.Redirect;
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
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bb.bean.magazine.MagazineDTO;
import com.bb.bean.magazine.MagazineService;



@Controller
@RequestMapping("/mail/**")
public class MailController {
	
	@Autowired
	private MailService mailService;
	@Autowired
	private MagazineService magazineService;
	
	@GetMapping("mailList")
	public ModelAndView getList()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MailDTO> ar = mailService.getList();
		mv.addObject("list",ar);
		mv.setViewName("mail/mailList");
		return mv;
	}
	
	@PostMapping("mailInsert")
	public ModelAndView setInsert(MailDTO mailDTO, ModelAndView mv,String mAddr)throws Exception{
		
		try {
		int result = mailService.setInsert(mailDTO);

		if(result==1) {
			String msg="구독이 완료되었습니다";
			mv.addObject("path","../");
			mv.addObject("msg",msg);
			mv.setViewName("common/commonResult");		
		}
		}catch(DuplicateKeyException e) {
			String msg="이미 구독중입니다";
			mv.addObject("path","../");
			mv.addObject("msg",msg);
			mv.setViewName("common/commonResult");	
		}
		
		  return mv;

	}
	
	@GetMapping("sendMail")
	public ModelAndView sendMail(MailDTO mailDTO, ModelAndView mv)throws Exception{
	
		List<MailDTO> ar = mailService.getList();
		
		System.out.println(ar.get(0)); 
		
		//smtp서버명
	  String host     = "smtp.naver.com";
	  final String user   = "test4913@naver.com";
	  final String password  = "Test4913";
	  
	  //받는사람메일주소

	  for(int i=0; i<ar.size();i++) {
		  String to = ar.get(i).getmAddr();
	  
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
	   MagazineDTO magazineDTO = new MagazineDTO();
	   magazineDTO.setNum(1);
	   magazineDTO = magazineService.magazineSelect(magazineDTO);
	   message.setSubject(magazineDTO.getTitle());
	   
	   // Text
	   message.setContent(magazineDTO.getContents(),"text/html; charset=UTF-8");

	   // send the message
	   Transport.send(message);
	   System.out.println("message sent successfully...");
	   
	

	  } catch (MessagingException e) {
	   e.printStackTrace();
	  }
	  
	 }
	  
	  String msg="발송되었습니다";
	  mv.addObject("path","../admin/mailList");
	  mv.addObject("msg",msg);
	  mv.setViewName("common/commonResult");
	  return mv;
	}
	
	
	
}

