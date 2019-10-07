package com.OMO.JavaBeans;

import java.sql.Blob;

public class Meals {
	
	private int id;
	private String name;
	private double price;
	private String Description;
	private int rating;
	private Blob image;
	
	public Meals(int id, String name, double price, String description, int rating, Blob image) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		Description = description;
		this.rating = rating;
		this.image = image;
	}

	public Meals() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}
	
	

}
