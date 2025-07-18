package com.movie.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TheatreShow {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String showname;
	private String starttime;
	private String endtime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getShowname() {
		return showname;
	}
	public void setShowname(String showname) {
		this.showname = showname;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	@Override
	public String toString() {
		return "TheatreShow [id=" + id + ", showname=" + showname + ", starttime=" + starttime + ", endtime=" + endtime
				+ "]";
	}
	
	
}
