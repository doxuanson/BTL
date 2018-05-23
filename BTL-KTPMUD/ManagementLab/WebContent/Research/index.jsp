<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Research</title>
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
</head>
<body>
	<jsp:include page="/template/header"></jsp:include>

	<center>
		<h1 style="color: blue">Research Groups</h1>
	</center>
	<br />

	<div class="container">
		<div class="row">
			<div class="col-md-3" style="background: #FFB401">
				<i class="fa fa-cogs fa-3x" aria-hidden="true"></i> <a
					href="Research-5G"> 5G</a>
			</div>
			<div class="col-md-3 col-md-offset-1"
				style="border: 1px ridge; background: #FFB401">
				<i class="fa fa-cogs fa-3x" aria-hidden="true"></i> <a
					href="Research-Internet-of-Things"> IoT</a>
			</div>
			<div class="col-md-3 col-md-offset-1"
				style="border: 1px ridge; background: #FFB401">
				<i class="fa fa-cogs fa-3x" aria-hidden="true"></i> <a
					href="Research-Network-Function-Virtualization"> NFV</a>
			</div>

		</div>
		<br /> <br />

		<div class="row">
			<div class="col-md-3" style="background: #FFB401">
				<i class="fa fa-cogs fa-3x" aria-hidden="true"></i> <a
					href="Research-Quality-of-Expreriences"> QoS</a>
			</div>

			<div class="col-md-3 col-md-offset-1" style="background: #FFB401">
				<i class="fa fa-cogs fa-3x" aria-hidden="true"></i> <a
					href="Research-Security"> Security</a>
			</div>


		</div>

		<jsp:include page="/template/footer"></jsp:include>
</body>
</html>