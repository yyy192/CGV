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
		
		int result = questionDAO.hitsUpdate(boardDTO);
		
		return questionDAO.getSelect(boardDTO);
	}
	
	@Override
	public int setInsert(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return questionDAO.setInsert(boardDTO);
	}
	
	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return questionDAO.setDelete(boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return questionDAO.setUpdate(boardDTO);
	}

}
