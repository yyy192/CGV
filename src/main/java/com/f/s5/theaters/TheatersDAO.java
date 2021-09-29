package com.f.s5.theaters;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.f.s5.ticket.MothDTO;


@Repository
public class TheatersDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.f.s5.theaters.TheatersDAO.";
	
	public List<TheatersDTO> getList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public TheatersDTO getInfo(TheatersDTO theatersDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getInfo", theatersDTO);
	}
}
