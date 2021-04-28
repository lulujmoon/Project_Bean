package com.bb.bean.point;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PointService {

	@Autowired
	private PointDAO pointDAO;
	
	public List<PointDTO> getList(PointDTO pointDTO) throws Exception {
		return pointDAO.getList(pointDTO);
	}
}
