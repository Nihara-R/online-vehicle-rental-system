package com.user;

public class User {
	private int id;
	private String firstname;
	private String lastname;
	private String email;
	private String phone;
	private String password;
	private String repassword;
	private String role;
public User() {
	
}
	public User(int id, String firstname, String lastname, String email, String phone, String password,
			String repassword, String role) {
		this.id=id;
		this.firstname =firstname;
		this.lastname =lastname;
		this.email =email;
		this.phone =phone;
		this.password =password;
		this.repassword =repassword;
		this.role =role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
}
