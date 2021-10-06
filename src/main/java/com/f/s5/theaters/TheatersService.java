package com.f.s5.theaters;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f.s5.ticket.MothDTO;
import com.f.s5.ticket.TicketDTO;

@Service
public class TheatersService {
   
   @Autowired
   private TheatersDAO theatersDAO;
   
   public int updateInfo(TicketDTO ticketDTO) throws Exception{
	   return theatersDAO.updateInfo(ticketDTO);
   }
   
   public List<TheatersDTO> getList() throws Exception {
      return theatersDAO.getList();
   }
   
   public TheatersDTO getInfo(TheatersDTO theatersDTO) throws Exception {
      return theatersDAO.getInfo(theatersDTO);
   }
   
   public int setTicketInfo(HttpServletRequest request, TicketDTO ticketDTO) throws Exception {
      String watchDate = request.getParameter("watchDate");
      SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
      java.util.Date date = df.parse(watchDate);         
      java.sql.Date sqlDate = new java.sql.Date(date.getTime());
      
      
      //TicketDTO ticketDTO = new TicketDTO();
      ticketDTO.setMovieName(request.getParameter("movieName"));
      ticketDTO.setTheater(request.getParameter("theater"));
      ticketDTO.setWatchDate(sqlDate);
      ticketDTO.setTimeTable(request.getParameter("timeTable"));
      return theatersDAO.setTicketInfo(ticketDTO);
   }
   
   public List<TicketDTO> checkTicket(TicketDTO ticketDTO) throws Exception{
	   return theatersDAO.checkTicket(ticketDTO);
   }
}