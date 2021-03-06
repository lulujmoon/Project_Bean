package com.bb.bean.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bb.bean.cart.CartDAO;
import com.bb.bean.cart.CartDTO;
import com.bb.bean.cart.CartService;
import com.bb.bean.util.FileManager;

@Service
public class ProductService {

	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	private FileManager fileManager;
	@Autowired
	private CartService cartService;

	public List<ProductDTO> getList(ProductDTO productDTO) throws Exception {
		return productDAO.getList(productDTO);
	}

	public ProductDTO getSelect(ProductDTO productDTO) throws Exception {
		return productDAO.getSelect(productDTO);
	}

	public ProductDTO setInsert(ProductDTO productDTO, MultipartFile file) throws Exception {

		String fileName = fileManager.save("product", file, session);
		long productNum = productDAO.getProductNum();

		productDTO.setProductNum(productNum);

		ProductFileDTO productFileDTO = new ProductFileDTO();
		productFileDTO.setProductNum(productNum);
		productFileDTO.setFileName(fileName);
		productFileDTO.setOriginName(file.getOriginalFilename());

		int result = productDAO.setInsert(productDTO);
		result = productDAO.setFileInsert(productFileDTO);
		return productDTO;
	}

	public int setUpdate(ProductDTO productDTO, MultipartFile file) throws Exception {
		int result=0;
		//새로운 이미지를 넣었다면 실행
		if(file.getOriginalFilename().length()!=0) {
			//존재하는 이미지 삭제
			ProductDTO productDTO2 = productDAO.getSelect(productDTO);

			if(productDTO2.getThumbnail()!=null) {
				String delFileName = productDTO2.getThumbnail().getFileName();
				boolean check = fileManager.delete("product", delFileName, session);

				ProductFileDTO productFileDTO = new ProductFileDTO();
				productFileDTO.setFileNum(productDTO2.getThumbnail().getFileNum());
				productDAO.setFileDelete(productFileDTO);		
			}

			//새로운 이미지 삽입
			String fileName = fileManager.save("product", file, session);

			ProductFileDTO productFileDTO = new ProductFileDTO();
			productFileDTO.setProductNum(productDTO.getProductNum());
			productFileDTO.setFileName(fileName);
			productFileDTO.setOriginName(file.getOriginalFilename());

			result = productDAO.setUpdate(productDTO);
			result = productDAO.setFileInsert(productFileDTO);
			
		}else {
			result = productDAO.setUpdate(productDTO);
		}
		return result;
	}

	public int setDelete(ProductDTO productDTO) throws Exception {
		return productDAO.setDelete(productDTO);
	}

	public String summerFileUpload(MultipartFile multipartFile) throws Exception {
		return fileManager.save("productContents", multipartFile, session);
	}

	public boolean summerFileDelete(String fileName) throws Exception {
		return fileManager.delete("productContents", fileName, session);
	}


	/* Options */
	public List<OptionsDTO> getOptionList(ProductDTO productDTO) throws Exception {
		return productDAO.getOptionList(productDTO);
	}

	public OptionsDTO getOptionSelect(OptionsDTO optionsDTO) throws Exception {
		return productDAO.getOptionSelect(optionsDTO);
	}
	
	public int setOptionInsert(OptionsDTO optionsDTO) throws Exception {
		return productDAO.setOptionInsert(optionsDTO);
	}

	public int setOptionUpdate(OptionsDTO optionsDTO) throws Exception {
		int result = productDAO.setOptionUpdate(optionsDTO);
		//장바구니 업데이트하기
		CartDTO cartDTO = new CartDTO();
		cartDTO.setOptionNum(optionsDTO.getOptionNum());
		System.out.println("옵션번호 "+optionsDTO.getOptionNum());
		System.out.println("옵션번호 "+cartDTO.getOptionNum());
		result = cartService.setFinalPriceUpdate(cartDTO);
		
		return result;
	}

	public int setOptionDelete(OptionsDTO optionsDTO) throws Exception {
		return productDAO.setOptionDelete(optionsDTO);
	}
}
