package com.bb.bean.magazine;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bb.bean.product.ProductDTO;
import com.bb.bean.product.ProductFileDTO;
import com.bb.bean.util.FileManager;

@Service
public class MagazineService {
	
	@Autowired
	MagazineDAO magazineDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	private FileManager fileManager;
	
	public int magazineInsert(MagazineDTO magazineDTO,MultipartFile file)throws Exception{
		
		long num = magazineDAO.getNum();
		String fileName = fileManager.save("magazineT", file, session);
		magazineDTO.setNum(num);
		MagazineFileDTO magazineFileDTO = new MagazineFileDTO();
		magazineFileDTO.setNum(num);
		magazineFileDTO.setOrigineName(file.getOriginalFilename());
		magazineFileDTO.setFileName(fileName);
		
		int result=magazineDAO.magazineInsert(magazineDTO);
		result = magazineDAO.setFileInsert(magazineFileDTO);
				
		return result;
	}
	
	public MagazineDTO magazineSelect(MagazineDTO magazineDTO)throws Exception{
		return magazineDAO.magazineSelect(magazineDTO);
	}
	
	public List<MagazineDTO> magazineList(MagazineDTO magazineDTO)throws Exception{
		return magazineDAO.magazineList(magazineDTO);
	}
	
	public String summerFileUpload(MultipartFile multipartFile) throws Exception {
		return fileManager.save("magazine", multipartFile, session);
	}

	public boolean summerFileDelete(String fileName) throws Exception {
		return fileManager.delete("magazine", fileName, session);
	}

}
