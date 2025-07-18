package com.movie.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.models.TheatreShow;
import com.movie.repository.ShowsRepo;

@Service
public class ShowsService {

	@Autowired ShowsRepo srepo;
	
	public void saveShow(TheatreShow ts) {
		srepo.save(ts);
	}
	
	public List<TheatreShow> allShows(){
		return srepo.findAll();
	}
	
	public TheatreShow findShow(int sid) {
		return srepo.getById(sid);
	}
}
