package com.f.s5.movies;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MoviesDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.f.s5.movies.MoviesDAO.";

	public List<MoviesDTO> getMoviesList(MoviesDTO moviesDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getMoviesList", moviesDTO);
	}
		

	

}