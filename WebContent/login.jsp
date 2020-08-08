<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<%@include file="components/common_js_css.jsp" %>
</head>
<body>

    <%@include file="components/navbar.jsp" %>
    <%@include file="components/message.jsp" %>
	<div class="container-fluid">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-3">

					<div class="card-header custom-bg text-white">
					   <h4>Login Here!!</h4>
					</div>
					<div class="card-body">
						<form action="login" method="post">
							  <div class="form-group">
							    <label for="exampleInputEmail1">Email address</label>
							    <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Enter email">
							    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
							  </div>
							  <div class="form-group">
							    <label for="exampleInputPassword1">Password</label>
							    <input type="password" class="form-control" name="password" placeholder="Password">
							  </div>
							  
							  <div class="container text-center">
							  	<a href="reg.jsp" class="d-block">If not registered click here</a>
							  	<br>
							  	<button type="submit" class="btn btn-primary custom-bg">Submit</button>
							  	<button type="reset" class="btn btn-primary custom-bg border-0">Reset</button>
							  </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>