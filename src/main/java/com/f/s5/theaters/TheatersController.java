package com.f.s5.theaters;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.s5.ticket.TicketDTO;

@Controller
@RequestMapping("/theaters/**")
public class TheatersController {
   
   @Autowired
   private TheatersService theatersService;
   
   @GetMapping("list")
   public ModelAndView getList() throws Exception{
      ModelAndView mv = new ModelAndView();
      //TheatersDTO theatersDTO = new TheatersDTO();
      //theatersDTO.setTheater("구로CGV");
      
      //theatersDTO = theatersService.getInfo(theatersDTO); 
      List<TheatersDTO> ar = theatersService.getList();
      
      
      //mv.addObject("dto", theatersDTO);
      mv.addObject("list", ar);
      mv.setViewName("theaters/theaterList");
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
    public ModelAndView getTicketInfo(HttpServletRequest request, TicketDTO ticketDTO) throws Exception { 
      ModelAndView mv = new ModelAndView();
      
      
      
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