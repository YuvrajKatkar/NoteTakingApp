package com.entities;

import java.util.Date;
import java.util.Random;
import java.util.SplittableRandom;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Note {
	@Id
	private int id;
	private String title;
	private String description;
	private Date date;
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Note( String title, String description, Date date) {
		super();
		this.id = new Random().nextInt(1000);
		this.title = title;
		this.description = description;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	

}
