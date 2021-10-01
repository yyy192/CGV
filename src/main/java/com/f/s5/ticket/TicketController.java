package com.f.s5.ticket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.s5.movies.MoviesDTO;
import com.f.s5.theaters.TheatersDTO;

@Controller
@RequestMapping("/ticket/**")
public class TicketController {
   
	@Autowired
	   private TicketService ticketService;

	   @RequestMapping("list")
	   public ModelAndView getMovieList(MoviesDTO moviesDTO, MothDTO mothDTO) throws Exception {
	      ModelAndView mv = new ModelAndView();

	      List<MoviesDTO> movielist = ticketService.getMovieList(moviesDTO);
	      mv.addObject("list", movielist);

	      mv.setViewName("ticket/ticketlist");

	      return mv;
	   }

	   @GetMapping("select")
	   public ModelAndView getMovieSelect(MothDTO mothDTO) throws Exception {
	      ModelAndView mv = new ModelAndView();

	      List<MothDTO> ar = ticketService.getMovieSelect(mothDTO);
	      mv.addObject("theater", ar);

	      mv.setViewName("common/ajaxList");

	      return mv;
	   }

	   @GetMapping("select2")
	   public ModelAndView getTheaterSelect(MothDTO mothDTO) throws Exception {
	      ModelAndView mv = new ModelAndView();
	      List<MothDTO> ar = ticketService.getTheaterSelect(mothDTO);
	      mv.addObject("watchDate", ar);

	      mv.setViewName("common/ajaxList2");

	      return mv;
	   }

	   @GetMapping("select3")
	   public ModelAndView getWatchDateSelect(MothDTO mothDTO) throws Exception {
	      ModelAndView mv = new ModelAndView();
	      List<TheatersDTO> ar = ticketService.getWatchDateSelect(mothDTO);
	      MothDTO mothDTO2 = ticketService.getMothSelect(mothDTO);

	      mv.addObject("timeTable", ar);
	      mv.addObject("mothDTO2", mothDTO2);

	      mv.setViewName("common/ajaxList3");

	      return mv;
	   }

	   @GetMapping("select4")
	   public ModelAndView setTicket(TicketDTO ticketDTO) throws Exception {
	      ModelAndView mv = new ModelAndView();
	      int result = ticketService.setTicket(ticketDTO);
	      mv.addObject("ticketDTO", ticketDTO);

	      mv.setViewName("common/seat");

	      return mv;
	   }

   
   
   
}