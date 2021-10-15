package com.f.s5.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f.s5.ticket.TicketDTO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public List<TicketDTO> getMyBooking(MemberDTO memberDTO) throws Exception {
		return memberDAO.getMyBooking(memberDTO);
	}
	
	public List<TicketDTO> getMyPage(MemberDTO memberDTO) throws Exception {
		return memberDAO.getMyPage(memberDTO);
	}
	
		
	public List<TicketDTO> getTicket(MemberDTO memberDTO) throws Exception {
		return memberDAO.getTicket(memberDTO);
	}
	
	public MemberDTO getLogin(MemberDTO memberDTO) throws Exception {
		return memberDAO.getLogin(memberDTO);
	}

	public int setJoin(MemberDTO memberDTO) throws Exception {
		return memberDAO.setJoin(memberDTO);
	}

	public int setDelete(MemberDTO memberDTO) throws Exception {
		return memberDAO.setDelete(memberDTO);
	}

	public int setUpdate(MemberDTO memberDTO) throws Exception {
		return memberDAO.setUpdate(memberDTO);
	}

	public MemberDTO getIdCheck(MemberDTO memberDTO) throws Exception {
		return memberDAO.getIdCheck(memberDTO);
	}
}
