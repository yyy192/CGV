package com.f.s5.board.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f.s5.board.BoardDTO;
import com.f.s5.board.BoardService;

@Service
public class QuestionService implements BoardService{
	
	@Autowired
	private QuestionDAO questionDAO;

	@Override
	public List<BoardDTO> getList(BoardDTO boardDTO) throws Exception {
		
		return questionDAO.getList(boardDTO);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		
		return questionDAO.getSelect(boardDTO);
	}
	
	

}
