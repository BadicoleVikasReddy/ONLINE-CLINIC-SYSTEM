package com.wipro.POJO;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Admin_Login")
public class AdminLoginPOJO {
	@Id
	private String username;

	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "AdminLoginPOJO [username=" + username + ", password=" + password + "]";
	}

	public AdminLoginPOJO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
