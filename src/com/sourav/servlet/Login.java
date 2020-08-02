package com.sourav.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sourav.dao.UserDao;
import com.sourav.main.Shopping;
import com.sourav.model.User;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String mail=req.getParameter("email");
		String pass=req.getParameter("password");
		
		//Authenticating
		UserDao userdao=new UserDao(Shopping.getSessionFactory());
		User user=userdao.getValidUser(mail, pass);
		
		HttpSession httpsession=req.getSession();
		
		if(user==null) {			
			httpsession.setAttribute("message", "Invalid Details");
			res.sendRedirect("login.jsp");
		}
		else {
			System.out.println("<h1> Welcome "+ user.getName() +"</h1>");
			httpsession.setAttribute("current-user", user);
			
			 if(user.getuType().equals("admin"))
				 res.sendRedirect("admin.jsp");
			 else if(user.getuType().equals("normal"))
				 res.sendRedirect("normal.jsp");
			 else
				 System.out.println("Invalid user Type");
		}
		
	}

}
