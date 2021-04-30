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
	
	public int magazineUpdate(MagazineDTO magazineDTO,MultipartFile file)throws Exception{
		int result=0;
		//새로운 이미지를 넣었다면 실행
		if(file.getOriginalFilename().length()!=0) {
			//존재하는 이미지 삭제
			MagazineDTO magazineDTO2 = magazineDAO.magazineSelect(magazineDTO);

			if(magazineDTO2.getListImage()!=null) {
				String delFileName = magazineDTO2.getListImage().getFileName();
				boolean check = fileManager.delete("magazineT", delFileName, session);

				MagazineFileDTO magazineFileDTO = new MagazineFileDTO();
				magazineFileDTO.setFileName(magazineDTO2.getListImage().getFileName());
				magazineDAO.setFileDelete(magazineFileDTO);
				
			}

			//새로운 이미지 삽입
			String fileName = fileManager.save("magazineT", file, session);

			MagazineFileDTO magazineFileDTO = new MagazineFileDTO();
			magazineFileDTO.setNum(magazineDTO.getNum());
			magazineFileDTO.setFileName(fileName);
			magazineFileDTO.setOrigineName(file.getOriginalFilename());
			
			result = magazineDAO.magazineUpdate(magazineDTO);
			result = magazineDAO.setFileInsert(magazineFileDTO);
			
		}else {
			result = magazineDAO.magazineUpdate(magazineDTO);
		}
		return result;
	}
	
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
