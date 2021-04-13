package com.bb.bean;

import static org.junit.Assert.*;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class ConnectionTest extends SampleTest{
	
	@Autowired
	private DataSource dataSource;

	@Test
	public void connectionTest() throws Exception{
		dataSource.getConnection();
		}
}
