package com.movie.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Theatre {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int tid;
	private String tname;
	private String address;
	private int seats;
	private int price;
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	@Override
	public String toString() {
		return "Theatre [tid=" + tid + ", tname=" + tname + ", address=" + address + ", seats=" + seats + ", price="
				+ price + "]";
	}

	
	
}
