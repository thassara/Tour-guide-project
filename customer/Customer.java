package com.customer;

public class Customer {

	private int Cid;
	private String name;
	private int age;
	private String email;
	private String address;
	private String psw;
	private String images ;
	private String gender;
	public Customer(int cid, String name, int age, String email, String address, String psw, String images,
			String gender) {
		super();
		this.Cid = cid;
		this.name = name;
		this.age = age;
		this.email = email;
		this.address = address;
		this.psw = psw;
		this.images = images;
		this.gender = gender;
	}
	public int getCid() {
		return Cid;
	}
	public void setCid(int cid) {
		Cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
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
	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
}