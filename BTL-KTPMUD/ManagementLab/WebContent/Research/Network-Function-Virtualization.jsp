<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NFV Team</title>
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
	<jsp:include page="/template/header"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							<a href="#">GROUP INFO</a>
						</h3>
					</div>

					<div class="panel-body">
						<i class="fa fa-hand-o-right" aria-hidden="true"><a
							href="#introduction"> Introduction</a> </i>
						<p></p>
						<i class="fa fa-hand-o-right" aria-hidden="true"><a
							href="#leader"> Leader</a> </i>
						<p></p>
						<i class="fa fa-hand-o-right" aria-hidden="true"><a
							href="#members"> Members</a> </i>
					</div>
				</div>

			</div>

			<div class="col-md-9">
				<h2>
					<a href="Research-Network-Function-Virtualization"><i class="fa fa-home" aria-hidden="true"></i>
						NFV</a>
				</h2>
				<hr />
				<h2>
					<a name="introduction">Introduction</a>
				</h2>
				<p>NFV</p>
				<h2>
					<a name="leader">Leader</a>
					<%!GettingThanhVien gettingthanhvien = new GettingThanhVien();%>
					<%
						for (ThanhVien nhomtruong : gettingthanhvien.getListNFVLeader()) {
					%>

				</h2>
				<p><b><%=nhomtruong.getHoTen()%></b></p>
				<%
					}
				%>
				<h2>
					<a name="members">Members</a>
				</h2>

				<%
					for (ThanhVien dsthanhvien : gettingthanhvien.getListNFVThanhVien()) {
				%>

				<div class="row">
					<div class="col-md-6">
						<b><%=dsthanhvien.getHoTen()%></b>
					</div>
					<div class="col-md-6">
						<a><%=dsthanhvien.getEmail()%> </a>
					</div>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</div>

	<jsp:include page="/template/footer"></jsp:include>
</body>
</html>