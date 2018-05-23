<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Projects</title>
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
</script>
<%@ page
	import="java.sql.SQLException, java.util.ArrayList, connect.*, model.* "%>
</head>
<body>
	<jsp:include page="/template/header"></jsp:include>
	<%
		ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
		GettingThanhVien gettingthanhvien = new GettingThanhVien();
		GettingDuAn gettingduan = new GettingDuAn();
		String mada = request.getParameter("mada");
		DuAn duan = gettingduan.getDuAn(mada);
	%>
	<%
		if (gettingthanhvien.isGiangVien(thanhvien.getMaTV()) == true) {
	%>


	<div class="container">
		<form action="HandleProject" method="post">
			<center>
				<h1 style="color: green">Edit Project</h1>
			</center>
			<%
				if (request.getAttribute("message") != null) {
			%>
			<p style="color: red"><%=(String) request.getAttribute("message")%>
			</p>
			<%
				}
			%>
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1">Tên project</span>
				<input type="text" class="form-control"
					placeholder="<%=duan.getTenDA()%>" aria-describedby="basic-addon1"
					name="project_name">
			</div>
			<br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1">Đối tác</span> <input
					type="text" class="form-control"
					placeholder="<%=duan.getDoiTac()%>" aria-describedby="basic-addon1"
					name="doitac">
			</div>
			<br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1">Mô tả</span> <input
					type="text" class="form-control" placeholder="<%=duan.getMoTa()%>"
					aria-describedby="basic-addon1" name="mota">
			</div>
			<br />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1">Trạng thái
					dự án</span> <input type="text" class="form-control"
					placeholder="<%=duan.getTrangThaiDA()%>"
					aria-describedby="basic-addon1" name="trangthai">
			</div>


			<center>
				<input type="hidden" name="mada" value="<%=mada%>" /> <input
					class="btn btn-success" type="submit" value="Edit_Project"
					name="command" />
			</center>
		</form>
	</div>


	<%
		}
	%>
	<jsp:include page="/template/footer"></jsp:include>
</body>
</html>