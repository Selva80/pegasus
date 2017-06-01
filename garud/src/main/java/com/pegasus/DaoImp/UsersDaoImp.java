package com.pegasus.DaoImp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pegasus.Dao.UsersDao;
import com.pegasus.model.Users;

@Repository
public class UsersDaoImp implements UsersDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public Users getUserByusername(String userName) 
	{
		Session session =sessionFactory.openSession();
	Query query= session.createQuery("from Users where username = "+"'"+userName+"'");	
	List<Users> uList	= query.list();
		session.close();
		
		return uList.get(0);
		
	}

}
