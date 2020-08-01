package com.sourav.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.omg.CORBA.Request;

import com.sourav.main.Shopping;
import com.sourav.model.User;

public class Reg extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String Uname=req.getParameter("name");
		String Umail=req.getParameter("mail");
		String Upass=req.getParameter("pass");
		String Uph_no=req.getParameter("ph-no");
		String Uaddress=req.getParameter("address");
		
		if(Uname.isEmpty()) {
			System.out.println("Name can not empty");
		}
		User u= new User(Uname, Umail, Upass, Uph_no, Uaddress,"normal");
		
		Session session=Shopping.getSessionFactory().openSession();
		Transaction tx=session.beginTransaction();
		int UserId=(int) session.save(u);	
		HttpSession httpsession=req.getSession();
		tx.commit();
		session.close();
		httpsession.setAttribute("message", "Successfully Registered" + UserId);
		res.sendRedirect("reg.jsp");
	}
}
