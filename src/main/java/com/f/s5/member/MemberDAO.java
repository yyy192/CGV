package com.f.s5.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.f.s5.ticket.TicketDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.f.s5.member.MemberDAO.";
	
	public List<TicketDTO> getMyPage(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getMyPage", memberDTO);
		
	}
		
	public List<TicketDTO> getTicket(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getTicket", memberDTO);
	}
	
	public MemberDTO getLogin(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getLogin", memberDTO);
	}

	public int setJoin(MemberDTO memberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setJoin", memberDTO);
	}

	public int setDelete(MemberDTO memberDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setDelete", memberDTO);
	}

	public int setUpdate(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setUpdate", memberDTO);
	}

	public MemberDTO getIdCheck(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getIdCheck", memberDTO);
	}

}
