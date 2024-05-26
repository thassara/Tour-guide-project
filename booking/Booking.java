package com.booking;

public class Booking {
	
	private int id;
	private String name;
	private String email;
	private int passno;
	private int noguest;
	
	public Booking(int id, String name, String email, int passno, int noguest) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.passno = passno;
		this.noguest = noguest;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public int getPassno() {
		return passno;
	}

	public int getNoguest() {
		return noguest;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassno(int passno) {
		this.passno = passno;
	}

	public void setNoguest(int noguest) {
		this.noguest = noguest;
	}
	
	
	

}
