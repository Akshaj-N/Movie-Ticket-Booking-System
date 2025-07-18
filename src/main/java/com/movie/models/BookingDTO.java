package com.movie.models;

import org.springframework.beans.BeanUtils;

public class BookingDTO {
	private String bdate;
	private int noseat;
	private String seats;
	private int amount;
	private int mid;
	private int sid;
	private int tid;
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
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	@Override
	public String toString() {
		return "BookingDTO [bdate=" + bdate + ", noseat=" + noseat + ", seats=" + seats + ", amount=" + amount
				+ ", mid=" + mid + ", sid=" + sid + ", tid=" + tid + "]";
	}
	
	public static Bookings toEntity(BookingDTO dto) {
		Bookings entity=new Bookings();
		BeanUtils.copyProperties(dto, entity);		
		return entity;
	}
}
