package com.wipro.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.wipro.POJO.DoctorDetailsPOJO;

public interface DoctorDAO  extends CrudRepository<DoctorDetailsPOJO, Integer>{
	
	@Query("Select d from DoctorDetailsPOJO d where d.DoctorStatus=:DoctorStatus")
	List<DoctorDetailsPOJO> findByDoctorStatus(String DoctorStatus);
}
