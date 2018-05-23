<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>News</title>
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
	import="java.sql.SQLException, java.util.ArrayList , connect.*, model.* "%>
</head>
<body>
	<jsp:include page="/template/header"></jsp:include>

	<div class="container">
		<div class="col-md-9">

			<div class="panel panel-info">

				<div class="panel-heading">

					<h3 class="panel-title">
						<a href="/ManagementLab/News-AddBaiViet"><i
							class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i><b>Add
								new post</b></a>
					</h3>
				</div>

			</div>


			<%!GettingBaiViet gettingbaiviet = new GettingBaiViet();
	GettingTV_BV gettingtv_bv = new GettingTV_BV();%>

			<%
				for (BaiViet dsbaiviet : gettingbaiviet.getListBaiViet()) {
					String mabv = dsbaiviet.getMaBV();
			%>

			<div class="panel panel-success">

				<div class="panel-heading">

					<h3 class="panel-title">
						<b> <%=dsbaiviet.getTieuDe()%></b>
					</h3>
				</div>
				<div class="panel-body">

					<p>
						<%
							for (TV_BV dstv_bv : gettingtv_bv.getListTV_BV(mabv)) {
						%>
						<i class="fa fa-user-o" aria-hidden="true" style="color: #FFA500">
							<%=dstv_bv.getMaTV()%>
						</i>
						<%
							}
						%>

					</p>

					<i class="fa fa-calendar-times-o" aria-hidden="true"> <%=dsbaiviet.getNgayDang()%></i>
					<br />


					<p>
						<a href="News-Baiviet?mabv=<%=dsbaiviet.getMaBV()%>">more...<i
							class="fa fa-angle-double-right" aria-hidden="true"></i></a>
					</p>
				</div>
			</div>
			<%
				}
			%>
		</div>

		<div class="col-md-3">
			<div class="panel panel-info">
				<div class="panel-heading">
					<center>
						<h3 class="panel-title">
							<a href="#">New posts</a>
						</h3>
					</center>
				</div>

				<div class="panel-body"></div>
			</div>

		</div>
	</div>
	<jsp:include page="/template/footer"></jsp:include>
</body>
</html>