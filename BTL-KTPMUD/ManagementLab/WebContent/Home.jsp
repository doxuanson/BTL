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

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							<a href="Home">Home</a>
						</h3>
					</div>

					<div class="panel-body">
						<i class="fa fa-hand-o-right" aria-hidden="true"><a
							href="#generalinfo"> Introduction</a></i>
						<p></p>
						<i class="fa fa-hand-o-right" aria-hidden="true"><a
							href="#lectures"> Researchers</a></i>
					</div>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">LINKS</h3>
					</div>

					<div class="panel-body">
						<i class="fa fa-hand-o-right" aria-hidden="true"><a
							href="http://hust.edu.vn/" target="_blank"> Hanoi University
								of Science and Technology</a></i>
						<p></p>
						<i class="fa fa-hand-o-right" aria-hidden="true"><a
							href="http://set.hust.edu.vn" target="_blank"> School of
								Electronics and Telecommunications</a></i>
					</div>
				</div>
			</div>

			<div class="col-md-9">
				<h2>
					<a href="Home"><i class="fa fa-home" aria-hidden="true"></i>
						FI-LAB</a>
				</h2>
				<hr />
				<h2>
					<a name="generalinfo">Introduction</a>
				</h2>
				<p>Future Internet Laboratory Room 618 - Tạ Quang Bửu Library -
					Hanoi University of Science and Technology</p>
				<h2>
					<a name="lectures">Researchers</a>
				</h2>
				<%!GettingThanhVien gettinggiangvien = new GettingThanhVien();%>
				<%
					for (ThanhVien dsgianvien : gettinggiangvien.getListGiangVien()) {
				%>
				<div class="row">
					<div class="col-md-9">

						<%
							out.println("<h4 style='color: blue'>" + dsgianvien.getHoTen() + "</h4>");
								out.println("<p><b>Email: </b>" + dsgianvien.getEmail() + "</p>");
								out.println("<p><b>Điện thoại: </b>" + dsgianvien.getSoDT() + "</p>");
						%>
					</div>

					<div class="col-md-3">
						<img src="/ManagementLab/images/member/<%=dsgianvien.getAvatar()%>"
							style="width: 130px; height: 180px;" />
					</div>
				</div>
				<h1></h1>
				<h1></h1>
				<%
					}
				%>

			</div>
		</div>

	</div>

	<jsp:include page="/template/footer"></jsp:include>
</body>
</html>