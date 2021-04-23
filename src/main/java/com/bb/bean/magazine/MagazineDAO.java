package com.bb.bean.magazine;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MagazineDAO {
	
	@Autowired
	private SqlSession sqlSession;	
	private final String NAMESPACE = "com.bb.bean.magazine.MagazineDAO.";
	
	public int magazineInsert(MagazineDTO magazineDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"magazineInsert",magazineDTO);		
	}

	public MagazineDTO magazineSelect(MagazineDTO magazineDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"magazineSelect",magazineDTO);
	}
	
	public List<MagazineDTO> magazineList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"magazineList");
	}
}
