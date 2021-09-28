package com.f.s5.board;

import java.util.List;



public interface BoardService {
	
	//List
	public abstract List<BoardDTO> getList(BoardDTO boardDTO)throws Exception;

	//상세
	public abstract BoardDTO getSelect(BoardDTO boardDTO)throws Exception;
	
	//글 등록
	public abstract int setInsert(BoardDTO boardDTO) throws Exception;
	
	//글 삭제
	public abstract int setDelete(BoardDTO boardDTO) throws Exception;
	
	//글 수정
	public abstract int setUpdate(BoardDTO boardDTO) throws Exception;
}
