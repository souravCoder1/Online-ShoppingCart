package com.sourav.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sourav.model.Category;

public class CategoryDao {
	private SessionFactory factory;

	public CategoryDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	public int saveCategory(Category cat) {
		Session session=factory.openSession();
		Transaction transtion=session.beginTransaction(); 
		int catId=(int) session.save(cat);
		transtion.commit();
		session.clear();
		return catId;
	}
}
