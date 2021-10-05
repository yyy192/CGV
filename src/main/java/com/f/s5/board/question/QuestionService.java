package com.f.s5.board.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f.s5.board.BoardDTO;
import com.f.s5.board.BoardService;
import com.f.s5.util.Pager;

@Service
public class QuestionService implements BoardService{
	
	@Autowired
	private QuestionDAO questionDAO;

	
	@Override
	public Long getCordCount(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return questionDAO.getCordCount(pager);
	}
	
	@Override
	public List<BoardDTO> getCordList(Pager pager) throws Exception {
		Long totalCount = questionDAO.getCordCount(pager);
		
		pager.num(totalCount);
		pager.row();
		
		return questionDAO.getCordList(pager);
	}
	
	@Override
	public Long getCount(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return questionDAO.getCount(pager);
	}
	
	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		Long totalCount = questionDAO.getCount(pager);
		
		pager.num(totalCount);
		pager.row();
		
		return questionDAO.getList(pager);
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