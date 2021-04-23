package com.bb.bean.magazine;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MagazineService {
	
	@Autowired
	MagazineDAO magazineDAO;
	
	public int magazineInsert(MagazineDTO magazineDTO)throws Exception{
		return magazineDAO.magazineInsert(magazineDTO);
	}

	public MagazineDTO magazineSelect(MagazineDTO magazineDTO)throws Exception{
		return magazineDAO.magazineSelect(magazineDTO);
	}
	
	public List<MagazineDTO> magazineList()throws Exception{
		return magazineDAO.magazineList();
	}
}
