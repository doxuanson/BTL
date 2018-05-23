<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Researcher</title>
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
	import="java.sql.SQLException, java.util.ArrayList, connect.*,
model.* "%>
</head>
<body>
	<jsp:include page="/template/header"></jsp:include>
	<div class="container">
		<center>
			<h1 style="color: green;">Researchers</h1>
		</center>
		<div style="height: 50px;"></div>

		<%!GettingThanhVien gettinggiangvien = new GettingThanhVien();%>
		<%
			int i = 0;
			for (ThanhVien dsgiangvien : gettinggiangvien.getListGiangVien()) {
				i++;
				if (i % 2 == 1) {
		%>
		<div class="row">
			<%
				}
			%>
			<div class='col-md-6'>
				<div class="row">
					<div class='col-md-3'>
						<img class="img-circle"
							src="/ManagementLab/images/member/<%=dsgiangvien.getAvatar()%>"
							style="width: 120px; height: 120px; border: 3px solid #f2f2f2;" />

					</div>
					<div class='col-md-9'>
						<%
							out.println("<h4 style='color: blue'>" + dsgiangvien.getHoTen() + "</h4>");
								out.println("<p><b>Email: </b>" + dsgiangvien.getEmail() + "</p>");
								out.println("<p><b>Điện thoại: </b>" + dsgiangvien.getSoDT() + "</p>");
								out.println("<h1></h1>");
						%>
					</div>

				</div>

			</div>
			<%
				if (i % 2 == 0) {
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