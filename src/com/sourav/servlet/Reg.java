package com.sourav.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.omg.CORBA.Request;

import com.sourav.main.Shopping;
import com.sourav.model.User;

public class Reg extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Uname=req.getParameter("name");
		String Umail=req.getParameter("mail");
		String Upass=req.getParameter("pass");
		String Uph_no=req.getParameter("ph-no");
		String Uaddress=req.getParameter("address");
		
		if(Uname.isEmpty()) {
			System.out.println("Enter name");
			return;
		}
		User u= new User(Uname, Umail, Upass, Uph_no, Uaddress,"normal");
		
		Session session=Shopping.getSessionFactory().openSession();
		Transaction tx=session.beginTransaction();
		session.save(u);
		tx.commit();
		session.close();
		
	}
}
