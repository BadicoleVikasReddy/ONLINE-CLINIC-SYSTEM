package com.wipro.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.wipro.POJO.AppointmentDetailsPOJO;

public interface AppointmentDetailsDAO extends CrudRepository<AppointmentDetailsPOJO, Integer> {
	List<AppointmentDetailsPOJO> findByUsername(String username);
}
