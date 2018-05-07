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

<title>酒水库存</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


</head>

<body>
	<!-- 头文件 -->
	<%@ include file="../command/head.jsp"%>
	<!-- /头文件 -->

	<!-- 标题 -->
	<div class="row">
		<div class="col-md-12">
			<h2>酒水库存</h2>
		</div>
	</div>
	<hr />
	<!-- /标题 -->

	<!-- 主体 -->
	<div class="col-lg-12">

		<!-- 导航 -->
		<ul class="nav nav-tabs ">
			<li class="active"><a href="#today" data-toggle="tab">进货信息</a></li>
			<li><a href="#xiaoshou" data-toggle="tab">销售信息</a></li>
			<li><a href="#shengyu" data-toggle="tab">剩余信息</a></li>
		</ul>
		<!-- /导航 -->

		<!-- 导航内容 -->
		<div class="tab-content">

			<!-- 进货信息 -->
			<div class=" tab-pane fade active in" id="today">
				<div class="col-lg-12 col-md-12">
					<br />
					<div class="table-responsive">
						<div class=" col-md-10 col-sm-8 col-xs-6  "></div>
						<div class="tsx">
							<a class="btn btn-default  " data-toggle="modal"
								data-target="#myModal"> 添加 </a> <a class="btn btn-default ">删除</a>
							<a class="btn btn-default ">修改</a>
						</div>
						<div class=" col-md-10 col-sm-8 col-xs-6  "></div>
						<div class="input-group">
							<input type="text" class="form-control" /> <span
								class="input-group-addon">查询</span>
						</div>
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>商品名称</th>
									<th>订单编号</th>
									<th>是否付款</th>
									<th>商品数量</th>
									<th>商品进价</th>
									<th>总价</th>
									<th>供应商</th>
									<th>供应商联系方式</th>
									<th>进货时间</th>
									<th>录入人姓名</th>
									<th>备注</th>
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
									<td>￥100</td>
									<td>￥100</td>
									<td>1</td>
									<td>2</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- /进货信息 -->

			<!-- 销售信息 -->
			<div class="tab-pane fade" id="xiaoshou">
				<br />
				<div class=" col-md-10 col-sm-8 col-xs-6  "></div>
				<div class="input-group">
					<input type="text" class="form-control" /> <span
						class="input-group-addon">查询</span>
				</div>
				<div class="col-lg-11 col-md-10 col-sm-8 col-xs-6  "></div>
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>商品名称</th>
							<th>销售数量</th>
							<th>销售价</th>
							<th>总计</th>
							<th>时间</th>
							<th>录入人姓名</th>
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
						</tr>
					</tbody>
				</table>
			</div>
			<!-- /销售信息 -->

			<!-- 剩余信息 -->
			<div class="tab-pane fade" id="shengyu">
				<br />
				<div class=" col-md-10 col-sm-8 col-xs-6  "></div>
				<div class="input-group">
					<input type="text" class="form-control" /> <span
						class="input-group-addon">查询</span>
				</div>
				<div class="col-lg-11 col-md-10 col-sm-8 col-xs-6  "></div>
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>商品名称</th>
							<th>剩余数量</th>
							<th>时间</th>
							<th>录入人姓名</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>2</td>
							<td>￥100</td>
							<td>￥100</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- /剩余信息 -->

		</div>
		<!-- /导航内容 -->

	</div>
	<!-- /主体 -->

	<!-- 添加进货信息弹框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<p class="modal-title h1 text-center " id="myModalLabel">添加进货信息</p>
				</div>
				<form action="">
					<div class="modal-body col-lg-12">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>商品名称</th>
									<th>生产日期</th>
									<th>保质期</th>
									<th>商品数量</th>
									<th>商品进价</th>
									<th>商品总价</th>
									<th>供应商</th>
									<th>供应商联系方式</th>
									<th>录入人姓名</th>
									<th>备注</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="text" class="form-control"
										name="productName" value="" placeholder="商品名称" /></td>
									<td><input type="date" class="form-control" min="1"
										name="dateInProduced" value="" />
									<td><input type="text" min="1" class="form-control"
										name="expirationDate" value="" placeholder="保质期（按月写）" />
									<td><input type="number" class="form-control" min="1"
										name="count" value="" placeholder="商品数量" /></td>
									<td><input type="text" class="form-control"
										name="PCSalePrice" value="" placeholder="商品进价" /></td>
									<td><input type="text" class="form-control" name="price"
										value="" placeholder="商品总价" /></td>
									<td><input type="text" class="form-control"
										name="supplierName" value="" placeholder="供应商名字" /></td>
									<td><input type="text" class="form-control" name="tel"
										value="" placeholder="供应商的联系方式" /></td>
									<td><input type="text" class="form-control" name="name"
										value="" placeholder="录入人姓名" /></td>
									<td><input type="text" class="form-control"
										placeholder="备注" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<input type="submit" name="submit" class="btn btn-primary"
							value="提交" />
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- /添加进货信息弹框 -->

	<!-- 尾文件 -->
	<%@ include file="../command/foot.jsp"%>
	<!-- 尾文件 -->
	<script src="jsp/assets/js/drink.js"></script>
</body>
</html>
