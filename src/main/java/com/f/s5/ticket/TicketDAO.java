package com.f.s5.ticket;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.f.s5.movies.MoviesDTO;
import com.f.s5.theaters.TheatersDTO;

@Repository
public class TicketDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.f.s5.ticket.TicketDAO.";

	public List<MoviesDTO> getMovieList(MoviesDTO moviesDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getMovieList", moviesDTO);
	}

	public List<MothDTO> getMovieSelect(MothDTO mothDTO) throws Exception {
	   return sqlSession.selectList(NAMESPACE+"getMovieSelect", mothDTO);
   }
	
	public List<MothDTO> getTheaterSelect(MothDTO mothDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getTheaterSelect", mothDTO);
	}
	
	public List<TheatersDTO> getWatchDateSelect(MothDTO mothDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getWatchDateSelect", mothDTO);
	}

}