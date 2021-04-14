package com.bb.bean.location;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LocationDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.bb.bean.location.LocationDAO.";
	
	//getList 생성
	public List<LocationDTO> getList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	//getSelect 생성
	public LocationDTO getSelect(LocationDTO locationDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getSelect", locationDTO);
	}
}
