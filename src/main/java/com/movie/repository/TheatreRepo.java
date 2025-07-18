package com.movie.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.movie.models.Theatre;

@Repository
public interface TheatreRepo extends JpaRepository<Theatre, Integer> {

}
