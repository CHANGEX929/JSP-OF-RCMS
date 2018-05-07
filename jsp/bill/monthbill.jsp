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

<title>月账单</title>



</head>

<body>
	<!-- 头文件 -->
	<%@ include file="../command/head.jsp"%>
	<!-- /头文件 -->
	<!-- 标题 -->
	<div class="row">
		<div class="col-md-12">
			<h2>账单</h2>
		</div>
	</div>
	<hr />
	<!-- /标题 -->

	<!-- 主体内容 -->
	<div class="col-lg-12">
		<!-- 导航 -->
		<%@ include file="publicNav.jsp" %>
		<!-- 导航 -->	

		<!-- 导航内容 -->
		<div class="tab-content">
			
			<!-- 月账单 -->
			<div class="tab-pane active in" id="month">
				<br />
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>操作员</th>
							<th>本月开桌数</th>
							<th>现金</th>
							<th>移动支付</th>
							<th>刷卡</th>
							<th>挂账</th>
							<th>折扣</th>
							<th>实际收入</th>
							<th>消费合计</th>
							<th>日期</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>2</td>
							<td>￥100</td>
							<td>￥100</td>
							<td>￥100</td>
							<td>￥100</td>
							<td>￥100</td>
							<td>￥400</td>
							<td>￥600</td>
							<td>2018-02</td>
						</tr>
					</tbody>
				</table>
				<br />
				<div id="monthChart"
					style="width: 550px; height: 400px; margin: 0 auto;border:1px solid gray;"></div>
			</div>
			<!-- /月账单 -->
		</div>
		<!-- /导航内容 -->		
	</div>
	<!-- /主体内容 -->

	<!-- 尾文件 -->
	<%@ include file="../command/foot.jsp"%>
	<!-- 尾文件 -->
	<script type="text/javascript" src="jsp/calendar/WdatePicker.js"></script>
	<script type="text/javascript" src="jsp/assets/js/highChart.js"></script>
	<script type="text/javascript" src="jsp/assets/js/char.js"></script>
	<script src="jsp/assets/js/bill.js"></script>
</body>
</html>
