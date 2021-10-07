package com.f.s5.movies;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MoviesService {
	
	@Autowired
	private MoviesDAO moviesDAO;
	
	public List<MoviesDTO> getMoviesList(MoviesDTO moviesDTO) throws Exception {
		return moviesDAO.getMoviesList(moviesDTO);	
	}
	
	public MoviesDTO getMoviesSelect(MoviesDTO moviesDTO) throws Exception {
		return moviesDAO.getMoviesSelect(moviesDTO);
	}

}