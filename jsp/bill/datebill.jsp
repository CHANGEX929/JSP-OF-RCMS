<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>日账单</title>



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
		<%@ include file="publicNav.jsp"%>
		<!-- 导航 -->

		<!-- 导航内容 -->
		<div class="tab-content">
			<!-- 日账单 -->
			<div class="tab-pane active in" id="date">
				<div>
					<br />
					<div class="table-responsive" id="allDateBill">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>操作员</th>
									<th>当日开桌数</th>
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
									<td>2018-02-26</td>
								</tr>
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
									<td>2018-02-26</td>
								</tr>
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
									<td>2018-02-26</td>
								</tr>
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
									<td>2018-02-26</td>
								</tr>
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
									<td>2018-02-26</td>
								</tr>
							</tbody>
						</table>
						<div class="row">
							<div class="col-lg-5"></div>
							<div class="col--2 ">
								<ul class="pager">
									<li class="previous"><a href="#"> 上一页 </a></li>
									<li>1/20</li>
									<li class="next"><a href="#"> 下一页 </a></li>
								</ul>
							</div>
							<div class="col--5 "></div>
						</div>
						<div id="dateChart"
							style="width: 550px; height: 400px; margin: 0 auto;border:1px solid gray;"></div>
					</div>
				</div>
				<!-- row -->
				<div id="dateDeskBill" style="display: none;">
					<div class="row text-center pad-top">
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>

						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
							<div class="div-square">
								<a class="btn" data-toggle="modal"
									data-target="#finalCustormDishes"> <i
									class="fa fa-circle-o-notch fa-5x"></i> <!-- <a class="btn" href="#"> <i
								class="fa fa-circle-o-notch fa-5x"></i> -->
									<h4>A1</h4>
								</a>
							</div>
						</div>
					</div>
					<!-- /row -->
					<div>
						<br />
						<div class="table-responsive">
							<table class="table table-striped table-bordered ">
								<thead>
									<tr>
										<th>操作员</th>
										<th>当日开桌数</th>
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
										<td>2018-02-26</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!--/ row -->
			</div>
			<!-- /日账单 -->
		</div>
		<!-- /导航内容 -->

		<!-- 桌位消费详情弹框 -->
		<div class="modal fade" id="finalCustormDishes" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close " data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<p class="modal-title h1 text-center" id="myModalLabel">桌位信息</p>
					</div>
					<div class="modal-body col-lg-12">
						<table class="table table-hover table-striped ">
							<thead>
								<tr class="info" style="height:40px;">
									<td class="h3">菜名</td>
									<td class="h3">单价</td>
									<td class="h3">数目</td>
									<td class="h3">备注</td>
									<td class="h3">小计</td>
									<td class="h3">操作</td>
								</tr>
							</thead>
							<tbody>
								<tr style="height:40px;">
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr style="height:40px;">
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr style="height:40px;">
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr style="height:40px;">
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr style="height:40px;">
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
						<h3 id="total">总计：</h3>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<a type="button" class="btn btn-danger" href="#">更改</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /桌位消费详情弹框 -->
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
