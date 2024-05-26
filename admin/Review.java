package com.admin;

public class Review {
	private int id;
	private String name;
	private String email;
	private String message;
	private String image;
	
	public Review(int id, String name, String email, String message, String image) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.message = message;
		this.image = image;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
	
	
}