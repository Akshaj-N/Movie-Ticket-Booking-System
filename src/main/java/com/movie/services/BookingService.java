package com.movie.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.movie.models.Bookings;
import com.movie.repository.BookingRepo;

@Service
public class BookingService {

	@Autowired BookingRepo brepo;
	@Autowired CustomerService cservice;
	
	public int saveBooking(Bookings bk) {
		Bookings bb= brepo.save(bk);
		return bb.getBid();
	}
	
	public List<Bookings> allBookings(){
		return brepo.findAll(Sort.by(Direction.DESC, "bid"));
	}
	
	public List<Bookings> customerBookings(int cid){
		return brepo.findByCustomerOrderByBidDesc(cservice.findById(cid));
	}
	
	public String getBookedSeats(int mid,int tid,int sid,String date) {
		return brepo.getBookedSeats(mid,tid,sid, date);
	}
	
	public Bookings findBookingDetails(int bid) {
		return brepo.getById(bid);
	}
}
