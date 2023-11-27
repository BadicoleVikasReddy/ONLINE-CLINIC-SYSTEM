package com.wipro.dao;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.wipro.POJO.RepoLoginPOJO;
import com.wipro.POJO.UserRegistrationPOJO;

public interface UserRegistrationDAO extends CrudRepository<UserRegistrationPOJO, String>{


}
