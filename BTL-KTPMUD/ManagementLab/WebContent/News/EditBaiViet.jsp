<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add new post</title>
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

	<%
		ThanhVien thanhvien = (ThanhVien) session.getAttribute("thanhvien");
		GettingBaiViet gettingbaiviet = new GettingBaiViet();
		GettingTV_BV gettingtv_bv = new GettingTV_BV();

		BaiViet baiviet = new BaiViet();
		String mabv = request.getParameter("mabv");
		baiviet = gettingbaiviet.getBaiViet(mabv);
	%>
	<%
		if (thanhvien != null) {
	%>
	<form action="AddNewPost" method="POST">
		<div class="container">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title">
						<%
							if (request.getAttribute("message") != null) {
						%>
						<p style="color: red"><%=(String) request.getAttribute("message")%>
						</p>
						<%
							}
						%>
						<b>Tiêu đề: </b> <input type="text"
							value="<%=baiviet.getTieuDe()%>" name="tieude" />

					</h3>
				</div>
				<div class="panel-body">
					<p>
					<h4>Nội dung</h4>
					</p>

					<hr />

					<textarea rows="
							20px" cols="
							150px" name="noidung"><%=baiviet.getNoiDung()%></textarea>


					<hr />

					<p>

						<input type="hidden" value="Edit" name="command" /> <input
							type="hidden" value="<%=mabv%>" name="mabv" />

						<button type="submit" class="btn btn-info">
							<i class="fa fa-floppy-o" aria-hidden="true"></i> Save
						</button>
						<a href="News" class="btn btn-info" role="button"><i
							class="fa fa-reply" aria-hidden="true"> Quay lại</i></a>
					</p>


				</div>
			</div>
		</div>
	</form>
	<%
		} else {
			response.sendRedirect("/ManagementLab/ManagementLogin-login");
		}
	%>


	<jsp:include page="/template/footer"></jsp:include>

</body>
</html>