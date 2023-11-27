package com.wipro.POJO;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "User_registration_Details")
public class UserRegistrationPOJO {
private String Firstname;
private String Lastname;
private int  Age;
private String Gender;
private String password;
private String Address;
private long Phoneno;
private String Email;

@Id
private String username;
public UserRegistrationPOJO() {
	super();
	// TODO Auto-generated constructor stub
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getFirstname() {
	return Firstname;
}
public void setFirstname(String firstname) {
	Firstname = firstname;
}
public String getLastname() {
	return Lastname;
}
public void setLastname(String lastname) {
	Lastname = lastname;
}
public int getAge() {
	return Age;
}
public void setAge(int age) {
	Age = age;
}
public String getGender() {
	return Gender;
}
public void setGender(String gender) {
	Gender = gender;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public long getPhoneno() {
	return Phoneno;
}
public void setPhoneno(long phoneno) {
	Phoneno = phoneno;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
@Override
public String toString() {
	return "UserRegistrationPOJO [Firstname=" + Firstname + ", Lastname=" + Lastname + ", Age=" + Age + ", Gender="
			+ Gender + ", password=" + password + ", Address=" + Address + ", Phoneno=" + Phoneno + ", Email=" + Email
			+ ", username=" + username + "]";
}



}
