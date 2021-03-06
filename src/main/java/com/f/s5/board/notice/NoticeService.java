package com.f.s5.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f.s5.board.BoardDTO;
import com.f.s5.board.BoardService;
import com.f.s5.util.Pager;

@Service
public class NoticeService implements BoardService{
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public Long getCordCount(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.getCordCount(pager);
	}
	
	@Override
	public List<BoardDTO> getCordList(Pager pager) throws Exception {
		Long totalCount = noticeDAO.getCordCount(pager);
		
		pager.num(totalCount);
		pager.row();
		
		return noticeDAO.getCordList(pager);
	}
	
	@Override
	public Long getCount(Pager pager) throws Exception {
		return noticeDAO.getCount(pager);
	}
	
	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		Long totalCount = noticeDAO.getCount(pager);
		//System.out.println(totalCount);
		
		pager.num(totalCount);
		pager.row();
		return noticeDAO.getList(pager);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		int result = noticeDAO.hitsUpdate(boardDTO);
		return noticeDAO.getSelect(boardDTO);
	}
	
	@Override
	public int setInsert(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.setInsert(boardDTO);
	}
	
	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.setDelete(boardDTO);
	}
	
	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.setUpdate(boardDTO);
	}

}