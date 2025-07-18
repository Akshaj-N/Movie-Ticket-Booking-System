package com.movie.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.models.User;
import com.movie.repository.UsersRepo;

@Service
public class UserService {

	@Autowired UsersRepo urepo;
	
	public void saveUser(User user) {
		urepo.save(user);
	}
	
	public User validate(String userid,String pwd) {
		Optional<User> u=urepo.findById(userid);
		if(u.isPresent() && u.get().getPwd().equals(pwd)) {
			return u.get();
		}else
			return null;
	}
	
	public List<User> allUsers(){
		return urepo.findAll();
	}
	
	public long countUser() {
		return urepo.count();
	}
}
