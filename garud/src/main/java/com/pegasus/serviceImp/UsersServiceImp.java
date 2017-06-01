package com.pegasus.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pegasus.Dao.UsersDao;
import com.pegasus.model.Users;
import com.pegasus.service.UsersService;

@Service
public class UsersServiceImp implements UsersService {

	@Autowired
	private UsersDao usersDao;
	
	public Users getUserByusername(String userName) {
		
		return usersDao.getUserByusername(userName);
	}

}
