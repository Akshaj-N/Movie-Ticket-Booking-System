package com.movie.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.movie.models.Customer;

@Repository
public interface CustomerRepo extends JpaRepository<Customer, Integer> {
	
}
