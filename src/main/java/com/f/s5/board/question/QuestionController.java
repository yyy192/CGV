package com.f.s5.board.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.s5.board.BoardDTO;

@Controller
@RequestMapping("/question/**")
public class QuestionController {
	
	@Autowired
	private QuestionService questionService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "question";
	}
	
	@RequestMapping("list")
	public ModelAndView getList(BoardDTO boardDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> ar = questionService.getList(boardDTO);
		mv.addObject("list", ar);
		
		mv.setViewName("board/list");
		
		return mv;
	}
	

	@RequestMapping("select")
	public ModelAndView getSelect(BoardDTO boardDTO)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		boardDTO = questionService.getSelect(boardDTO);
		
		mv.addObject("dto", boardDTO);
		
		mv.setViewName("board/select");
		
		return mv;
	}

}
