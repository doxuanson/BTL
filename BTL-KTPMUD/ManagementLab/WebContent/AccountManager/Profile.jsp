<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile</title>
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
	import="java.sql.SQLException, java.util.*, ultilities.* ,connect.*, model.* "%>

</head>
<body>
	<jsp:include page="/template/Silebar"></jsp:include>

	<h2 style="color: blue">
		<center>Profile Information</center>
	</h2>

	<%
		ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
		GettingTrangThai gettingtrangthai = new GettingTrangThai();
		if (thanhvien != null) {
	%>
	<center>
		<table border="1" style="width: 1000px">
			<tr>
				<td><b>Họ tên</b></td>
				<td>
					<%
						if (thanhvien.getHoTen() != null) {
								out.println(thanhvien.getHoTen());
							}
					%>
				</td>
			</tr>
			<tr>
				<td><b>Mã thành viên</b></td>
				<td>
					<%
						if (thanhvien.getMaTT() != null) {
								out.println(thanhvien.getMaTV());
							}
					%>
				
			</tr>
			<tr>
				<td><b>Email</b></td>
				<td>
					<%
						if (thanhvien.getEmail() != null) {
								out.println(thanhvien.getEmail());
							}
					%>


				</td>
			</tr>
			<tr>
				<td><b>Ngày sinh</b></td>
				<td>
					<%
						if (thanhvien.getNgaySinh() != null) {
							out.println(StringToDate.dateToString(thanhvien.getNgaySinh()));
							}
					%>

				</td>
			</tr>
			<tr>
				<td><b>Lớp</b></td>
				<td>
					<%
						if (thanhvien.getLop() != null) {
								out.println(thanhvien.getLop());
							}
					%>
				</td>
			</tr>
			<tr>
				<td><b>Khóa</b></td>
				<td>
					<%
						if (thanhvien.getKhoa() != null) {
								out.println(thanhvien.getKhoa());
							}
					%>
				</td>
			</tr>
			<tr>
				<td><b>Quê</b></td>
				<td>
					<%
						if (thanhvien.getQue() != null) {
								out.println(thanhvien.getQue());
							}
					%>
				</td>
			</tr>
			<tr>
				<td><b>Số điện thoại</b></td>
				<td>
					<%
						if (thanhvien.getSoDT() != null) {
								out.println(thanhvien.getSoDT());
							}
					%>
				</td>
			</tr>
			<tr>
				<td><b>Viện</b></td>
				<td>
					<%
						if (thanhvien.getMaVien() != null) {
								out.println(thanhvien.getMaVien());
							}
					%>
				</td>
			</tr>
			<tr>
				<td><b>Trạng thái</b></td>
				<td>
					<%
						out.println(gettingtrangthai.getTrangThai(thanhvien.getMaTT()).getMoTa());
					%>
				</td>
			</tr>
			<tr>
				<td><b>Nhóm</b></td>
				<td>
					<%
						if (thanhvien.getMaNhom() != null) {
								out.println(thanhvien.getMaNhom());
							}
					%>
				</td>
			</tr>
		</table>
		<h1></h1>
		<p>
			<a href="/ManagementLab/AccountManager-EditProfile"><b><i
					class="fa fa-pencil-square-o" aria-hidden="true"></i>Update
					Information</b></a>
		</p>
	</center>

	<%
		} else {
			response.sendRedirect("/ManagementLab/ManagementLogin-login");
		}
	%>


</body>
</html>