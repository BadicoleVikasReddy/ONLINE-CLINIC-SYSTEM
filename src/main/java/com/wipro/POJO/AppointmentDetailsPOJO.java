package com.wipro.POJO;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "appointment_details")
public class AppointmentDetailsPOJO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int appointmentId;
	private String username;
	private Date appointmentDate;
	private int doctorId;
	private String doctorName;
	private String specification;
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}
	public AppointmentDetailsPOJO() {
		super();
	}
	public int getAppointmentId() {
		return appointmentId;
	}
	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	public Date getAppointmentDate() {
		return appointmentDate;
	}
	public void setAppointmentDate(Date appointmentDate) {
		this.appointmentDate = appointmentDate;
	}
	@Override
	public String toString() {
		return "AppointmentDetailsPOJO [appointmentId=" + appointmentId + ", username=" + username + ", doctorId="
				+ doctorId + ", doctorName=" + doctorName + ", specification=" + specification + ", appointmentDate="
				+ appointmentDate + "]";
	}
	public AppointmentDetailsPOJO(String username, int doctorId, String doctorName, String specification,
			Date appointmentDate) {
		super();
		this.username = username;
		this.doctorId = doctorId;
		this.doctorName = doctorName;
		this.specification = specification;
		this.appointmentDate = appointmentDate;
	}
	
	
	
	
}
