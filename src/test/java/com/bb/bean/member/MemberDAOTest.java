package com.bb.bean.member;

import static org.junit.Assert.*;

import java.sql.Date;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.bb.bean.SampleTest;

public class MemberDAOTest extends SampleTest {
	
	@Autowired
	private MemberDAO memberDAO;

	//@Test
	public void memberJoin() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		
		String day = "1996-11-22"; // 형식을 지켜야 함
		java.sql.Date d = java.sql.Date.valueOf(day);
		
		memberDTO.setId("id1");
		memberDTO.setPw("id1");
		memberDTO.setName("id1");
		memberDTO.setNickname("id1");
		memberDTO.setBirthday(d);
		memberDTO.setGender('1');
		memberDTO.setPoint(0);
		
		int result = memberDAO.memberJoin(memberDTO);
		assertEquals(1, result);
	}
	
	
	@Test
	public void memberLogin()throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("admin");
		memberDTO.setPw("admin");
		
		memberDTO = memberDAO.memberLogin(memberDTO);
		assertNotNull(memberDTO);
		
		
		
	}
	
	
	
	
	
}
