package com.f.s5.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f.s5.board.BoardDTO;
import com.f.s5.board.BoardService;

@Service
public class NoticeService implements BoardService{
	
	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public List<BoardDTO> getList(BoardDTO boardDTO) throws Exception {
		
		return noticeDAO.getList(boardDTO);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		
		return noticeDAO.getSelect(boardDTO);
	}

}
