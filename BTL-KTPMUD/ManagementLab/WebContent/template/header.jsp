<%@ page
	import="java.sql.SQLException, java.util.ArrayList, connect.*, model.* "%>

<style>
a {
	font-family: Helvetica;
	line-height: 2em;
}

a:hover {
	color: #47D708;
	text-decoration: none;
	outline: none;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}
</style>


<div class="container">
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="row">
			<div class="col-md-10">

				<%
					if (session.getAttribute("thanhvien") == null) {
				%>
				<a href="/ManagementLab/ManagementLogin-login"><i
					class="fa fa-sign-in fa-1x" aria-hidden="true"> Login</i></a>
				<%
					} else if (session.getAttribute("thanhvien") != null) {
				%>

				<a href="/ManagementLab/AccountManager-AccountManager"><i
					class="fa fa-user" aria-hidden="true"><%=((ThanhVien) session.getAttribute("thanhvien")).getHoTen()%>
						- Profile </i> </a> <a href="/ManagementLab/ManagementLogin-logout"><i
					class="fa fa-sign-out" aria-hidden="true"> Logout</i></a>

				<%
					}
				%>

			</div>
			<div class="col-md-2">
				<a href="https://www.facebook.com/futureinternetlab/" target="blank"><i
					class="fa fa-facebook-square fa-2x" aria-hidden="true"></i> </a> <a
					href="https://twitter.com/sondoxuan" target="blank"><i
					class="fa fa-twitter-square fa-2x" aria-hidden="true"></i> </a> <a
					href="https://futureinternet.slack.com/" target="blank"><i
					class="fa fa-slack fa-2x" aria-hidden="true"></i> </a> <a
					href="https://trello.com/fil_sdn_nfv" target="blank"><i
					class="fa fa-trello fa-2x" aria-hidden="true"></i> </a>

			</div>
		</div>


		<div class="navbar-header">
			<a class="navbar-brand" href="/ManagementLab/Home"><font
				size="6px">FI-LAB</font></a>
		</div>

		<div class="collapse navbar-collapse navbar-right">

			<ul class="nav navbar-nav">
				<li><a href="/ManagementLab/Home">Home</a></li>
				<li><a href="/ManagementLab/News">News</a></li>

				<li class="dropdown"><a href="/ManagementLab/Research"
					class="dropdown-toggle" data-toggle="dropdown"> Research <b
						class="caret"></b>
				</a>

					<ul class="dropdown-menu">
						<li><a href="/ManagementLab/Research-5G">5G</a></li>
						<li><a href="/ManagementLab/Research-Internet-of-Things">IoT</a></li>
						<li><a
							href="/ManagementLab/Research-Network-Function-Virtualization">NFV</a></li>
						<li><a href="/ManagementLab/Research-Quality-of-Expreriences">QoS</a></li>
						<li><a href="/ManagementLab/Research-Security">SE</a></li>

					</ul></li>
				<li><a href="/ManagementLab/Projects-Projects">Projects</a></li>

				<li class="dropdown"><a href="" class="dropdown-toggle"
					data-toggle="dropdown"> Members <b class="caret"></b>
				</a>

					<ul class="dropdown-menu">
						<li><a href="/ManagementLab/Members-Researchers">Researchers</a></li>
						<li><a href="/ManagementLab/Members-Current-Students">Current
								Students</a></li>
						<li><a href="/ManagementLab/Members-Old-Students">Old
								Students</a></li>
					</ul></li>

			</ul>
		</div>
	</nav>
</div>
<!--container -->
