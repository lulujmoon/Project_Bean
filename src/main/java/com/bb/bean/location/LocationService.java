package com.bb.bean.location;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

@Service
public class LocationService {
	
	//DAO에 의존적
	@Autowired
	private LocationDAO locationDAO;
	
	public List<LocationDTO> getList() throws Exception{
		return locationDAO.getList();
	}
	
	public LocationDTO getSelect(LocationDTO locationDTO) throws Exception{
		return locationDAO.getSelect(locationDTO);
	}
}
