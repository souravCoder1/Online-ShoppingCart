package com.sourav.dao;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

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
	public List<Category> getCategory(){
		Session s= factory.openSession();
		Query query=s.createQuery("from Category");
		List<Category> l=query.getResultList();
		return l;
	}
}
