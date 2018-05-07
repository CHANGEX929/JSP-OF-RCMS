<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<link href="jsp/assets/css/bootstrap.css" rel="stylesheet" />
<link href="jsp/assets/css/font-awesome.css" rel="stylesheet" />
<link href="jsp/assets/css/custom.css" rel="stylesheet" />
<!-- wrapper开始 -->
<div id="wrapper">
	<!-- 悬浮导航 -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="adjust-nav">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <img src="jsp/assets/img/logo.png" />
				</a>
			</div>
			<span class="logout-spn"> <a href="#" style="color:#fff;">收银管理系统</a>
			</span>
		</div>
	</div>
	<!-- 左侧导航 -->
	<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">			
				<li><a href="${pageContext.request.contextPath}/jsp/desk/desklist.jsp?show=desk"  <c:if test="${param.show=='desk' }">class="active-link"</c:if>><i class="fa fa-desktop "></i>桌位</a></li>
				<li><a href="${pageContext.request.contextPath}/jsp/bill/bill.jsp?show=bill&billType=today" <c:if test="${param.show=='bill' }">class="active-link"</c:if>><i
						class="fa fa-table "></i>账单</a></li>
				<li><a href="${pageContext.request.contextPath}/jsp/daily/daily.jsp?show=daily" <c:if test="${param.show=='daily' }">class="active-link"</c:if>><i class="fa fa-edit "></i>日常</a></li>
				<li><a href="${pageContext.request.contextPath}/jsp/drink/drink.jsp?show=drink"<c:if test="${param.show=='drink' }">class="active-link"</c:if>><i class="fa fa-qrcode "></i>酒水库存</a></li>
			</ul>
		</div>
	</nav>
	<!-- 内部容器开始-->
	<div id="page-wrapper">
		<div id="page-inner">