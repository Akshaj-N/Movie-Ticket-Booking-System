package com.movie.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.movie.models.User;

@Repository
public interface UsersRepo extends JpaRepository<User, String> {

}
