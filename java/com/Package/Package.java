package com.Package;

public class Package {
	
	private int idpackage;
	private String name;
	private int price;
	private int duration;
	private String details;
	private String image;
	
	public Package(int idpackage, String name, int price, int duration, String details, String image) {
		super();
		this.idpackage = idpackage;
		this.name = name;
		this.price = price;
		this.duration = duration;
		this.details = details;
		this.image = image;
	}
	
	public Package() {
		// TODO Auto-generated constructor stub
	}

	public int getIdpackage() {
		return idpackage;
	}
	public String getName() {
		return name;
	}
	public int getPrice() {
		return price;
	}
	public int getDuration() {
		return duration;
	}
	public String getDetails() {
		return details;
	}
	public String getImage() {
		return image;
	}
	
	public void setIdpackage(int idpackage) {
		this.idpackage=idpackage;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setPrice(int price) {
		this.price=price;
	}
	public void setDuration(int duration) {
		this.duration=duration;
	}
	public void setDetails(String details) {
		this.details=details;
	}
	public void setImage(String image ) {
		this.image=image;
	}
	
	
	
	

}
