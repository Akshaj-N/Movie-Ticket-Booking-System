package com.movie.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.models.Theatre;
import com.movie.repository.TheatreRepo;

@Service
public class TheatreService {

	@Autowired TheatreRepo trepo;
	
	public Theatre saveTheatre(Theatre theatre) {
		return trepo.save(theatre);
	}
	
	public List<Theatre> allTheatres(){
		return trepo.findAll();
	}
	
	public Theatre findTheatre(int tid) {
		return trepo.getById(tid);
	}
}
