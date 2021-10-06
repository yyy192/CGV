package com.f.s5.theaters;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.s5.member.MemberDTO;
import com.f.s5.ticket.TicketDTO;

@Controller
@RequestMapping("/theaters/**")
public class TheatersController {
   
   @Autowired
   private TheatersService theatersService;
   
   @GetMapping("list")
   public ModelAndView getList(HttpSession session) throws Exception{
      ModelAndView mv = new ModelAndView();
      //TheatersDTO theatersDTO = new TheatersDTO();
      //theatersDTO.setTheater("구로CGV");
      
      //theatersDTO = theatersService.getInfo(theatersDTO); 
      
      if(session.getAttribute("member") != null) {
    	  List<TheatersDTO> ar = theatersService.getList();
          
          
          //mv.addObject("dto", theatersDTO);
          mv.addObject("list", ar);
          mv.setViewName("theaters/theaterList");
      }else {
    	  mv.setViewName("redirect:../member/memberLogin");
      }
      
      return mv;
   }
   
   //극장 눌렀을 경우 극장 상영 중인 영화 출력 - ajax활용
   @GetMapping("info")
   public ModelAndView getInfo(TheatersDTO theatersDTO) throws Exception {
      //System.out.println("test");
      ModelAndView mv = new ModelAndView();
      theatersDTO = theatersService.getInfo(theatersDTO); 
      //System.out.println(theatersDTO.getTheater());
      if(theatersDTO!=null) {
         mv.addObject("dto", theatersDTO);
         mv.setViewName("common/theaters");
      }
      return mv;
   }
   
   //정보 받아오기
   
    @GetMapping("ticketInfo") 
    public ModelAndView getTicketInfo(HttpSession session, HttpServletRequest request, TicketDTO ticketDTO) throws Exception { 
      ModelAndView mv = new ModelAndView();
      MemberDTO m = (MemberDTO) session.getAttribute("member");
      ticketDTO.setId(m.getId());
      
      
      int result = theatersService.setTicketInfo(request, ticketDTO);
      
      if(result > 0) {
         System.out.println("ticket Insert 성공");
         mv.addObject("ticketDTO", ticketDTO);
         mv.setViewName("common/seat");
         
      }else {
         System.out.println("오류");
      }
      
      return mv;
    }
    

}