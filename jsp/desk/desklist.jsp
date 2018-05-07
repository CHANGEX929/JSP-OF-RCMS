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
<title>收银管理系统</title>
</head>

<body>
	<!-- 头文件 -->
	<%@ include file="../command/head.jsp"%>
	<!-- /头文件 -->

	<!--/ 首页显示收银员 -->
	<div class="row">
		<div class="col-lg-12">
			<h2>收银员：XXX</h2>
		</div>
	</div>
	<hr />
	<!-- /首页显示收银员 -->

	<!-- 桌位显示 -->
	<div class="row text-center pad-top">
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="${pageContext.request.contextPath}/jsp/desk/deskinfo.jsp?show=desk"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="${pageContext.request.contextPath}/jsp/desk/deskinfo.jsp"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="${pageContext.request.contextPath}/jsp/desk/deskinfo.jsp"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="${pageContext.request.contextPath}/jsp/desk/deskinfo.jsp"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="${pageContext.request.contextPath}/jsp/desk/deskinfo.jsp"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="${pageContext.request.contextPath}/jsp/desk/deskinfo.jsp"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="${pageContext.request.contextPath}/jsp/desk/deskinfo.jsp"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="${pageContext.request.contextPath}/jsp/desk/deskinfo.jsp"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="deskinfo.html"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="deskinfo.html"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="deskinfo.html"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
			<div class="div-square">
				<a class="btn" href="deskinfo.html"> <i
					class="fa fa-circle-o-notch fa-5x"></i>
					<h4>A1[空]</h4>
				</a>
			</div>
		</div>
		<!-- /desk -->
	</div>
	<!-- /桌位显示 -->

	<!-- 尾文件 -->
	<%@ include file="../command/foot.jsp"%>
	<!-- 头文件 -->
</body>
</html>
