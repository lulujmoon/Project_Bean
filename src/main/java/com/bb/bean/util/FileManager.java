package com.bb.bean.util;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {

	public String save(String name, MultipartFile multipartFile, HttpSession session) throws Exception {
		
		String path = session.getServletContext().getRealPath("resources/upload/"+name);
		System.out.println(path);
		File file = new File(path);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		String fileName="";
		fileName = UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
		
		file = new File(file, fileName);
		multipartFile.transferTo(file);
		
		
		return fileName;
	}
	
	
	public boolean delete(String name, String fileName, HttpSession session) throws Exception {
		
		String path = session.getServletContext().getRealPath("resources/upload/"+name);
		File file = new File(path, fileName);
		boolean check = false;
		
		if(file.exists()) {
			check = file.delete();
		}
		return check;
	}
}
