package com.bb.bean.location;

import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.bb.bean.SampleTest;

public class LocationDAOTest extends SampleTest{
	
	@Autowired
	private LocationDAO locationDAO;
	
	//@Test -OK
	public void getListTest() throws Exception{
		List<LocationDTO> ar = locationDAO.getList();
		assertNotEquals(0, ar.size());
	}
	
	//@Test - OK
	public void getSelectTest()throws Exception{
		LocationDTO	locationDTO = new LocationDTO();
		locationDTO.setStoreName("카카오");
		locationDTO = locationDAO.getSelect(locationDTO);
		assertNotNull(locationDTO);
	}
	
}
