package com.bb.bean.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bb.bean.util.FileManager;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	private FileManager fileManager;
	
	public List<ProductDTO> getList(ProductDTO productDTO) throws Exception {
		return productDAO.getList(productDTO);
	}

	public ProductDTO getSelect(ProductDTO productDTO) throws Exception {
		return productDAO.getSelect(productDTO);
	}

	public int setInsert(ProductDTO productDTO) throws Exception {
		return productDAO.setInsert(productDTO);
	}

	public int setUpdate(ProductDTO productDTO) throws Exception {
		return productDAO.setUpdate(productDTO);
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
}
