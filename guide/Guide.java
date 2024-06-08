package com.guide;

public class Guide {
	
	private int gid;
	private String gname;
	private int mobile;
	private String email;
	private String gender;
	private int price;
	private String Password;
	private String city;
	private String languages;
	private String activities;
	private String image;

	
	public Guide(int gid, String gname, int mobile, String email, String gender, int price, String password,
			String city, String languages, String activities, String image) {
		
		super();
		this.gid = gid;
		this.gname = gname;
		this.mobile = mobile;
		this.email = email;
		this.gender = gender;
		this.price = price;
		this.Password = password;
		this.city = city;
		this.languages = languages;
		this.activities = activities;
		this.image = image;
		
		
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public int getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}


	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getLanguages() {
		return languages;
	}

	public void setLanguages(String languages) {
		this.languages = languages;
	}

	public String getActivities() {
		return activities;
	}

	public void setActivities(String activities) {
		this.activities = activities;
	}
	
	
	

}
