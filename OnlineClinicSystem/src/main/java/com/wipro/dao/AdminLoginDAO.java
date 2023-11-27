package com.wipro.dao;

import org.springframework.data.repository.CrudRepository;

import com.wipro.POJO.AdminLoginPOJO;

public interface AdminLoginDAO extends CrudRepository<AdminLoginPOJO, String> {

}
