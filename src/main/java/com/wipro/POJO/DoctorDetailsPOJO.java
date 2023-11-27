package com.wipro.POJO;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Doctor_Details")
public class DoctorDetailsPOJO {
    @Id
	private int DoctorId;
    
	private String DoctorName;
	private Date DOB;
	private Date DOJ;
	private String Gender;
	private long number;
	private String Qualification;
	private String DoctorSpecification;
	private int YearsOfExperience;
	private String Address;
	private String DoctorStatus;
	public DoctorDetailsPOJO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getDoctorId() {
		return DoctorId;
	}
	public void setDoctorId(int doctorId) {
		DoctorId = doctorId;
	}
	public String getDoctorName() {
		return DoctorName;
	}
	public void setDoctorName(String doctorName) {
		DoctorName = doctorName;
	}
	public Date getDOB() {
		return DOB;
	}
	public void setDOB(Date dOB) {
		DOB = dOB;
	}
	public Date getDOJ() {
		return DOJ;
	}
	public void setDOJ(Date dOJ) {
		DOJ = dOJ;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public String getQualification() {
		return Qualification;
	}
	public void setQualification(String qualification) {
		Qualification = qualification;
	}
	public String getDoctorSpecification() {
		return DoctorSpecification;
	}
	public void setDoctorSpecification(String doctorSpecification) {
		DoctorSpecification = doctorSpecification;
	}
	public int getYearsOfExperience() {
		return YearsOfExperience;
	}
	public void setYearsOfExperience(int yearsOfExperience) {
		YearsOfExperience = yearsOfExperience;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getDoctorStatus() {
		return DoctorStatus;
	}
	public void setDoctorStatus(String doctorStatus) {
		DoctorStatus = doctorStatus;
	}
	@Override
	public String toString() {
		return "DoctorDetailsPOJO [DoctorId=" + DoctorId + ", DoctorName=" + DoctorName + ", DOB=" + DOB + ", DOJ="
				+ DOJ + ", Gender=" + Gender + ", number=" + number + ", Qualification=" + Qualification
				+ ", DoctorSpecification=" + DoctorSpecification + ", YearsOfExperience=" + YearsOfExperience
				+ ", Address=" + Address + ", DoctorStatus=" + DoctorStatus + "]";
	}
	
	
	
	
}
