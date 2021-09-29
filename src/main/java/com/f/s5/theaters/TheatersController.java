package com.f.s5.theaters;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.s5.ticket.MothDTO;

@Controller
@RequestMapping("/theaters/**")
public class TheatersController {
	
	@Autowired
	private TheatersService theatersService;
	
	@GetMapping("list")
	public ModelAndView getList() throws Exception{
		ModelAndView mv = new ModelAndView();
		TheatersDTO theatersDTO = new TheatersDTO();
		theatersDTO.setTheater("구로CGV");
		
		theatersDTO = theatersService.getInfo(theatersDTO); 
		List<TheatersDTO> ar = theatersService.getList();
		
		
		mv.addObject("dto", theatersDTO);
		mv.addObject("list", ar);
		mv.setViewName("theaters/theaterList");
		return mv;
	}
	
	//극장 눌렀을 경우 극장 상영 중인 영화 출력 - ajax활용
	@GetMapping("info")
	public ModelAndView getInfo(TheatersDTO theatersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		theatersDTO = theatersService.getInfo(theatersDTO); 
		
		mv.addObject("dto", theatersDTO);
		
		return mv;
	}

}
