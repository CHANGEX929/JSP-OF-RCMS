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

<title>日常维护</title>

<link rel="stylesheet" type="text/css" href="jsp/assets/css/daily.css">

</head>

<body>
	<!-- 头文件 -->
	<%@ include file="../command/head.jsp"%>
	<!-- /头文件 -->

	<!-- 标题 -->
	<div class="row">
		<div class="col-lg-12">
			<h2>维护系统</h2>
		</div>
	</div>
	<hr />
	<!-- /标题 -->

	<!-- 主体 -->
	<div class="col-lg-12">

		<!-- 一级菜单 -->
		<div class="col-lg-2" id="dishMenu0">
			<div class="row text-center pad-top">
				<div class="col-lg-12">
					<div class="div-square weihu" id="dishMenu2">
						<a href="javascript:;"><i class="fa fa-clipboard fa-5x"></i>
							<h4>菜单维护</h4></a>
					</div>
				</div>
			</div>
			<div class="row text-center pad-top">
				<div class="col-lg-12">
					<div class="div-square weihu" id="dishMenu1">
						<a href="javascript:;"><i class="fa fa-circle-o-notch fa-5x"></i>
							<h4>桌位维护</h4></a>
					</div>
				</div>
			</div>
			<div class="row text-center pad-top">
				<div class="col-lg-12">
					<div class="div-square weihu" id="dishMenu3">
						<a href="javascript:;"><i class="fa fa-user fa-5x"></i>
							<h4>账号维护</h4></a>
					</div>
				</div>
			</div>
			<div class="row text-center pad-top">
				<div class="col-lg-12">
					<div class="div-square weihu" id="dishMenu4">
						<a href="javascript:;"><i class="fa fa-bell-o fa-5x"></i>
							<h4>供应商维护</h4></a>
					</div>
				</div>
			</div>
		</div>
		<!-- /一级菜单 -->

		<!-- 二级菜单 -->

		<!-- 菜单维护 -->
		<div class="col-lg-10" id="dishMenu20">
			<div class="row text-center pad-top">
				<div class="div-square" style="height: 600px">
					<div class="col-lg-3">
						<div class="row text-center pad-top" id="dishMenu21">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="javascript:;"><h4>添加菜品</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu22">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="javascript:;"><h4>删除菜品</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu23">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="javascript:;"><h4>更改菜品</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu24">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="javascript:;"><h4>查看菜品</h4></a>
								</div>
							</div>
						</div>
					</div>
					<div class="sidebar-collapse col-lg-8">
						<!-- 添加菜品 -->
						<div class="div-square" id="dishMenu211">
							<form action="">
								<div class="input-group">
									<span class="input-group-addon">编号：</span> <input type="text"
										class="form-control" placeholder="菜品编号" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">菜名：</span> <input type="text"
										class="form-control" placeholder="菜品名称" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">价格：</span> <input type="text"
										class="form-control" placeholder="菜品价格" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">种类：</span> <input type="text"
										class="form-control" placeholder="菜品种类" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">介绍：</span> <input type="text"
										class="form-control" placeholder="菜品介绍" />
								</div>
								<br>
								<div class="input-group col-lg-12">
									<div class=" col-lg-6">
										<a href="#" class="btn btn-success" id="addDish">确认添加</a>
									</div>
									<div class=" col-lg-6 ">
										<a href="#" class="btn btn-warning" id="cancel">取消添加</a>
									</div>
								</div>
								<br>
							</form>
						</div>
						<!-- 删除菜品 -->
						<br>
						<div class="div-square" id="dishMenu212" style="display:none">
							<div class="input-group">
								<input type="text" class="form-control col-lg-10"
									placeholder="请输入菜品编号或名称" /> <a href="#"
									class="input-group-addon" id="searchDish">查找菜品</a>
							</div>
							<div class="col-lg-12" style="display:none" id="searchDishResult">
								<div class="col-lg-12">
									<br>
									<h3>查询结果</h3>
									<table class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>菜品编号</th>
												<th>菜品名称</th>
												<th>菜品价格</th>
												<th>菜品类型</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>空</td>
												<td>空</td>
												<td>空</td>
												<td>空</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-lg-12">
									<br> <a href="#" class="btn btn-danger btn-lg btn-block"
										id="delDish">删除菜品</a>
								</div>
							</div>
						</div>
						<!-- 更改菜品 -->
						<br>
						<div class="div-square" id="dishMenu213" style="display:none">
							<div class="input-group">
								<input type="text" class="form-control col-lg-10"
									placeholder="请输入菜品编号或名称" /> <a href="#"
									class="input-group-addon" id="searchDish1">查找菜品</a>
							</div>
							<div class="col-lg-12" id="changeDish" style="display:none">
								<div class="col-lg-12">
									<br>
									<h3>查询结果</h3>
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>菜品编号</th>
												<th>菜品名称</th>
												<th>菜品价格</th>
												<th>菜品类型</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>空</td>
												<td>空</td>
												<td>空</td>
												<td>空</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 查看菜品 -->
						<br>
						<div class="" id="dishMenu214" style="display:none">
							<div class="col-lg-12">
								<ul class="nav nav-tabs ">
									<li class="active"><a href="#all" data-toggle="tab">全部</a></li>
									<li><a href="#soup" data-toggle="tab">汤类</a></li>
									<li><a href="#fry" data-toggle="tab">炒菜</a></li>
									<li><a href="#drink" data-toggle="tab">酒水</a></li>
									<li><a href="#other" data-toggle="tab">其它</a></li>
								</ul>
								<div class="tab-content">
									<div class=" tab-pane fade active in" id="all">
										<table class="table table-condensed" style="height: 200px">
											<tbody>
												<tr>
													<td><a href="#" style="text-decoration:none;"
														onclick="selectDishe(this)"> <img
															src="jsp/assets/img/hanbao.jpg" class="img-thumbnail">
													</a>
														<p class="h3">汉堡</p>
														<p class="h5">
															价格：￥<span>10</span>
														</p></td>
													<td><a href="#" style="text-decoration:none;"> <img
															src="jsp/assets/img/hanbao.jpg" class="img-thumbnail">
													</a>
														<p class="h3">汉堡</p>
														<p class="h5">价格：￥10</p></td>
													<td><a href="#" style="text-decoration:none;"> <img
															src="jsp/assets/img/hanbao.jpg" class="img-thumbnail">
													</a>
														<p class="h3">汉堡</p>
														<p class="h5">价格：￥10</p></td>
													<td><a href="#" style="text-decoration:none;"> <img
															src="jsp/assets/img/hanbao.jpg" class="img-thumbnail">
													</a>
														<p class="h3">汉堡</p>
														<p class="h5">价格：￥10</p></td>
												</tr>
												<tr>
													<td><a href="#" style="text-decoration:none;"> <img
															src="jsp/assets/img/hanbao.jpg" class="img-thumbnail">
													</a>
														<p class="h3">汉堡</p>
														<p class="h5">价格：￥10</p></td>
													<td><a href="#" style="text-decoration:none;"> <img
															src="jsp/assets/img/hanbao.jpg" class="img-thumbnail">
													</a>
														<p class="h3">汉堡</p>
														<p class="h5">价格：￥10</p></td>
													<td><a href="#" style="text-decoration:none;"> <img
															src="jsp/assets/img/hanbao.jpg" class="img-thumbnail">
													</a>
														<p class="h3">汉堡</p>
														<p class="h5">价格：￥10</p></td>
													<td><a href="#" style="text-decoration:none;"> <img
															src="jsp/assets/img/hanbao.jpg" class="img-thumbnail">
													</a>
														<p class="h3">汉堡</p>
														<p class="h5">价格：￥10</p></td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="2">
														<ul class="pager">
															<li class="previous"><a href="#"> 上一页 </a></li>
														</ul>
													</td>
													<td colspan="2">
														<ul class="pager">
															<li class="next"><a href="#"> 下一页 </a></li>
														</ul>
													</td>
												</tr>
											</tfoot>
										</table>
									</div>
									<div class="tab-pane fade" id="fry">
										<h4>fry</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit eserunt mollit anim id est laborum. Lorem ipsum dolor
											sit amet, consectetur adipisicing elit eserunt mollit anim id
											est laborum. Lorem ipsum dolor sit amet, consectetur
											adipisicing elit eserunt mollit anim id est laborum.</p>

									</div>
									<div class="tab-pane fade" id="soup">
										<h4>soup</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit eserunt mollit anim id est laborum. Lorem ipsum dolor
											sit amet, consectetur adipisicing elit eserunt mollit anim id
											est laborum. Lorem ipsum dolor sit amet, consectetur
											adipisicing elit eserunt mollit anim id est laborum.</p>

									</div>
									<div class="tab-pane fade" id="drink">
										<h4>drink</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit eserunt mollit anim id est laborum. Lorem ipsum dolor
											sit amet, consectetur adipisicing elit eserunt mollit anim id
											est laborum. Lorem ipsum dolor sit amet, consectetur
											adipisicing elit eserunt mollit anim id est laborum.</p>

									</div>
									<div class="tab-pane fade" id="other">
										<h4>other</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit eserunt mollit anim id est laborum. Lorem ipsum dolor
											sit amet, consectetur adipisicing elit eserunt mollit anim id
											est laborum. Lorem ipsum dolor sit amet, consectetur
											adipisicing elit eserunt mollit anim id est laborum.</p>

									</div>
								</div>
							</div>
						</div>
						<!-- /查看菜品 -->
					</div>
				</div>
			</div>
		</div>
		<!-- /菜单维护 -->

		<!-- 桌位维护 -->
		<div class="col-lg-10 " id="dishMenu10" style="display:none">
			<div class="row text-center pad-top">
				<div class="div-square" style="height: 600px">
					<div class="col-lg-3">
						<div class="row text-center pad-top" id="dishMenu11">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu" id="dishMenu2-1">
									<a href="javascript:;"><h4>添加桌位</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu12">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="javascript:;"><h4>删除桌位</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu13">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="javascript:;"><h4>更改桌位</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu14">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="javascript:;"><h4>查看桌位</h4></a>
								</div>
							</div>
						</div>
					</div>
					<div class="sidebar-collapse col-lg-8">
						<!-- 添加桌位 -->
						<div class="div-square" id="dishMenu111">
							<form action="">
								<div class="input-group">
									<span class="input-group-addon">编号：</span> <input type="text"
										class="form-control" placeholder="桌位编号" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">大小：</span> <input type="text"
										class="form-control" placeholder="桌位大小" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">状态：</span> <input type="text"
										class="form-control" placeholder="桌位状态" />
								</div>
								<br>
								<div class="input-group col-lg-12">
									<div class=" col-lg-6">
										<a href="#" class="btn btn-success" id="addTab">确认添加</a>
									</div>
									<div class=" col-lg-6 ">
										<a href="#" class="btn btn-warning" id="cancel">取消添加</a>
									</div>
								</div>
								<br>
							</form>
						</div>
						<!-- 删除桌位 -->
						<br>
						<div class="div-square" id="dishMenu112" style="display:none">
							<div class="input-group">
								<input type="text" class="form-control col-lg-10"
									placeholder="请输入桌位编号" /> <a href="#" class="input-group-addon"
									id="searchTab">查找桌位</a>
							</div>
							<div class="col-lg-12" style="display:none" id="searchTabResult">
								<div class="col-lg-12">
									<br>
									<h3>查询结果</h3>
									<table class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>桌位编号</th>
												<th>桌位大小</th>
												<th>桌位状态</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>空</td>
												<td>空</td>
												<td>空</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-lg-12">
									<br> <a href="#" class="btn btn-danger btn-lg btn-block"
										id="delTab">删除桌位</a>
								</div>
							</div>
						</div>
						<!-- 更改桌位 -->
						<br>
						<div class="div-square" id="dishMenu113" style="display:none">
							<div class="input-group">
								<input type="text" class="form-control col-lg-10"
									placeholder="请输入桌位编号" /> <a href="#" class="input-group-addon"
									id="searchTab1">查找桌位</a>
							</div>
							<div class="col-lg-12" id="changeTab" style="display:none">
								<div class="col-lg-12">
									<br>
									<h3>查询结果</h3>
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>桌位编号</th>
												<th>桌位大小</th>
												<th>桌位状态</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>空</td>
												<td>空</td>
												<td>空</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 查看桌位 -->
						<br>
						<div class="" id="dishMenu114" style="display:none">
							<div class="col-lg-12">
								<ul class="nav nav-tabs ">
									<h5>查看桌位</h5>
									<li class="active"><a href="#all" data-toggle="tab">全部</a></li>
									<li><a href="#soup" data-toggle="tab">汤类</a></li>
									<li><a href="#fry" data-toggle="tab">炒菜</a></li>
									<li><a href="#drink" data-toggle="tab">酒水</a></li>
									<li><a href="#other" data-toggle="tab">其它</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /桌位维护 -->

		<!-- 账号维护 -->
		<div class="col-lg-10 " id="dishMenu30" style="display:none">
			<div class="row text-center pad-top">
				<div class="div-square" style="height: 600px">
					<div class="col-lg-3">
						<div class="row text-center pad-top" id="dishMenu31">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu" id="dishMenu2-1">
									<a href="#"><h4>添加账号</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu32">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="#"><h4>删除账号</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu33">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="#"><h4>更改账号</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu34">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="#"><h4>查看账号</h4></a>
								</div>
							</div>
						</div>
					</div>
					<div class="sidebar-collapse col-lg-8">
						<!-- 添加账号 -->
						<div class="div-square" id="dishMenu311">
							<form action="">
								<div class="input-group">
									<span class="input-group-addon">账号：</span> <input type="text"
										class="form-control" placeholder="账号编号" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">权限：</span> <input type="text"
										class="form-control" placeholder="账号权限" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">备注：</span> <input type="text"
										class="form-control" placeholder="账号备注" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">电话：</span> <input type="text"
										class="form-control" placeholder="联系电话" />
								</div>
								<br>
								<div class="input-group col-lg-12">
									<div class=" col-lg-6">
										<a href="#" class="btn btn-success" id="addUser">确认添加</a>
									</div>
									<div class=" col-lg-6 ">
										<a href="#" class="btn btn-warning" id="cancel">取消添加</a>
									</div>
								</div>
								<br>
							</form>
						</div>
						<!-- 删除账号 -->
						<br>
						<div class="div-square" id="dishMenu312" style="display:none">
							<div class="input-group">
								<input type="text" class="form-control col-lg-10"
									placeholder="请输入账号" /> <a href="#" class="input-group-addon"
									id="searchUser">查找账号</a>
							</div>
							<div class="col-lg-12" style="display:none" id="searchUserResult">
								<div class="col-lg-12">
									<br>
									<h3>查询结果</h3>
									<table class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>账号编号</th>
												<th>账号权限</th>
												<th>账号备注</th>
												<th>联系电话</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>空</td>
												<td>空</td>
												<td>空</td>
												<td>空</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-lg-12">
									<br> <a href="#" class="btn btn-danger btn-lg btn-block"
										id="delUser">删除账号</a>
								</div>
							</div>
						</div>
						<!-- 更改账号 -->
						<br>
						<div class="div-square" id="dishMenu313" style="display:none">
							<div class="input-group">
								<input type="text" class="form-control col-lg-10"
									placeholder="请输入账号" /> <a href="#" class="input-group-addon"
									id="searchUser1">查找账号</a>
							</div>
							<div class="col-lg-12" style="display:none" id="changeUser">
								<div class="col-lg-12">
									<br>
									<h3>查询结果</h3>
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>账号编号</th>
												<th>账号权限</th>
												<th>账号备注</th>
												<th>联系电话</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>空</td>
												<td>空</td>
												<td>空</td>
												<td>空</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 查看账号 -->
						<br>
						<div class="" id="dishMenu314" style="display:none">
							<div class="col-lg-12">
								<ul class="nav nav-tabs ">
									<h5>查看账号</h5>
									<li class="active"><a href="#all" data-toggle="tab">全部</a></li>
									<li><a href="#soup" data-toggle="tab">汤类</a></li>
									<li><a href="#fry" data-toggle="tab">炒菜</a></li>
									<li><a href="#drink" data-toggle="tab">酒水</a></li>
									<li><a href="#other" data-toggle="tab">其它</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /账号维护 -->

		<!-- 供应商维护 -->
		<div class="col-lg-10 " id="dishMenu40" style="display:none">
			<div class="row text-center pad-top">
				<div class="div-square" style="height: 600px">
					<div class="col-lg-3">
						<div class="row text-center pad-top" id="dishMenu41">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu" id="dishMenu2-1">
									<a href="#"><h4>添加供应商</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu42">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="#"><h4>删除供应商</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu43">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="#"><h4>更改供应商</h4></a>
								</div>
							</div>
						</div>
						<div class="row text-center pad-top" id="dishMenu44">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="div-square weihu">
									<a href="#"><h4>查看供应商</h4></a>
								</div>
							</div>
						</div>
					</div>
					<div class="sidebar-collapse col-lg-8">
						<!-- 添加供应商 -->
						<div class="div-square" id="dishMenu411">
							<form action="">
								<div class="input-group">
									<span class="input-group-addon">编号：</span> <input type="text"
										class="form-control" placeholder="厂商编号" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">名称：</span> <input type="text"
										class="form-control" placeholder="厂商名称" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">类型：</span> <input type="text"
										class="form-control" placeholder="厂商类型" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">地址：</span> <input type="text"
										class="form-control" placeholder="厂商地址" />
								</div>
								<br>
								<div class="input-group">
									<span class="input-group-addon">电话：</span> <input type="text"
										class="form-control" placeholder="联系方式" />
								</div>
								<br>
								<div class="input-group col-lg-12">
									<div class=" col-lg-6">
										<a href="#" class="btn btn-success" id="addGongying">确认添加</a>
									</div>
									<div class=" col-lg-6 ">
										<a href="#" class="btn btn-warning" id="cancel">取消添加</a>
									</div>
								</div>
								<br>
							</form>
						</div>
						<br>
						<div class="div-square" id="dishMenu412" style="display:none">
							<div class="input-group">
								<input type="text" class="form-control col-lg-10"
									placeholder="请输入供应商编号或名称" /> <a href="#"
									class="input-group-addon" id="searchGongying">查找供应商</a>
							</div>
							<div class="col-lg-12" style="display:none"
								id="searchGongyingResult">
								<div class="col-lg-12">
									<br>
									<h3>查询结果</h3>
									<table class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>厂商编号</th>
												<th>厂商名称</th>
												<th>厂商类型</th>
												<th>厂商地址</th>
												<th>厂商电话</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>空</td>
												<td>空</td>
												<td>空</td>
												<td>空</td>
												<td>空</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-lg-12">
									<br> <a href="#" class="btn btn-danger btn-lg btn-block"
										id="delDish" id="delGongying">删除供应商</a>
								</div>
							</div>
						</div>
						<!-- 更改供应商 -->
						<br>
						<div class="div-square" id="dishMenu413" style="display:none">
							<div class="input-group">
								<input type="text" class="form-control col-lg-10"
									placeholder="请输入供应商编号或名称" /> <a href="#"
									class="input-group-addon" id="searchGongying1">查找供应商</a>
							</div>
							<div class="col-lg-12" style="display:none" id="changeGongying">
								<div class="col-lg-12">
									<br>
									<h3>查询结果</h3>
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>厂商编号</th>
												<th>厂商名称</th>
												<th>厂商类型</th>
												<th>厂商地址</th>
												<th>厂商电话</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>空</td>
												<td>空</td>
												<td>空</td>
												<td>空</td>
												<td>空</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 查看供应商 -->
						<br>
						<div class="" id="dishMenu414" style="display:none">
							<div class="col-lg-12">
								<ul class="nav nav-tabs ">
									<h5>查看供应商</h5>
									<li class="active"><a href="#all" data-toggle="tab">全部</a></li>
									<li><a href="#soup" data-toggle="tab">汤类</a></li>
									<li><a href="#fry" data-toggle="tab">炒菜</a></li>
									<li><a href="#drink" data-toggle="tab">酒水</a></li>
									<li><a href="#other" data-toggle="tab">其它</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /供应商维护 -->

		<!-- /二级菜单 -->

	</div>
	<!-- /主体 -->

	<!-- 尾文件 -->
	<%@ include file="../command/foot.jsp"%>
	<!-- 尾文件 -->
	<script type="text/javascript" src="jsp/assets/js/daily.js"></script>
</body>
</html>
