<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CreateAccount</title>
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
	<jsp:include page="/template/Silebar"></jsp:include>
	<h2 style="color: blue">
		<center>Delete Account</center>
	</h2>

	<%
		ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
		GettingThanhVien gettingthanhvien = new GettingThanhVien();

		if (gettingthanhvien.isGiangVien(thanhvien.getMaTV()) == true) {
	%>

	<center>
		<form action="LoginController" method="POST">
			<b>Nhập username: </b> <input type="text" name="username" /> <br />
			<%
				if (request.getAttribute("message") != null) {
			%>
			<p style="color: red"><%=(String) request.getAttribute("message")%>
			</p>
			<%
				}
			%>
			<br /> <input type="hidden" value="deleteaccount" name="command" />
			<input type="submit" value="Delete Account" class="btn btn-success" />
		</form>
	</center>

	<%
		} else {
			response.sendRedirect("/ManagementLab/ManagementLogin-login");
		}
	%>


</body>
</html>