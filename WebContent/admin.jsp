<%@page import="java.util.List"%>
<%@page import="com.sourav.model.Category"%>
<%@page import="com.sourav.main.Shopping"%>
<%@page import="com.sourav.dao.CategoryDao"%>
<%@page import="com.sourav.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	User user=(User)session.getAttribute("current-user");
	if(user==null){
		session.setAttribute("message", "Invalid Details");
		response.sendRedirect("login.jsp");
	}
	else{
		if(user.getuType().equals("normal")){
			session.setAttribute("message", "You are not Admin!!!");
			response.sendRedirect("login.jsp");
		}
	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Admin</title>
	<%@include file="components/common_js_css.jsp" %>
</head>
	<body>
	    <%@include file="components/navbar.jsp" %>
	    <div class="container admin">
	  		<div class="container-fluid">
	  			<%@include file="components/message.jsp" %>
	  		</div>
	    	<div class="row mt-3">
	    		<div class="col-md-4">
	    			<div class="card">
	    				<div class="card-body text-center">
	    					<div class="container">
		    					<img style="max-width:100px;" class="text-uppercase text-muted" alt="users" class="img-fluid rounded-circle" src="image/team.png">
		    				</div>
	    					<h1>Users</h1>
	    				</div>
	    			</div>
	    		</div>
	    		<div class="col-md-4">
	    			<div class="card">
	    				<div class="card-body text-center">
	    					<div class="container">
		    					<img style="max-width:100px;" alt="Categories" class="img-fluid rounded-circle" src="image/list.png">
		    				</div>
	    					<h1 class="text-uppercase text-muted">Categories</h1>
	    				</div>
	    			</div>
	    		</div>
	    		<div class="col-md-4">
	    			<div class="card">
	    				<div class="card-body text-center">
		    				<div class="container">
		    					<img style="max-width:100px;" alt="Products" class="img-fluid rounded-circle" src="image/buy.png">
		    				</div>
	    					<h1 class="text-uppercase text-muted">Products</h1>
	    				</div>
	    			</div>
	    		</div>
	    	</div>
	    	<div class="row mt-3">
	    		<div class="col-md-6">
	    			<div class="card" data-toggle="modal" data-target="#add-category-modal">
	    				<div class="card-body text-center">
	    					<div class="container">
		    					<img style="max-width:100px;" alt="users" class="img-fluid rounded-circle" src="image/grid.png">
		    				</div>
		    				<p class="mt-2">click here to add new category</p>
	    					<h1 class="text-uppercase text-muted">Add Category</h1>
	    				</div>
	    			</div>
	    		</div>
	    		<div class="col-md-6">
	    			<div class="card" data-toggle="modal" data-target="#add-product-modal">
	    				<div class="card-body text-center">
	    					<div class="container">
		    					<img style="max-width:100px;" alt="" class="img-fluid rounded-circle" src="image/product.png">
		    				</div>
		    				<p class="mt-2">click here to add new product</p>
	    					<h1 class="text-uppercase text-muted">Add Product</h1>
	    				</div>
	    			</div>
	    		</div>
	    	<div>
	    	</div>
	    </div>
	</div>    
		<!-- Add Category Modal -->
	    <!-- Button trigger modal 
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add-category-modal">
	  Launch demo modal
	</button> -->

	<!-- Category Modal -->
	<div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header custom-bg text-white">
	        <h5 class="modal-title" id="exampleModalLabel">Fill Category Details</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="categoryOperationServlet" method="post">
	        	<input type="hidden" name="operation" value="addcategory">
	        	<div class="form-group">
	        		<input type="text" class="form-control" name="cattitle" placeholder="Enter Category Title">
	        	</div>
	        	<div class="form-group">
	        		<textarea style="height:200px" class="form-control" placeholder="Enter Category Description" name="catdesc" required></textarea>
	        	</div>
	        	<div class="container text-center">
	        		<button class="btn btn-outline-success">Add Category</button>
	        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        	</div>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- Product Modal -->
	
	<div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header custom-bg text-white">
	        <h5 class="modal-title" id="exampleModalLabel">Fill Product Details</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="categoryOperationServlet" method="post" enctype="multipart/form-data">
	        	<input type="hidden" name="operation" value="addproduct"/>
	        
	        	<input type="hidden" name="operation" value="addproduct">
	        	<div class="form-group">
	        		<input type="text" class="form-control" name="pname" placeholder="Enter Product Title">
	        	</div>
	        	<div class="form-group">
	        		<textarea style="height:200px" class="form-control" placeholder="Enter Product Description" name="pdesc" required></textarea>
	        	</div>
	        	<div class="form-group">
	        		<input type="text" class="form-control" name="pprice" placeholder="Enter Product Price">
	        	</div>
	        	<div class="form-group">
	        		<input type="text" class="form-control" name="pdiscount" placeholder="Enter Product Discount">
	        	</div>
	        	<div class="form-group">
	        		<input type="text" class="form-control" name="pQuantity" placeholder="Enter Product Quantity">
	        	</div>
	        	<%
	        		CategoryDao cdao = new CategoryDao(Shopping.getSessionFactory());
	        		List<Category> list=cdao.getCategory();
	        	%>
	        	<div class="form-group">
		        	<select id="" name="catid" class="form-control">
		        	  <%
		        	  		for(Category c:list){
		        	  %>
		        	  
					  <option value="volvo"><%=c.getCattitle() %></option>
					  
					  <%
		        	  	}
					  %>
					</select>
				</div>
				<div class="form-group">
	        		Select Pictures for Product <input type="file" id="pPhoto" required/>
	        	</div>
	        	<div class="container text-center">
	        		<button class="btn btn-outline-success">Add Product</button>
	        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        	</div>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	</body>
</html>