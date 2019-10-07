package com.OMO.JavaBeans;

public class Users {
	
	private int id;
	private String name;
	private String password,check_password;
	private String address;
	private String phone;
	private String email;
	private String role;
	
	public Users(int id, String name, String password, String check_password, String address, String phone, String email, String role) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.check_password = check_password;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.role = role;
	}
	public Users() {
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCheck_password() {
		return check_password;
	}
	public void setCheck_password(String check_password) {
		this.check_password = check_password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	

}
