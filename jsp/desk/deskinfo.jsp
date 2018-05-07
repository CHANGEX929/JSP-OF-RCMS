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

	<!-- 桌位信息 -->
	<div class="panel panel-info" id="deskInfo">
		<div class="panel-heading">
			<p class="text-right">
				<a href="index.html"><span
					class="glyphicon glyphicon-remove-circle"></span></a>
			</p>
			<p class=" h2 text-center">桌位号：A1,状态：空</p>
		</div>
		<div class="panel-body" style="height: 400px;">
			<table class="table table-hover" id="finalCustormDishes">
				<thead>
					<tr class="info">
						<td class="h3">菜名</td>
						<td class="h3">单价</td>
						<td class="h3">数目</td>
						<td class="h3">备注</td>
						<td class="h3">小计</td>
						<td class="h3">操作</td>
					</tr>
				</thead>
				<tbody>
					<tr class="columnDesk">
						<td class="dishName">内容一</td>
						<td class="price">内容二</td>
						<td class="num">内容三</td>
						<td class="discrip">内容四</td>
						<td class="cost">内容五</td>
						<td><button class="btn btn-default updateBtn"
								data-toggle="modal" data-target="#updateModal">更改</button>
							<button class="btn btn-default" data-toggle="modal"
								data-target="#deleteDish">删除</button></td>
					</tr>
					<tr class="columnDesk">
						<td class="dishName">内容一</td>
						<td class="price">内容二</td>
						<td class="num">内容三</td>
						<td class="discrip">内容四</td>
						<td class="cost">内容五</td>
						<td><button class="btn btn-default updateBtn"
								data-toggle="modal" data-target="#updateModal">更改</button>
							<button class="btn btn-default" onclick="delDishes(this)">删除</button></td>
					</tr>
					<tr class="columnDesk">
						<td class="dishName">内容一</td>
						<td class="price">内容二</td>
						<td class="num">内容三</td>
						<td class="discrip">内容四</td>
						<td class="cost">内容五</td>
						<td><button class="btn btn-default updateBtn"
								data-toggle="modal" data-target="#updateModal">更改</button>
							<button class="btn btn-default" onclick="delDishes(this)">删除</button></td>
					</tr>
					<tr class="columnDesk">
						<td class="dishName">内容一</td>
						<td class="price">内容二</td>
						<td class="num">内容三</td>
						<td class="discrip">内容四</td>
						<td class="cost">内容五</td>
						<td><button class="btn btn-default updateBtn"
								data-toggle="modal" data-target="#updateModal">更改</button>
							<button class="btn btn-default" onclick="delDishes(this)">删除</button></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="panel-footer">
			<h3 id="total">总计：</h3>
			<ul class="pager">
				<li class="previous"><a href="index.html"
					class="btn btn-default"> 返回 </a></li>
				<li class="next"><a class="btn btn-default" id="diancai">
						点菜 </a> <a class="btn btn-default " data-toggle="modal"
					data-target="#payDiv"> 结账 </a></li>
			</ul>
		</div>
	</div>
	<!-- /桌位信息 -->

	<!-- 点菜 -->
	<div id="selectDishes" style="display: none;">
		<!-- 菜单 -->
		<div class="col-xs-5 panel panel-info" style="height:750px;">
			<div class="panel-body">
				<ul class="nav nav-tabs ">
					<li class="active"><a href="#all" data-toggle="tab">全部</a></li>
					<li><a href="#soup" data-toggle="tab">汤类</a></li>
					<li><a href="#fry" data-toggle="tab">炒菜</a></li>
					<li><a href="#drink" data-toggle="tab">酒水</a></li>
					<li><a href="#other" data-toggle="tab">其它</a></li>
				</ul>
				<div class="tab-content">
					<div class=" tab-pane fade active in" id="all">
						<h4>All</h4>
						<table class="table table-condensed">
							<tbody>
								<tr>
									<td><a href="#" style="text-decoration:none;"
										data-toggle="modal" data-target="#selectDish"> <img
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
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
							eserunt mollit anim id est laborum. Lorem ipsum dolor sit amet,
							consectetur adipisicing elit eserunt mollit anim id est laborum.
							Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt
							mollit anim id est laborum.</p>
					</div>
					<div class="tab-pane fade" id="soup">
						<h4>soup</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
							eserunt mollit anim id est laborum. Lorem ipsum dolor sit amet,
							consectetur adipisicing elit eserunt mollit anim id est laborum.
							Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt
							mollit anim id est laborum.</p>
					</div>
					<div class="tab-pane fade" id="drink">
						<h4>drink</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
							eserunt mollit anim id est laborum. Lorem ipsum dolor sit amet,
							consectetur adipisicing elit eserunt mollit anim id est laborum.
							Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt
							mollit anim id est laborum.</p>
					</div>
					<div class="tab-pane fade" id="other">
						<h4>other</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
							eserunt mollit anim id est laborum. Lorem ipsum dolor sit amet,
							consectetur adipisicing elit eserunt mollit anim id est laborum.
							Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt
							mollit anim id est laborum.</p>
					</div>
				</div>
			</div>
		</div>
		<!--/ 菜单 -->
		<!-- 桌位信息 -->
		<div class="col-xs-7">
			<div class="panel panel-info" style="height:750px;">
				<div class="panel-heading">
					<span class="h3 text-left">桌位号：A1</span>
				</div>
				<div class="panel-body" style="height:525px;">

					<table class="table table-hover" id="custormDishes"
						style="height:400px;">
						<thead>
							<tr class="info">
								<td class="h3">菜名</td>
								<td class="h3">单价</td>
								<td class="h3">数目</td>
								<td class="h3">备注</td>
								<td class="h3">小计</td>
								<td class="h3">操作</td>
							</tr>
						</thead>
					</table>
				</div>
				<div>
					<h3>总计：</h3>
					<ul class="pager">
						<li class="previous"><a href="javascript:;"
							class="btn btn-default"> 返回 </a></li>
						<li class="next"><a href="javascript:;"
							class="btn btn-default"> 提交 </a></li>
					</ul>
					<div></div>
				</div>
				<!-- /桌位信息 -->
			</div>
		</div>
	</div>
	<!--/ 点菜 -->


	<!-- 尾文件 -->
	<%@ include file="../command/foot.jsp"%>
	<!-- /尾文件 -->

	<!-- 弹框模块 -->

	<!-- 点菜弹框 -->
	<div class="modal fade" id="selectDish" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="	">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<p class="modal-title h1 text-center" id="myModalLabel">点菜</p>
				</div>
				<div class="modal-body col-xs-12">
					<form class="form-horizontal">
						<table class="table">
							<thead>
								<tr>
									<td class="h3 col-xs-2">菜名</td>
									<td class="h3 col-xs-2">单价</td>
									<td class="h3 col-xs-2">数目</td>
									<td class="h3 col-xs-2">备注</td>
									<td class="h3 col-xs-2">小计</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="col-xs-2">菜名</td>
									<td class="col-xs-2">单价</td>
									<td class="col-xs-2">
										<div class="form-group col-xs-8">
											<input class="form-control " id="" type="text"
												placeholder="num" />
										</div>
										<div class="col-xs-2"></div>
									</td>
									<td class="col-xs-2">
										<div class="form-group col-xs-8">
											<input class="form-control " id="" type="text"
												placeholder="备注" />
										</div>
										<div class="col-xs-2"></div>
									</td>
									<td class="col-xs-2">小计</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">确认</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /点菜弹框 -->

	<!-- 更改弹框 -->
	<div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="	">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<p class="modal-title h1 text-center" id="myModalLabel">更改</p>
				</div>
				<div class="modal-body col-xs-12">
					<form class="form-horizontal">
						<table class="table">
							<thead>
								<tr>
									<td class="h3 col-xs-2">菜名</td>
									<td class="h3 col-xs-2">单价</td>
									<td class="h3 col-xs-2">数目</td>
									<td class="h3 col-xs-2">备注</td>
									<td class="h3 col-xs-2">小计</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="col-xs-2">菜名</td>
									<td class="col-xs-2">单价</td>
									<td class="col-xs-2">
										<div class="form-group col-xs-8">
											<input class="form-control " id="" type="number"
												placeholder="num" />
										</div>
										<div class="col-xs-2"></div>
									</td>
									<td class="col-xs-2">
										<div class="form-group col-xs-8">
											<input class="form-control " id="" type="text"
												placeholder="备注" />
										</div>
										<div class="col-xs-2"></div>
									</td>
									<td class="col-xs-2">小计</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">确认</button>
				</div>
			</div>
		</div>
	</div>
	<!--/ 更改弹框 -->

	<!-- 结账弹框 -->
	<div class="modal fade" id="payDiv" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="	">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<p class="modal-title h1 text-center" id="myModalLabel">结账</p>
				</div>
				<div class="modal-body col-xs-12">
					<div class="col-xs-2"></div>
					<div class="panel  col-xs-8">
						<div class="panel-body">
							<form class="form-horizontal">
								<div class="form-group">
									<label for="" class="control-label">买单方式：</label> <label
										class="radio-inline"> <input type="radio"
										name="optionsRadiosinline" id="optionsRadios3" value="option1"
										checked> 微信
									</label> <label class="radio-inline"> <input type="radio"
										name="optionsRadiosinline" id="optionsRadios4" value="option2">
										支付宝
									</label> <label class="radio-inline"> <input type="radio"
										name="optionsRadiosinline" id="optionsRadios4" value="option2">
										刷卡
									</label> <label class="radio-inline"> <input type="radio"
										name="optionsRadiosinline" id="optionsRadios4" value="option2">
										现金
									</label> <label class="radio-inline"> <input type="radio"
										name="optionsRadiosinline" id="optionsRadios4" value="option2">
										挂账
									</label>
								</div>
								<div class="form-group">
									<label for="" class="control-label">是否會員：</label> <label
										class="radio-inline"> <input type="radio"
										name="optionsRadiosinline" id="optionsRadios3" value="option1"
										checked> 是
									</label> <label class="radio-inline"> <input type="radio"
										name="optionsRadiosinline" id="optionsRadios4" value="option2">
										否
									</label>
								</div>
								<div class="form-group has-success">
									<!-- <label for="" class="control-label">自定义折扣：</label> <input
													class="form-control " id="" type="text" disabled="disabled" /> -->
									<div class="input-group has-success">
										<span class="input-group-addon "> 自定义折扣 <input
											type="checkbox" aria-label="...">
										</span> <input type="text" class="form-control" aria-label="...">
									</div>
									<!-- /input-group -->
								</div>
								<div class="form-group has-success">
									<!-- <label for="" class="control-label">挂账人姓名：</label> <input
													class="form-control " id="" type="text" disabled="disabled" /> -->
									<div class="input-group has-success">
										<span class="input-group-addon "> 挂账 <input
											type="checkbox" aria-label="...">
										</span> <input type="text" class="form-control" aria-label="...">
									</div>
									<!-- /input-group -->
								</div>
							</form>
						</div>
						<h4>总计：</h4>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">确认</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /结账弹框 -->

	<!-- 删除弹框 -->
	<div class="modal fade" id="deleteDish" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-xs" role="	">
			<div class="modal-content">
				<div class="modal-body col-xs-12">
					<div class="text-center">
						<p class="h2">确认删除吗？</p>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">确认</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 删除弹框 -->

	<!--/ 弹框模块 -->




	<script type="text/javascript" src="jsp/assets/js/deskinfo.js"></script>
	<script src="jsp/assets/js/myjs.js"></script>
</body>
</html>