package com.movie.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Bookings {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bid;
	private String bdate;
	private int noseat;
	private String seats;
	private int amount;
	
	@ManyToOne
	@JoinColumn(name="movieid")
	private Movie movie;
	@ManyToOne
	@JoinColumn(name="theatreid")
	private Theatre theatre;
	@ManyToOne
	@JoinColumn(name="showid")
	private TheatreShow show;
	@ManyToOne
	@JoinColumn(name="custid")
	private Customer customer;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public int getNoseat() {
		return noseat;
	}
	public void setNoseat(int noseat) {
		this.noseat = noseat;
	}
	public String getSeats() {
		return seats;
	}
	public void setSeats(String seats) {
		this.seats = seats;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	public Theatre getTheatre() {
		return theatre;
	}
	public void setTheatre(Theatre theatre) {
		this.theatre = theatre;
	}
	public TheatreShow getShow() {
		return show;
	}
	public void setShow(TheatreShow show) {
		this.show = show;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@Override
	public String toString() {
		return "Bookings [bid=" + bid + ", bdate=" + bdate + ", noseat=" + noseat + ", seats=" + seats + ", amount="
				+ amount + ", movie=" + movie + ", theatre=" + theatre + ", show=" + show + ", customer=" + customer
				+ "]";
	}
	
	
}
