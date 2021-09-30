package com.f.s5.ticket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f.s5.movies.MoviesDTO;
import com.f.s5.theaters.TheatersDTO;

@Service
public class TicketService {
   
   @Autowired
   private TicketDAO ticketDAO;
   
   public List<MoviesDTO> getMovieList (MoviesDTO moviesDTO) throws Exception {
      return ticketDAO.getMovieList(moviesDTO);
   }
   
   public List<MothDTO> getMovieSelect(MothDTO mothDTO) throws Exception {
	  return ticketDAO.getMovieSelect(mothDTO); 
   }
   
   public List<MothDTO> getTheaterSelect(MothDTO mothDTO) throws Exception {
	   return ticketDAO.getTheaterSelect(mothDTO);
   }
   
   public List<TheatersDTO> getWatchDateSelect(MothDTO mothDTO) throws Exception {
		return ticketDAO.getWatchDateSelect(mothDTO);
	}

}