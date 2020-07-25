package com.sourav.main;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Shopping {		
	public static SessionFactory getSessionFactory() {
		SessionFactory s = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
     
        return s;
    }
}
