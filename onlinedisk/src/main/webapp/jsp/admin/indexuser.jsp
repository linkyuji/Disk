<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.linkyuji.pojo.*"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<link
	href="<%=request.getContextPath()%>/bootstrap-3.3.5-dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/dashboard.css"
	rel="stylesheet">

<style type="text/css">
.left {
	float: left;
	height: 800px;
	width: 15%;
	background: #dfdfdf
}

.right {
	float: right;
	height: 800px;
	width: 85%;
}

.htmlurl {
	float: right;
	height: 100%;
	width: 100%;
}
</style>

</head>
<%-- <script src="<%=request.getContextPath()%>/jquery/jquery-1.8.0.min.js"></script>
<script src="<%=request.getContextPath()%>/js/manager.js"></script> --%>
<body>
	<%
		Users a = (Users) session.getAttribute("user");
	if (a == null||a.getUsertype()!=1){
		%>
		<meta http-equiv="refresh" content="0;url=<%=request.getContextPath()%>/login.jsp">
		
		<%return;
}
	%>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">管理员界面</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
			<li><a><%=a.getUserid() %></a></li>
				<li><a href="<%=request.getContextPath()%>/jsp/exit.jsp">注销</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="<%=request.getContextPath()%>/jsp/admin/indexuser.jsp">主页 <span class="sr-only">(current)</span></a></li>
					<li><a  href="loaduser.do">用户管理</a></li>
					<li><a href="loadfile.do">文件管理</a></li>
					<li><a href="loadblog.do">文本管理</a></li>
				</ul>

			</div>
			<div id="managerurl"
				class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h2 class="sub-header">主页</h2>
										${user.username}欢迎回来
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=request.getContextPath()%>/jquery/jquery-1.8.0.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>

</body>
</html>