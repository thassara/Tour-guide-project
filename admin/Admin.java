package com.admin;

public class Admin {
	private int id;
	private String Name;
	private String email;
	private String address;
	private String password;
	private String job;
	private String skills;
	private String images;
	

	public Admin(int id,String name, String email, String address, String password, String job, String skills, String images) {
		super();
		this.id = id;
		this.Name = name;
		this.email = email;
		this.address = address;
		this.password = password;
		this.job = job;
		this.skills = skills;
		this.images = images;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return Name;
	}


	public void setName(String name) {
		Name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getJob() {
		return job;
	}


	public void setJob(String job) {
		this.job = job;
	}


	public String getSkills() {
		return skills;
	}


	public void setSkills(String skills) {
		this.skills = skills;
	}


	public String getImages() {
		return images;
	}


	public void setImages(String images) {
		this.images = images;
	}


}
