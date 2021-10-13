package com.f.s5.board.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.s5.board.BoardDTO;
import com.f.s5.util.Pager;

@Controller
@RequestMapping("/question/**")
public class QuestionController {
   
   @Autowired
   private QuestionService questionService;
   
   @ModelAttribute("board")
   public String getBoard() {
      return "question";
   }
   
   @GetMapping("cordList")
   public ModelAndView getCordList(Pager pager) throws Exception{
      ModelAndView mv = new ModelAndView();
      
      Long totalCount = questionService.getCordCount(pager);
      List<BoardDTO> ar = questionService.getCordList(pager);
      
      mv.addObject("count", totalCount);
      mv.addObject("list", ar);
      mv.addObject("pager", pager);
      
      mv.setViewName("common/cordList");
      return mv;
   }
   
   @RequestMapping("list")
   public ModelAndView getList(Pager pager)throws Exception{
      ModelAndView mv = new ModelAndView();
      
      Long totalCount = questionService.getCount(pager);
      List<BoardDTO> ar = questionService.getList(pager);
      
      mv.addObject("count", totalCount);
      mv.addObject("list", ar);
      mv.addObject("pager", pager);
      mv.setViewName("board/list");
      
      return mv;
   }
   

   @RequestMapping("select")
   public ModelAndView getSelect(BoardDTO boardDTO)throws Exception{
      
      ModelAndView mv = new ModelAndView();
      
      BoardDTO prevDTO = new BoardDTO(); //+1하기
      BoardDTO nextDTO = new BoardDTO(); //-1하기
      
      prevDTO.setNum(boardDTO.getNum()+1L);
      nextDTO.setNum(boardDTO.getNum()-1L);
      
      prevDTO = questionService.getSelect(prevDTO);
      nextDTO = questionService.getSelect(nextDTO);
      boardDTO = questionService.getSelect(boardDTO);
      
      mv.addObject("prev", prevDTO);
      mv.addObject("next", nextDTO);
      mv.addObject("dto", boardDTO);
      
      mv.setViewName("board/select");
      
      return mv;
   }

   @GetMapping("insert")
   public ModelAndView setInsert() throws Exception {
      ModelAndView mv = new ModelAndView();
      
      mv.setViewName("board/insert");
      return mv;
   }
   @PostMapping("insert")
   public ModelAndView setInsert(BoardDTO boardDTO) throws Exception {
      ModelAndView mv = new ModelAndView();
      
      int result = questionService.setInsert(boardDTO);
      
      mv.setViewName("redirect:./list");
      return mv;
   }
   
   @GetMapping("delete")
   public ModelAndView setDelete(BoardDTO boardDTO) throws Exception {
      ModelAndView mv = new ModelAndView();
      
      int result = questionService.setDelete(boardDTO);
      
      mv.setViewName("redirect:./list");
      return mv;
   }
   
   @GetMapping("update")
   public ModelAndView setUpdate(BoardDTO boardDTO) throws Exception {
      ModelAndView mv = new ModelAndView();
      
      boardDTO = questionService.getSelect(boardDTO);
      
      mv.addObject("dto", boardDTO);
      mv.setViewName("board/update");
      return mv;
   }
   @PostMapping("update")
   public ModelAndView setUpdate(BoardDTO boardDTO, ModelAndView mv) throws Exception {
      int result = questionService.setUpdate(boardDTO);
      
      mv.setViewName("redirect:./list");
      return mv;
   }
}