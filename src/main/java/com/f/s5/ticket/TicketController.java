package com.f.s5.ticket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.s5.movies.MoviesDTO;

@Controller
@RequestMapping("/ticket/**")
public class TicketController {
   
   @Autowired
   private TicketService ticketService;
   
   @RequestMapping("list")
   public ModelAndView getMovieList (MoviesDTO moviesDTO, MothDTO mothDTO) throws Exception {
      ModelAndView mv = new ModelAndView();
      
      List<MoviesDTO> movielist = ticketService.getMovieList(moviesDTO);
      mv.addObject("list", movielist);
      
      mv.setViewName("ticket/ticketlist");
      
      return mv;
   }
   
   @RequestMapping("select")
   public ModelAndView getMovieSelect(MothDTO mothDTO) throws Exception {
	   ModelAndView mv = new ModelAndView();
	   List<MothDTO> ar = ticketService.getMovieSelect(mothDTO);
	   mv.addObject("text", ar);
	   
	   List<MothDTO> ar1 = ticketService.getTheaterSelect(mothDTO);
	   mv.addObject("text2", ar1); 
	   
	   mv.setViewName("ticket/mothlist");
	   
	   return mv;
   }
   
   
   
}