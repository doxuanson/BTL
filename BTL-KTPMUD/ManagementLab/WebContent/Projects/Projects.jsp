<%@page import="java.security.spec.DSAGenParameterSpec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<style>
a {
	font-family: Helvetica;
	line-height: 2em;
}
</style>

<%@ page
	import="java.sql.SQLException, java.util.ArrayList, connect.*, model.* "%>

</head>
<body>
	<jsp:include page="/template/header"></jsp:include>
	<%
		GettingDuAn gettingduan = new GettingDuAn();
		ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
		GettingThanhVien gettingthanhvien = new GettingThanhVien();
		GettingDuAn_TV gettingduan_tv = new GettingDuAn_TV();
	%>

	<div class="container">
		<%
			if (thanhvien != null) {
		%>

		<a class="btn btn-success" href="/ManagementLab/Projects-CreateDuAn"
			role="button">Create Project</a>

		<hr />
		<%
			}
			for (DuAn duan : gettingduan.getListDuAn()) {
		%>
		<h2 style="color: blue"><%=duan.getTenDA()%></h2>
		<b>Giảng Viên: </b>
		<%
			for (DuAn_TV duan_tv : gettingduan_tv.getListGV(duan.getMaDA())) {
					out.println((gettingthanhvien.getThanhVien(duan_tv.getMaTV())).getHoTen() + ",");
				}
		%>
		<p>
			<b>Sinh viên tham gia: </b>
			<%
				for (DuAn_TV duan_tv : gettingduan_tv.getListTV(duan.getMaDA())) {
						out.println((gettingthanhvien.getThanhVien(duan_tv.getMaTV())).getHoTen() + ",");
					}
			%>
		</p>
		<p>
			<b>Trạng thái: </b>
			<%=duan.getTrangThaiDA()%></p>

		<p>
			<a href="Projects-Project_Detail?mada=<%=duan.getMaDA()%>">more...<i
				class="fa fa-angle-double-right" aria-hidden="true"></i></a>
		</p>
		<hr />

		<%
			}
		%>

	</div>


	<jsp:include page="/template/footer"></jsp:include>
</body>
</html>