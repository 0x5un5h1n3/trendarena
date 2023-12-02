package com.ox5un5h1n3.web.trendarena.dao;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ox5un5h1n3.web.trendarena.entity.User;

public class UserDao {

	private SessionFactory factory;

	public UserDao(SessionFactory factory) {
		this.factory=factory;
	}
	
	//getuser by email and password
	public User getUserByEmailAndPassword(String email,String password)
	{
	   User user=null;
	   try {
		
		   String query="from User where email=:e and password=:p";
		   Session session=this.factory.openSession();
		   Query q=session.createQuery(query);
		   q.setParameter("e",email);
		   q.setParameter("p",password);
		   user=(User)q.uniqueResult();
		   
		   session.close();
		   
		   
	} catch (Exception e) {
		e.printStackTrace();
	}
	   return user;
		
		
		
	}
	
	 
}
