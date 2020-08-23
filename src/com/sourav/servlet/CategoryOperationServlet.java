package com.sourav.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;

import com.sourav.dao.CategoryDao;
import com.sourav.main.Shopping;
import com.sourav.model.Category;

@MultipartConfig
public class CategoryOperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type=request.getParameter("operation");
		if(type.trim().equals("addcategory")) {
			String title=request.getParameter("cattitle");			
			String desc=request.getParameter("catdesc");
			Category cat=new Category();
			cat.setCattitle("title");
			cat.setCatdesc("desc");
			CategoryDao categoryDao=new CategoryDao(Shopping.getSessionFactory());
			int catId=categoryDao.saveCategory(cat);
			HttpSession session=request.getSession();
			session.setAttribute("message","Category Added:"+catId);
			response.sendRedirect("admin.jsp");
		}
		else if(type.trim().equals("addproduct")){
			
		}
		
	}

}
