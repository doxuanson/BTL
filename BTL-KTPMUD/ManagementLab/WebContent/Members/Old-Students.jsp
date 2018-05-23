<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Old Students</title>
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

<style type="text/css">
.img-circle {
	border-radius: 100%;
}
</style>

<%@ page
	import="java.sql.SQLException, java.util.ArrayList, connect.*, model.* "%>
</head>
<body>
	<jsp:include page="/template/header"></jsp:include>
	<div class="container">
		<center>
			<h1 style="color: green;">Current Students</h1>
			<div style="height: 50px;"></div>
		</center>

		<%!GettingThanhVien gettingthanhvien = new GettingThanhVien();%>
		<%
			int i = 0;
			for (ThanhVien dsoldstudents : gettingthanhvien.getListOldThanhVien()) {
				i++;
				if (i % 3 == 1) {
		%>
		<div class="row">
			<%
				}
			%>
			<div class='col-md-4'>
				<div class="row">
					<div class='col-md-4'>
						<%
							if (dsoldstudents.getAvatar() != null) {
						%>
						<img class="img-circle"
							src="/ManagementLab/images/member/<%=dsoldstudents.getAvatar()%>"
							style="width: 120px; height: 120px; border: 3px solid #f2f2f2;" />
						<%
							} else {
						%>
						<img class="img-circle" src="/ManagementLab/images/member/mem.jpg"
							style="width: 120px; height: 120px; border: 3px solid #f2f2f2;" />
						<%
							}
						%>


					</div>
					<div class='col-md-8'>
						<%
							out.println("<h4 style='color: blue'>" + dsoldstudents.getHoTen() + "</h4>");
								out.println("<p><b>Mã TV: </b>" + dsoldstudents.getMaTV() + "</p>");
								out.println("<p><b>Điện thoại: </b>" + dsoldstudents.getSoDT() + "</p>");
								out.println("<p><b>Nhóm: </b>" + dsoldstudents.getMaNhom() + "</p>");
								out.println("<h1></h1>");
						%>
					</div>

				</div>


			</div>
			<%
				if (i % 3 == 0) {
			%>
		</div>
		<%
			}
			}
		%>


	</div>
	<jsp:include page="/template/footer"></jsp:include>
</body>
</html>