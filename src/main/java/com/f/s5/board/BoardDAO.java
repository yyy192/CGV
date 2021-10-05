package com.f.s5.board;

import java.util.List;

import com.f.s5.util.Pager;

public interface BoardDAO {
	
	//List
	public abstract List<BoardDTO> getList(Pager pager)throws Exception;
	
	//상세
	public abstract BoardDTO getSelect(BoardDTO boardDTO)throws Exception;
	
	//글 등록
	public abstract int setInsert(BoardDTO boardDTO) throws Exception;
	
	//글 삭제
	public abstract int setDelete(BoardDTO boardDTO) throws Exception;
	
	//글 수정
	public abstract int setUpdate(BoardDTO boardDTO) throws Exception;
	
	//조회수 +1
	public abstract int hitsUpdate(BoardDTO boardDTO) throws Exception;
	
	//글 count
	public abstract Long getCount(Pager pager) throws Exception;
	
	//cord count
	public abstract Long getCordCount(Pager pager) throws Exception;
	
	//cord list
	public abstract List<BoardDTO> getCordList(Pager pager) throws Exception;

}
