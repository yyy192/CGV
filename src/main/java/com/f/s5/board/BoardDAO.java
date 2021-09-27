package com.f.s5.board;

import java.util.List;

public interface BoardDAO {
	
	//List
	public abstract List<BoardDTO> getList(BoardDTO boardDTO)throws Exception;
	
	//상세
	public abstract BoardDTO getSelect(BoardDTO boardDTO)throws Exception;
	
	

}
