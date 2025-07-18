package com.movie.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.models.Customer;
import com.movie.repository.CustomerRepo;

@Service
public class CustomerService {

	@Autowired CustomerRepo crepo;
	
	public Customer saveCustomer(Customer cust) {
		return crepo.save(cust);
	}
	
	public Customer findById(int id) {
		return crepo.getById(id);
	}
	
	public List<Customer> allCustomers(){
		return crepo.findAll();
	}
}
