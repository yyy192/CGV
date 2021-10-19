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

	@RequestMapping("select1")
	public ModelAndView getMoviesSelect1( ) throws Exception {
		ModelAndView mv = new ModelAndView();


		mv.setViewName("movies/moviesSelect1");

		return mv;
	}

	@RequestMapping("select2")
	public ModelAndView getMoviesSelect2( ) throws Exception {
		ModelAndView mv = new ModelAndView();

		
		mv.setViewName("movies/moviesSelect2");

		return mv;
	}

	@RequestMapping("select3")
	public ModelAndView getMoviesSelect3( ) throws Exception {
		ModelAndView mv = new ModelAndView();


		mv.setViewName("movies/moviesSelect3");

		return mv;
	}

	@RequestMapping("select4")
	public ModelAndView getMoviesSelect4( ) throws Exception {
		ModelAndView mv = new ModelAndView();


		mv.setViewName("movies/moviesSelect4");

		return mv;
	}
	
	@RequestMapping("select5")
	public ModelAndView getMoviesSelect5( ) throws Exception {
		ModelAndView mv = new ModelAndView();


		mv.setViewName("movies/moviesSelect5");

		return mv;
	}

	@RequestMapping("select6")
	public ModelAndView getMoviesSelect6( ) throws Exception {
		ModelAndView mv = new ModelAndView();


		mv.setViewName("movies/moviesSelect6");

		return mv;
	}

	@RequestMapping("select7")
	public ModelAndView getMoviesSelect7( ) throws Exception {
		ModelAndView mv = new ModelAndView();


		mv.setViewName("movies/moviesSelect7");

		return mv;
	}

}
