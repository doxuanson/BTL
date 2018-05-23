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
		DuAn duan = new DuAn();
		GettingDuAn gettingduan = new GettingDuAn();
		GettingThanhVien gettingthanhvien = new GettingThanhVien();
		ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
		GettingDuAn_TV gettingduan_tv = new GettingDuAn_TV();
		String mada = request.getParameter("mada");
		duan = gettingduan.getDuAn(mada);
	%>


	<div class="container">
		<h2 style="color: blue"><%=duan.getTenDA()%></h2>
		<p>
			<b>Đối tác: </b>
			<%=duan.getDoiTac()%></p>
		<p>
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
			<b>Mô tả: </b>
			<%=duan.getMoTa()%></p>
		<p>
		<p>
			<b>Trạng thái: </b>
			<%=duan.getTrangThaiDA()%></p>
		<hr />

		<%
			if (thanhvien != null && gettingthanhvien.isGiangVien(thanhvien.getMaTV()) == true) {
		%>
		<form action="HandleProject" method="post">
			<input type="hidden" name="mada" value="<%=mada%>" />
			<p>
				<a class="btn btn-success"
					href="/ManagementLab/Projects-EditProject?mada=<%=mada%>"
					role="button">Edit</a> <input class="btn btn-warning" type="submit"
					value="Delete" name="command" /> <br />
		</form>
		<%
			}
		%>
		<a href="/ManagementLab/Projects-Projects" class="btn btn-info"
			role="button"><i class="fa fa-reply" aria-hidden="true"></i> Quay
			lại</a>

	</div>

	<jsp:include page="/template/footer"></jsp:include>
</body>
</html>