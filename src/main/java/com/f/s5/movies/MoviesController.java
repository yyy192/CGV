package com.f.s5.movies;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/movies/**")
public class MoviesController {

	@Autowired
	private MoviesService moviesService;

	@RequestMapping("list")
	public ModelAndView getMoviesList(MoviesDTO moviesDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<MoviesDTO> ar = moviesService.getMoviesList(moviesDTO);

		

		mv.addObject("list", ar);

		mv.setViewName("movies/moviesList");

		return mv;
	}

	@RequestMapping("select")
	public ModelAndView getMoviesSelect(MoviesDTO moviesDTO) throws Exception {
		ModelAndView mv = new ModelAndView();

		moviesDTO = moviesService.getMoviesSelect(moviesDTO);

		mv.addObject("dto", moviesDTO);
		mv.setViewName("movies/moviesSelect");

		return mv;
	}

}
