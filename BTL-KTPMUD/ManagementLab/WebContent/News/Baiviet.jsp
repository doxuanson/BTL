<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bài viết</title>
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


<%@ page
	import="java.sql.SQLException, java.util.ArrayList , ultilities.*, connect.*, model.* "%>

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

	<div class="container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">
					<b> <%=baiviet.getTieuDe()%>
					</b>
					<hr />

					<p>

						<%
							for (TV_BV ds : gettingtv_bv.getListTV_BV(mabv)) {
						%>
						<i class="fa fa-user-o" aria-hidden="true" style="color: #FFA500">
							<%=ds.getMaTV()%>
						</i>
						<%
							}
						%>
					
					<p>
						<i class="fa fa-calendar-times-o" aria-hidden="true">Ngày
							đăng: <%=StringToDate.dateToString(baiviet.getNgayDang())%></i>
					</p>

				</h3>
			</div>

			<div class="panel-body"><%=baiviet.getNoiDung()%>
				<hr />
				<%
					if (thanhvien != null) {
						for (TV_BV ds : gettingtv_bv.getListTV_BV(mabv)) {
							if (thanhvien.getMaTV().equals(ds.getMaTV())) {
				%>

				<form action="AddNewPost" method="POST">

					<input type="hidden" name="mabv" value="<%=mabv%>" /> <a
						class="btn btn-info"
						href="/ManagementLab/News-EditBaiViet?mabv=<%=mabv%>"
						role="button">Edit</a> <input type="submit" value="Delete"
						name="command" class="btn btn-info" />

				</form>

				<%
					}
						}
					}
				%>

				<br /> <a href="/ManagementLab/News" class="btn btn-info"
					role="button"><i class="fa fa-reply" aria-hidden="true"></i>
					Quay lại</a>

			</div>
		</div>
	</div>

	<jsp:include page="/template/footer"></jsp:include>

</body>
</html>