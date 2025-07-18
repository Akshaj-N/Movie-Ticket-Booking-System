package com.movie.services;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.movie.models.Movie;
import com.movie.repository.MovieRepo;

@Service
public class MovieService {

	@Autowired MovieRepo mrepo;
	@Autowired ServletContext ctx;
	
	public void saveMovie(Movie movie,MultipartFile photo,MultipartFile banner) {
		try {
			String ext=photo.getOriginalFilename().substring(photo.getOriginalFilename().lastIndexOf("."));
			String filename=UUID.randomUUID().toString()+ext;
			movie.setPoster("posters/"+filename);
			Files.copy(photo.getInputStream(), Paths.get(ctx.getRealPath("/posters/"), filename),StandardCopyOption.REPLACE_EXISTING);
			
			ext=banner.getOriginalFilename().substring(banner.getOriginalFilename().lastIndexOf("."));
			filename=UUID.randomUUID().toString()+ext;
			movie.setBanner("banners/"+filename);
			Files.copy(banner.getInputStream(), Paths.get(ctx.getRealPath("/banners/"), filename),StandardCopyOption.REPLACE_EXISTING);
			
			mrepo.save(movie);
			
		}catch(Exception ex) {
			System.err.println("Error "+ex.getMessage());
		}
	}
	
	public void updateMovie(Movie movie) {
		Movie mm=mrepo.findById(movie.getMid()).orElse(null);
		movie.setPoster(mm.getPoster());
		movie.setBanner(movie.getBanner());
		mrepo.save(movie);
	}
	
	public void deleteMovie(int mid) {
		Movie movie=mrepo.getById(mid);
		mrepo.delete(movie);
	}
	
	public Movie findMovieDetails(int mid) {
		return mrepo.getById(mid);
	}
	
	public List<Movie> allMovies(){
		return mrepo.findAll(Sort.by(Direction.DESC, "mid"));
	}
}
