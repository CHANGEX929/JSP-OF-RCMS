<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<link href="jsp/assets/css/bootstrap.css" rel="stylesheet" />
<link href="jsp/assets/css/font-awesome.css" rel="stylesheet" />
<link href="jsp/assets/css/custom.css" rel="stylesheet" />

<style type="text/css">
.from-group {
	margin-top: 250px;
}

body {
	background: #214761;
}

.title {
	color:#6C6CA6;
	line-height:60px;
	height:60px;
	border-bottom: 1px solid gray;
	font-weight: bold;
}

#logbox {
	border: 2px solid #EEEEEE;
	border-radius: 10px;
	padding-bottom: 10px;
	background-color: rgb(233, 242, 250);
}
</style>

<title>登录</title>


</head>

<body>

	<div id="wrapper">
		<div class="from-group">
			<p class="col-lg-4 col-md-3"></p>
			<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 " id="logbox">
				<p class="h1 text-center title" >餐厅收银管理系统</p>
				<h2>登录：</h2>
				<div class="input-group">
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-user
			"></span></span> <input type="text"
						id="userName" class="form-control" placeholder="账号"
						required="required" />
				</div>
				<br />
				<div class="input-group">
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-certificate
			"></span></span> <input
						id="userPassWord" type="password" class="form-control"
						placeholder="密码" required="required" />
				</div>
				<br />
				<div class="row">
					<div class="col-lg-1"></div>
					<a
						href="${pageContext.request.contextPath }/jsp/desk/desklist.jsp?show=desk"
						id="login" class="btn btn-default col-lg-3">登录</a>
					<div class="col-lg-4"></div>
					<a href="javascript:;" class="btn btn-default reset col-lg-3">重置</a>
					<div class="col-lg-1"></div>
				</div>
			</div>
			<p class="col-lg-4 col-md-3"></p>
		</div>

	</div>
</body>
</html>
