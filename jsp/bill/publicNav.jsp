<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 导航 -->
<ul class="nav nav-tabs ">
	<li <c:if test="${param.billType=='today'}">class="active"</c:if>><a
		href="${pageContext.request.contextPath }/jsp/bill/bill.jsp?billType=today&show=bill" >今日</a></li>
	<li role="presentation"
		class="dropdown <c:if test="${param.billType!='today'}">active</c:if>"><a
		class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
		aria-haspopup="true" aria-expanded="false"> 历史<span class="caret"></span>
	</a>
		<ul class="dropdown-menu">
			<li class="<c:if test="${param.billType=='year'}">active</c:if>"><a href="${pageContext.request.contextPath }/jsp/bill/yearbill.jsp?billType=year&show=bill" >年</a></li>
			<li class="<c:if test="${param.billType=='month'}">active</c:if>"><a href="${pageContext.request.contextPath }/jsp/bill/monthbill.jsp?billType=month&show=bill" >月</a></li>
			<li class="<c:if test="${param.billType=='date'}">active</c:if>"><a href="${pageContext.request.contextPath }/jsp/bill/datebill.jsp?billType=date&show=bill" >日</a></li>
		</ul></li>
	<li style="height:30px;">
		<form class="navbar-form " style="margin-top:0px;">
			<div class="form-group">
				<div class="input-group">
					<input id="Wdate1" type="text" class="form-control"
						onclick="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd',maxDate:'%y-%M-{%d-1}'})" />
					<span class="input-group-addon">开始时间</span>
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<input id="Wdate1" type="text" class="form-control"
						onclick="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'Wdate1\')||\'%y-%M-%d\'}',maxDate:'%y-%M-{%d-1}'})" />
					<span class="input-group-addon">结束时间</span>
				</div>
			</div>
			<button type="submit" class="btn btn-default">Search</button>
		</form>
	</li>
</ul>
<!-- /导航 -->