<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet"
	href="jquery-bootstrap/bootstrap-3.3.7-dist/css/bootstrap.css" />
<link rel="stylesheet"
	href="jquery-bootstrap/bootstrap-3.3.7-dist/css/bootstrap-theme.css" />
<link rel="stylesheet"
	href="jquery-bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="jquery-bootstrap/jquery-3.2.1.js"></script>
<script type="text/javascript"
	src="jquery-bootstrap/bootstrap-3.3.7-dist/js/bootstrap.js"></script>

<%@ page
	import="java.sql.SQLException, java.util.ArrayList, connect.*, model.* "%>
</head>
<body>

	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title">LOGIN</h3>
			</div>

			<div class="panel-body">
				<form class="form-horizontal" role="form" action="LoginController"
					method="POST">

					<div class="form-group">
						<label for="username" class="col-md-2 control-label">User
							Name</label>

						<div class="col-md-4 ">
							<input type="text" class="form-control" name="username"
								placeholder="Enter User Name">
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="col-md-2 control-label">Password</label>

						<div class="col-md-4">
							<input type="password" class="form-control" name="password"
								placeholder="Enter Passowd">

						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<%
								String error = (String) request.getAttribute("Error");

								if (error != null) {
							%>

							<p style="color: red"><%=error%></p>
							<%
								}
							%>

							<input type="hidden" value="login" name="command" />
							<button type="submit" class="btn btn-default">Login</button>
						</div>
					</div>

				</form>
			</div>
		</div>

	</div>


</body>
</html>