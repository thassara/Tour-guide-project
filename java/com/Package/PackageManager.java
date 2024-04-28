package com.Package;

public class PackageManager {
	
	private int id;
	private String username;
	private String password;
	private String name;
	
	public PackageManager(int id, String username, String password, String name) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.name=name;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}


	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}


	

}
