<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<%@include file="components/common_js_css.jsp" %>
</head>
<body>

    <%@include file="components/navbar.jsp" %>
	<div class="container-fluid">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header custom-bg text-white">
					   <h3>Login Here!!</h3>
					</div>
					<div class="class-body">
						<form action="login" method="post">
							  <div class="form-group">
							    <label for="exampleInputEmail1">Email address</label>
							    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
							    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
							  </div>
							  <div class="form-group">
							    <label for="exampleInputPassword1">Password</label>
							    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
							  </div>
							  <a href="reg.jsp" class="d-block">If not registered click here</a>
							  <div class="container text-center">
							  	<button type="submit" class="btn btn-outline-warning">Submit</button>
							  	<button type="reset" class="btn btn-outline-warning">Reset</button>
							  </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>