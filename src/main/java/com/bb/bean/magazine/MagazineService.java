package com.bb.bean.magazine;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MagazineService {
	
	@Autowired
	MagazineDAO magazineDAO;
	
	public int magazineInsert(MagazineDTO magazineDTO)throws Exception{
		return magazineDAO.magazineInsert(magazineDTO);
	}

}
