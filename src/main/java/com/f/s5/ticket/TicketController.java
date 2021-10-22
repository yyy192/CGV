package com.f.s5.ticket;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.s5.member.MemberDTO;
import com.f.s5.movies.MoviesDTO;
import com.f.s5.theaters.TheatersDTO;

@Controller
@RequestMapping("/ticket/**")
public class TicketController {

   @Autowired
   private TicketService ticketService;

   @RequestMapping("list")
   public ModelAndView getMovieList(MoviesDTO moviesDTO, MothDTO mothDTO, String hi) throws Exception {
      ModelAndView mv = new ModelAndView();

      List<MoviesDTO> movielist = ticketService.getMovieList(moviesDTO);
      mv.addObject("list", movielist);
      mv.addObject("hi", hi);

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
   public ModelAndView setTicket(HttpSession session, TicketDTO ticketDTO) throws Exception {
      ModelAndView mv = new ModelAndView();

      if (session.getAttribute("member") != null) {
         MemberDTO m = (MemberDTO) session.getAttribute("member");


         String birth = Integer.toString(m.getBirth()).substring(0, 4);
         int checkBirth = 2022 - Integer.parseInt(birth);
         
         if(checkBirth >= 20 ) {
            ticketDTO.setPrice("10,000");
         } else {
            ticketDTO.setPrice("7,000");

         }

         ticketDTO.setId(m.getId());
         
         List<TicketDTO> ar = ticketService.checkTicket(ticketDTO);

         int result = ticketService.setTicket(ticketDTO);
                  
         
         if (result > 0) {
            System.out.println("ticket Insert 성공");
            mv.addObject("age", checkBirth);
            mv.addObject("ticketDTO", ticketDTO);
            mv.addObject("seat", ar);
            mv.addObject("size", ar.size());
            mv.setViewName("common/seat");

         } else {
            System.out.println("오류");
         }

      } else {
    	  String msg= "로그인이 필요한 서비스입니다.\\n로그인 페이지로 이동하시겠습니까?";
          mv.addObject("msg", msg);
          mv.addObject("url", "http://localhost/s5/member/memberLogin");
          mv.setViewName("common/ajaxResult");
      }

      return mv;
   }

   @PostMapping("updateInfo")
   public ModelAndView updateInfo(TicketDTO ticketDTO) throws Exception {
      ModelAndView mv = new ModelAndView();
      int result = ticketService.updateInfo(ticketDTO);
      String msg = "업데이트 실패했습니다";
      if (result > 0) {
         msg = "업데이트 완료";
      }
      mv.addObject("msg", msg);
      mv.addObject("url", "redirect ../");
      mv.setViewName("common/ajaxResult");
      return mv;
   }

}