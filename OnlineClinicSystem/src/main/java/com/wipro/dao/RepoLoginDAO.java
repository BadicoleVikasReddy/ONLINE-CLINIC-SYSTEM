package com.wipro.dao;

import org.springframework.data.repository.CrudRepository;

import com.wipro.POJO.RepoLoginPOJO;

public interface RepoLoginDAO extends CrudRepository<RepoLoginPOJO, String> {


}
