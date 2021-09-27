package com.f.s5.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.s5.board.BoardDTO;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	

	
	@ModelAttribute("board")
	public String getBoard() {
		return "notice";
	}
	
	@RequestMapping("list")
	public ModelAndView getList(BoardDTO boardDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> ar = noticeService.getList(boardDTO);
		mv.addObject("list", ar);
		
		mv.setViewName("board/list");
		
		return mv;
	}
	

	@RequestMapping("select")
	public ModelAndView getSelect(BoardDTO boardDTO)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		boardDTO = noticeService.getSelect(boardDTO);
		
		mv.addObject("dto", boardDTO);
		
		mv.setViewName("board/select");
		
		return mv;
	}
	
	

}
