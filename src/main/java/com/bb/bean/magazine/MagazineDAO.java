package com.bb.bean.magazine;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bb.bean.product.ProductFileDTO;

@Repository
public class MagazineDAO {
	
	@Autowired
	private SqlSession sqlSession;	
	private final String NAMESPACE = "com.bb.bean.magazine.MagazineDAO.";
	
	public int magazineUpdate(MagazineDTO magazineDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"magazineUpdate",magazineDTO);
	}
	
	public int magazineInsert(MagazineDTO magazineDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"magazineInsert",magazineDTO);		
	}
	
	public MagazineDTO magazineSelect(MagazineDTO magazineDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"magazineSelect",magazineDTO);
	}
	
	public List<MagazineDTO> magazineList(MagazineDTO magazineDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"magazineList",magazineDTO);
	}
	
	public long getNum() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getNum");
	}
	
	public int setFileInsert(MagazineFileDTO magazineFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setFileInsert", magazineFileDTO);
	}
	
	public int setFileDelete(MagazineFileDTO magazineFileDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete", magazineFileDTO);
	}
}
