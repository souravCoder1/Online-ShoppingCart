<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Shopping Cart</title>
<%@include file="components/common_js_css.jsp" %>
</head>
	<body>

		<%@include file="components/navbar.jsp" %>
		<div class="container-fluid">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
				<%@include file="components/message.jsp" %>
					<div class="card-body px-5">
					    <h3 class="text-center my-3">Sign up</h3>
						<form action="reg" method="post">
						  <div class="form-group">
						    <label for="name">User Name</label>
						    <input type="text" class="form-control" name="name" placeholder="Enter Name"/>
						  </div>
						  <div class="form-group">
						    <label for="mail">Mail Id</label>
						    <input type="text" class="form-control" name="mail" placeholder="Enter Mail Id"/>
						  </div>
						  <div class="form-group">
						    <label for="pass">Password</label>
						    <input type="password" class="form-control" name="pass" placeholder="Enter Password"/>
						  </div>
						  <div class="form-group">
						    <label for="ph-no">Phone Number</label>
						    <input type="text" class="form-control" name="ph-no" placeholder="Enter Phone Number"/>
						  </div>
						  <div class="form-group">
						    <label for="address">Address</label>
						    <textarea style="hight: 200px;" class="form-control" name="address" placeholder="Enter Address"></textarea>
						  </div>
						  <div class="container text-center">
						  	<button type="submit" class="btn btn-outline-success">Registration</button>
						  	<button class="btn btn-outline-warning">Reset</button>
						  </div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>	
	</body>
</html>