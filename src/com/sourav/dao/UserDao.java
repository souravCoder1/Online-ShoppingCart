package com.sourav.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.sourav.model.User;

public class UserDao {
	
	private SessionFactory factory;

	public UserDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public User getValidUser(String mail,String pass) {
		User user=null;
		
		String query="from User where mail=:m and pass=:p";
		Session session=factory.openSession();
		Query q=session.createQuery(query);
		q.setParameter("m", mail);
		q.setParameter("p", pass);
		user=(User) q.uniqueResult();
		
		if(user==null)
			return null;
		
		session.close();
		return user;
	}

}
