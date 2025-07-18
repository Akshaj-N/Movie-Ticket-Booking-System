package com.movie.models;

public class Seat {
	private String seatno;
	private boolean isbooked;
	public String getSeatno() {
		return seatno;
	}
	public void setSeatno(String seatno) {
		this.seatno = seatno;
	}
	public boolean isIsbooked() {
		return isbooked;
	}
	public void setIsbooked(boolean isbooked) {
		this.isbooked = isbooked;
	}
	public Seat(String seatno, boolean isbooked) {
		this.seatno = seatno;
		this.isbooked = isbooked;
	}
	public Seat() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Seat [seatno=" + seatno + ", isbooked=" + isbooked + "]";
	}
	
	
}
