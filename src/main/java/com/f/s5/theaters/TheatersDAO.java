package com.f.s5.theaters;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.f.s5.ticket.MothDTO;
import com.f.s5.ticket.TicketDTO;


@Repository
public class TheatersDAO {

   @Autowired
   private SqlSession sqlSession;
   private final String NAMESPACE="com.f.s5.theaters.TheatersDAO.";
   
   public int updateInfo(TicketDTO ticketDTO)throws Exception{
	   return sqlSession.update(NAMESPACE+"updateInfo", ticketDTO);	   
   }
   
   public List<TheatersDTO> getList() throws Exception {
      return sqlSession.selectList(NAMESPACE+"getList");
   }
   
   public TheatersDTO getInfo(TheatersDTO theatersDTO) throws Exception {
      return sqlSession.selectOne(NAMESPACE+"getInfo", theatersDTO);
   }
   
   public int setTicketInfo(TicketDTO ticketDTO) throws Exception {
      return sqlSession.insert(NAMESPACE+"setTicketInfo", ticketDTO);
   }
   
   public List<TicketDTO> checkTicket(TicketDTO ticketDTO) throws Exception{
	   return sqlSession.selectList(NAMESPACE+"checkTicket", ticketDTO);	   
   }
}