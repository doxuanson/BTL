<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Profile</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet"
	href="jquery-bootstrap/bootstrap-3.3.7-dist/css/bootstrap.css" />
<link rel="stylesheet"
	href="jquery-bootstrap/bootstrap-3.3.7-dist/css/bootstrap-theme.css" />
<link rel="stylesheet"
	href="jquery-bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="jquery-bootstrap/jquery-ui.css">

<script type="text/javascript" src="jquery-bootstrap/jquery-3.2.1.js"></script>
<script type="text/javascript" src="jquery-bootstrap/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="jquery-bootstrap/bootstrap-3.3.7-dist/js/bootstrap.js"></script>

<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>

<%@ page
	import="java.sql.SQLException, java.util.*,   ultilities.* , connect.*, model.* "%>


</head>
<body>
	<jsp:include page="/template/Silebar"></jsp:include>
	<h2 style="color: blue">
		<center>Edit Profile Information</center>
	</h2>

	<%
		ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
		GettingTrangThai gettingtrangthai = new GettingTrangThai();
		if (thanhvien != null) {
	%>
	<center>
		<form action="LoginController" method="POST">
			<table border="1" style="width: 1000px">
				<tr>
					<td><b>Họ tên</b></td>
					<td><input type="text" name="hoten"
						value="<%=thanhvien.getHoTen()%>" /></td>
				</tr>
				<input type="hidden" name="matv" value="<%=thanhvien.getMaTV()%>" />
				<tr>
					<td><b>Email</b></td>
					<td><input type="text" name="email"
						value="<%=thanhvien.getEmail()%>" /></td>
				</tr>
				<tr>
					<td><b>Ngày sinh</b></td>

					<td><input type="text" name="ngaysinh" id="datepicker"
						value="" /></td>
				</tr>
				<tr>
					<td><b>Lớp</b></td>
					<td><input type="text" name="lop"
						value="<%=thanhvien.getLop()%>" /></td>
				</tr>
				<tr>
					<td><b>Khóa</b></td>
					<td><input type="text" name="khoa"
						value="<%=thanhvien.getKhoa()%>" /></td>
				</tr>
				<tr>
					<td><b>Quê</b></td>
					<td><input type="text" name="que"
						value="<%=thanhvien.getQue()%>" /></td>
				</tr>
				<tr>
					<td><b>Số điện thoại</b></td>
					<td><input type="text" name="dienthoai"
						value="<%=thanhvien.getSoDT()%>" /></td>
				</tr>
				<tr>
					<td><b>Viện</b></td>
					<td><select name="vien">
							<option value="ET" selected>ET</option>
							<option value="IT">IT</option>
							<option value="MI">MI</option>
					</select></td>
				</tr>
				<tr>
					<td><b>Trạng thái</b></td>
					<td><select name="trangthai">
							<option value="TT1" selected>đang hoạt động</option>
							<option value="TT2">ngừng hoạt động</option>
					</select></td>
				</tr>
				<tr>
					<td><b>Nhóm</b></td>
					<td><select name="nhom">
							<option value="5G" selected>5G</option>
							<option value="IoT">IoT</option>
							<option value="NFV">NFV</option>
							<option value="QoS">QoS</option>
							<option value="SE">SE</option>
					</select></td>
				</tr>
			</table>
			<h1></h1>
			<input type="hidden" value="update" name="command" /> <input
				type="submit" value="Update" class="btn btn-info" />
		</form>
	</center>

	<%
		} else {
		response.sendRedirect("/ManagementLab/ManagementLogin-login");
		}
	%>


</body>
</html>