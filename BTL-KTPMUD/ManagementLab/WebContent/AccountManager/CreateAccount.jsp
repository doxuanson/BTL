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
		<center>Create Account</center>
	</h2>

	<%
		ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
		GettingThanhVien gettingthanhvien = new GettingThanhVien();

		if (gettingthanhvien.isGiangVien(thanhvien.getMaTV()) == true) {
	%>

	<center>
		<form action="LoginController" method="POST">
			<table border="1" style="width: 1000px">
				<tr>
					<td><b>Tên đăng nhập</b></td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td><b>Mật khẩu</b></td>
					<td><input type="text" name="password" /></td>
				</tr>
				<tr>
					<td><b>Mã chức vụ</b></td>
					<td><select name="macv">
							<option value="CV1" selected>trưởng lab</option>
							<option value="CV2">nhóm trưởng</option>
							<option value="CV3">thành viên</option>
							<option value="CV4">thủ quỹ</option>
					</select></td>
				</tr>

			</table>
			<br />
			<%
				if (request.getAttribute("message") != null) {
			%>
			<p style="color: red"><%=(String) request.getAttribute("message")%>
			</p>
			<%
				}
			%>
			<input type="hidden" value="createaccount" name="command" /> <input
				type="submit" value="Create Account" class="btn btn-success" />
		</form>
	</center>

	<%
		} else {
			response.sendRedirect("/ManagementLab/ManagementLogin-login");
		}
	%>


</body>
</html>