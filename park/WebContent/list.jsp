<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>智能泊车</title>
<!--Favicon -->
<link rel="icon"
	href="${ pageContext.request.contextPath }/assets/img/favicon.ico"
	type="image/x-icon" />

<!--Bootstrap.min css-->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/plugins/bootstrap/css/bootstrap.min.css">

<!--Icons css-->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/css/icons.css">

<!--Style css-->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/css/style.css">

<!--mCustomScrollbar css-->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/plugins/scroll-bar/jquery.mCustomScrollbar.css">

<!--Sidemenu css-->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/plugins/toggle-menu/sidemenu.css">

<!--Chartist css-->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/plugins/chartist/chartist.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/plugins/chartist/chartist-plugin-tooltip.css">

<!--Full calendar css-->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/plugins/fullcalendar/stylesheet1.css">

<!--morris css-->
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/plugins/morris/morris.css">
<!--DataTables css-->

<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/plugins/Datatable/css/dataTables.bootstrap4.css">

</head>

<body class="app ">
	<div id="app">
		<div id="app">
			<div class="main-wrapper">
				<nav class="navbar navbar-expand-lg main-navbar">
					<a class="header-brand" href="index.html"> <img
						src="${ pageContext.request.contextPath }/assets/img/brand/logo.png"
						class="header-brand-img" alt="Kharna-Admin  logo">
					</a>
					<form class="form-inline mr-auto">
						<ul class="navbar-nav mr-3">
							<li><a href="#" data-toggle="sidebar"
								class="nav-link nav-link-lg"><i
									class="ion ion-navicon-round"></i></a></li>
							<li><a href="#" data-toggle="search"
								class="nav-link nav-link-lg d-md-none navsearch"><i
									class="ion ion-search"></i></a></li>
						</ul>
						<div class="search-element">
							<input class="form-control" type="search" placeholder="Search"
								aria-label="Search">
							<button class="btn btn-primary" type="submit">
								<i class="ion ion-search"></i>
							</button>
						</div>
					</form>
					<ul class="navbar-nav navbar-right">
						<li class="dropdown dropdown-list-toggle"><a href="#"
							data-toggle="dropdown"
							class="nav-link notification-toggle nav-link-lg beep"><i
								class="ion-ios-email-outline"></i></a>
							<div class="dropdown-menu dropdown-list dropdown-menu-right">
								<div class="dropdown-header">
									Messages
									<div class="float-right">
										<a href="#">View All</a>
									</div>
								</div>
							</div></li>
						<li class="dropdown dropdown-list-toggle"><a href="#"
							class="nav-link nav-link-lg full-screen-link"> <i
								class="ion-arrow-expand" id="fullscreen-button"></i>
						</a></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="nav-link dropdown-toggle nav-link-lg"> <img
								src="${ pageContext.request.contextPath }/assets/img/avatar/avatar-1.jpeg"
								id="csimg1" alt="profile-user" class="rounded-circle w-32">
								<div class="d-sm-none d-lg-inline-block" id="csname1">未记录
								</div>
						</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a href="active.jsp" class="dropdown-item has-icon"> <i
									class="ion ion-android-person"></i> 个人信息
								</a> <a href="#" class="dropdown-item has-icon"> <i
									class="ion ion-gear-a"></i> 设置
								</a> <a href="${ pageContext.request.contextPath }/client/lockout"
									class="dropdown-item has-icon"> <i class="ion ion-log-in"></i>
									待机
								</a> <a href="${ pageContext.request.contextPath }/client/exit"
									class="dropdown-item has-icon"> <i class="ion-ios-redo"></i>
									退出
								</a>
							</div></li>
					</ul>
				</nav>

				<aside class="app-sidebar">
					<div class="app-sidebar__user">
						<div class="dropdown">
							<a class="nav-link pl-2 pr-2 leading-none d-flex"
								data-toggle="dropdown"> <img alt="image"
								src="${ pageContext.request.contextPath }/assets/img/avatar/avatar-1.jpeg"
								class=" avatar-md rounded-circle" id="csimg2"> <span
								class="ml-2 d-lg-block"> <span
									class="text-white app-sidebar__user-name mt-5" id="csname2">未记录</span><br>
									<span class="text-muted app-sidebar__user-name text-sm"
									id="cspost">未记录</span> <span
									class="text-muted app-sidebar__user-name text-sm"
									id="cscompany">未记录</span>
							</span>
							</a>
						</div>
					</div>
					<ul class="side-menu">
						<li class="slide"><a class="side-menu__item"
							data-toggle="slide" href="#"><i
								class="side-menu__icon fa fa-desktop"></i><span
								class="side-menu__label">页面切换</span><i
								class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a class="slide-item" href="index.html"><span>去欢迎页</span></a></li>
								<li><a class="slide-item" href="content.jsp"><span>二级主页</span></a></li>
							</ul></li>
						<li class="slide"><a class="side-menu__item"
							data-toggle="slide" href="#"><i
								class="side-menu__icon fa fa-map"></i><span
								class="side-menu__label">地图导航</span><i
								class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a
									href="${ pageContext.request.contextPath }/maps/start"
									class="slide-item">车位导航</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/maps/info"
									class="slide-item">信息查询</a></li>
							</ul></li>
						<li class="slide"><a class="side-menu__item"
							data-toggle="slide" href="#"><i
								class="side-menu__icon fa fa-table"></i><span
								class="side-menu__label">车位查询</span><i
								class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a
									href="${ pageContext.request.contextPath }/car/little"
									class="slide-item">微型车</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/car/middle"
									class="slide-item">中型车</a></li>
								<li><a href="${ pageContext.request.contextPath }/car/big"
									class="slide-item">大型车</a></li>
							</ul></li>
						<li class="slide"><a class="side-menu__item"
							data-toggle="slide" href="#"><i
								class="side-menu__icon fa fa-file-text"></i><span
								class="side-menu__label">订单查询</span><i
								class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a
									href="${ pageContext.request.contextPath }/nopay"
									class="slide-item">待支付订单</a></li>
								<li><a href="${ pageContext.request.contextPath }/pay"
									class="slide-item">已支付订单</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/other"
									class="slide-item"> 更多优惠</a></li>
							</ul></li>
						<li class="slide"><a class="side-menu__item"
							data-toggle="slide" href="#"><i
								class="side-menu__icon fa fa-bar-chart"></i><span
								class="side-menu__label">泊车分析</span><i
								class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a
									href="${ pageContext.request.contextPath }/chartjs.html"
									class="slide-item">停车位置分布</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/flotcharts.html"
									class="slide-item">喜爱位置分布</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/barcharts.html"
									class="slide-item">周时长分布</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/echart.html"
									class="slide-item">年时长分布</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/chartist.html"
									class="slide-item">智能泊车分析</a></li>
							</ul></li>


					</ul>
				</aside>

				<div class="app-content">
					<section class="section">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${ pageContext.request.contextPath }/content.jsp">home</a></li>
							<li class="breadcrumb-item active" aria-current="page">停车</li>
						</ol>
						<div class="row">
							<div class="col-sm-12 col-md-6">
								<div class="dataTables_length" id="example_length">
									<label>Show <select name="example_length"
										aria-controls="example"
										class="custom-select"
										id="TbpageSize">
											<option value="5">5</option>
											<option value="10">10</option>
											<option value="25">25</option>
											<option value="50">50</option>
									</select>
									</label> 	
								</div>
							</div>
							<div class="col-sm-12 col-md-4">
								<div id="example_filter" class="dataTables_length">
								<select id="issuetype" class="custom-select" style="width:70px;">
										<option value="all">全部</option>
										<option value="yes">空闲</option>
										<option value="no">非空闲</option>
									</select>
									<select id="liketype"  class="custom-select" style="width:70px;">
										<option value="price">金额</option>
										<option value="predict">距离</option>
										<option value="id">编号</option>
									</select><label><input type="search"
										class="form-control form-control-sm" aria-controls="example"
										id="likesearch">
									</label> 
									<a class="btn btn-lg m-b-5 m-t-5" id="likebtn">搜索</a>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h4>停车位列表</h4>
										总页数 :<span id="totalPage">3</span>&nbsp;&nbsp;&nbsp;&nbsp;总条数
										:<span id="totalCount">30</span>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table id="example"
												class="table table-striped table-bordered border-t0 text-nowrap w-100">
												<thead>
													<tr>
														<th class="wd-15p sorting_asc" tabindex="0"
															aria-controls="example">车位编号</th>
														<th class="wd-10p">是否空闲</th>
														<th class="wd-20p">距离</th>
														<th class="wd-35p">可下单时间</th>
														<th class="wd-10p">价格(min)</th>
														<th class="wd-35p">预约</th>
														<th>成功率</th>
													</tr>
												</thead>
												<tbody id="contentStall">
												</tbody>
											</table>
											<nav aria-label="Page navigation example">
												<ul class="pagination mb-0" id="btnStall">


												</ul>
											</nav>
										</div>
									</div>
								</div>
							</div>
						</div>

					</section>
				</div>

				<footer class="main-footer">
					<div class="text-center">
						<p class="margin-b-0">
							<a class="fweight-700" href="">[公司名]</a> 科技有限公司 [省份简写]ICP[备案号] <a
								href="#" target="_blank" title="智能泊车">智能泊车</a> <a href="#"
								title="加入我们" target="_blank">加入我们</a>
						</p>
					</div>
				</footer>

			</div>
		</div>
	</div>
	<!--Jquery.min js-->
	<script
		src="${ pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$.get("client/writeInfo", {}, function(data) {
				if (data.cs != null) {
					$('#csimg1').attr("src", data.cs.img);
					$('#csimg2').attr("src", data.cs.img);
					$('#csname1').html(data.cs.name);
					$('#csname2').html(data.cs.sign);
					$('#cspost').html(data.cs.post);
					$('#cscompany').html(data.cs.company);
				}
			});
			load(1,"sall");
			$('#likebtn').click(function(){
				var issue=$('#issuetype').val();
				var searval = $('#likesearch').val();
				var likeval=$('#liketype').val();
				if(issue=="all"&&searval==""){
				load(1,"sall");
				}else if(issue=="yes"&&searval==""){
					load(1,"yes");
				}else if(issue=="no"&&searval==""){
					load(1,"no");
				}else{
				load(1,issue+"&"+searval+"&"+likeval);
				}
			});
			
		});
		function load(currentPage,tes) {
			var search = location.search;
			var cid = search.split("=")[1];
			var pageSize = $('#TbpageSize').val();
			$
					.get(
							"stall/pageQuery",
							{
								cid : cid,
								currentPage : currentPage,
								pageSize : pageSize,
								test:tes
							},
							function(pb) {
								//解析pagebean数据，展示到页面上
								//1.分页工具条数据展示
								//1.1 展示总页码和总记录数
								$("#totalPage").html(pb.totalPage);
								$("#totalCount").html(pb.totalCount);
								var lis = "";
								var fristPage = '<li class="page-item" onclick="javascipt:load('
										+ '1,\''+tes+'\');">'
										+ '<a class="page-link"  aria-label="Previous">'
										+ '<span aria-hidden="true">&laquo;</span><span class="sr-only">Prev</span></a></li>';
								//计算上一页的页码
								var beforeNum = pb.currentPage - 1;
								if (beforeNum <= 0) {
									beforeNum = 1;
								}
								var beforePage = '<li class="page-item" onclick="javascipt:load('
										+ beforeNum
										+ ',\''+tes+'\');");"><a class="page-link" href="#">上一页</a></li>';
								lis += fristPage;
								lis += beforePage;
								/*
								    1.一共展示10个页码，能够达到前5后4的效果
								    2.如果前边不够5个，后边补齐10个
								    3.如果后边不足4个，前边补齐10个
								 */
								var begin; // 开始位置
								var end; //  结束位置
								//1.要显示10个页码
								if (pb.totalPage < 10) {
									//总页码不够10页
									begin = 1;
									end = pb.totalPage;
								} else {
									//总页码超过10页
									begin = pb.currentPage - 5;
									end = pb.currentPage + 4;
									//2.如果前边不够5个，后边补齐10个
									if (begin < 1) {
										begin = 1;
										end = begin + 9;
									}
									//3.如果后边不足4个，前边补齐10个
									if (end > pb.totalPage) {
										end = pb.totalPage;
										begin = end - 9;
									}
								}
								for (var i = begin; i <= end; i++) {
									var li;
									if (pb.currentPage == i) {
										//在这里加前页面的特效
										li = '<li class="page-item" onclick="load('
												+ i
												+ ',\''+tes+'\');"><a class="page-link" >'
												+ i + '</a></li>';
									} else {
										li = '<li class="page-item" onclick="load('
												+ i
												+ ',\''+tes+'\');"><a class="page-link">'
												+ i + '</a></li>';
									}
									lis += li;
								}
								var lastPage = '<li class="page-item" onclick="javascipt:load('
										+ pb.totalPage
										+ ',\''+tes+'\');"><a class="page-link" href="#" aria-label="Next">'
										+ '<span aria-hidden="true">&raquo;</span><span class="sr-only">Nex</span></a></li>';
								var nextNum = pb.currentPage + 1;
								if (nextNum > pb.totalPage) {
									nextNum = pb.totalPage;
								}
								var nextPage = '<li class="page-item" onclick="javascipt:load('
										+ nextNum
										+ ',\''+tes+'\');"><a class="page-link" href="#">下一页</a></li>';
								lis += nextPage;
								lis += lastPage;
								//将lis内容设置到 ul
								$("#btnStall").html(lis);
								//2.列表数据展示
								var route_lis = "";
								if(pb.list!=null){
								for (var i = 0; i < pb.list.length; i++) {
									var ran = Math.floor(Math.random() * 11) * 10;
									var route = pb.list[i];
									var li = '<tr><td>'
											+ route.id
											+ '</td><td>'
											+ route.isleisure
											+ '</td>'
											+ '<td>'
											+ route.predict
											+ 'm</td><td>'
											+ route.leisuretime
											+ '</td><td>$'
											+ route.price
											+ '</td>'
											+ '<td><a href="toindent.jsp?id='
											+ route.id
											+ '">下单</a>&nbsp;&nbsp;<a href="toindent.jsp?id='
											+ route.id
											+ '">预约</a>&nbsp;&nbsp;'
											+ '<a href="stalldetail.jsp?id='
											+ route.id
											+ '">详细信息</a></td><td class="align-middle">'
											+ '<div class="progress h-4" data-toggle="tooltip" title="'
											+ ran
											+ '%">'
											+ '<div class="progress-bar bg-success w-'+ran+'" ></div></div></td></tr>';
									route_lis += li;
								}
								$("#contentStall").html(route_lis);
								}
								//定位到页面顶部
								//window.scrollTo(0, 0);
							});
		}
	</script>

	<!--popper js-->
	<script src="${ pageContext.request.contextPath }/assets/js/popper.js"></script>

	<!--Tooltip js-->
	<script src="${ pageContext.request.contextPath }/assets/js/tooltip.js"></script>

	<!--Bootstrap.min js-->
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!--Jquery.nicescroll.min js-->
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/nicescroll/jquery.nicescroll.min.js"></script>

	<!--Scroll-up-bar.min js-->
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/scroll-up-bar/dist/scroll-up-bar.min.js"></script>

	<!--Sidemenu js-->
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/toggle-menu/sidemenu.js"></script>

	<!--mCustomScrollbar js-->
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>

	<!-- ECharts -->
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/echarts/dist/echarts.js"></script>

	<!--Min Calendar -->
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/fullcalendar/calendar.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/fullcalendar/custom_calendar.js"></script>

	<!--Morris js-->
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/morris/morris.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/morris/raphael.min.js"></script>
	<!--DataTables js-->
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/Datatable/js/jquery.dataTables.js"></script>
	<script
		src="${ pageContext.request.contextPath }/assets/plugins/Datatable/js/dataTables.bootstrap4.js"></script>
	<!--Scripts js-->
	<script src="${ pageContext.request.contextPath }/assets/js/scripts.js"></script>
</body>
</html>
