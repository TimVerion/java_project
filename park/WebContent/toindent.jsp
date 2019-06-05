<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>智能泊车</title>
    <!--Favicon -->
    <link rel="icon" href="${ pageContext.request.contextPath }/assets/img/favicon.ico" type="image/x-icon"/>

    <!--Bootstrap.min css-->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/assets/plugins/bootstrap/css/bootstrap.min.css">

    <!--Icons css-->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/assets/css/icons.css">

    <!--Style css-->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/assets/css/style.css">

    <!--mCustomScrollbar css-->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/assets/plugins/scroll-bar/jquery.mCustomScrollbar.css">

    <!--Sidemenu css-->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/assets/plugins/toggle-menu/sidemenu.css">

    <!--Chartist css-->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/assets/plugins/chartist/chartist.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/assets/plugins/chartist/chartist-plugin-tooltip.css">

    <!--Full calendar css-->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/assets/plugins/fullcalendar/stylesheet1.css">

    <!--morris css-->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/assets/plugins/morris/morris.css">


</head>

<body class="app ">
<div id="app">
	<div id="app">
			<div class="main-wrapper" >
				<nav class="navbar navbar-expand-lg main-navbar">
					<a class="header-brand" href="index.html">
						<img src="assets/img/brand/logo.png" class="header-brand-img" alt="Kharna-Admin  logo">
					</a>
					<form class="form-inline mr-auto">
						<ul class="navbar-nav mr-3">
							<li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="ion ion-navicon-round"></i></a></li>
							<li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-md-none navsearch"><i class="ion ion-search"></i></a></li>
						</ul>
						<div class="search-element">
							<input class="form-control" type="search" placeholder="Search" aria-label="Search">
							<button class="btn btn-primary" type="submit"><i class="ion ion-search"></i></button>
						</div>
					</form>
					<ul class="navbar-nav navbar-right">
						<li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link notification-toggle nav-link-lg beep"><i class="ion-ios-email-outline"></i></a>
							<div class="dropdown-menu dropdown-list dropdown-menu-right">
								<div class="dropdown-header">Messages
									<div class="float-right">
										<a href="#">View All</a>
									</div>
								</div>
							</div>
						</li>
						<li class="dropdown dropdown-list-toggle">
							<a href="#" class="nav-link nav-link-lg full-screen-link">
								<i class="ion-arrow-expand"  id="fullscreen-button"></i>
							</a>
						</li>
						   <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg">
                    <img src="${ pageContext.request.contextPath }/assets/img/avatar/avatar-1.jpeg" id="csimg1" alt="profile-user" class="rounded-circle w-32">
                   <div class="d-sm-none d-lg-inline-block" id="csname1">
                    		未记录
                    </div>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a href="active.jsp" class="dropdown-item has-icon">
                        <i class="ion ion-android-person"></i> 个人信息
                    </a>

                    <a href="#" class="dropdown-item has-icon">
                        <i class="ion ion-gear-a"></i> 设置
                    </a>
                    <a href="${ pageContext.request.contextPath }/client/lockout" class="dropdown-item has-icon">
                        <i class="ion ion-log-in"></i> 待机
                    </a>
                    <a href="${ pageContext.request.contextPath }/client/exit" class="dropdown-item has-icon">
                        <i class="ion-ios-redo"></i> 退出
                    </a>
                </div>
            </li>
					</ul>
				</nav>

				<aside class="app-sidebar">
					<div class="app-sidebar__user">
					    <div class="dropdown">
							<a class="nav-link pl-2 pr-2 leading-none d-flex" data-toggle="dropdown">
								<img alt="image" src="${ pageContext.request.contextPath }/assets/img/avatar/avatar-1.jpeg" class=" avatar-md rounded-circle" id="csimg2">
								<span class="ml-2 d-lg-block">
									<span class="text-white app-sidebar__user-name mt-5" id="csname2">未记录</span><br>
									<span class="text-muted app-sidebar__user-name text-sm" id="cspost">未记录</span>
									<span class="text-muted app-sidebar__user-name text-sm" id="cscompany">未记录</span>
								</span>
							</a>
						</div>
					</div>
					<ul class="side-menu">
						<li class="slide">
							<a class="side-menu__item"  data-toggle="slide" href="#"><i class="side-menu__icon fa fa-desktop"></i><span class="side-menu__label">页面切换</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a class="slide-item"  href="index.html"><span>去欢迎页</span></a></li>
								<li><a class="slide-item" href="content.jsp"><span>二级主页</span></a></li>
							</ul>
						</li>
							<li class="slide">
							<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-map"></i><span class="side-menu__label">地图导航</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="${ pageContext.request.contextPath }/maps/start" class="slide-item">车位导航</a></li>
								<li><a href="${ pageContext.request.contextPath }/maps/info" class="slide-item">信息查询</a></li>
							</ul>
						</li>
						<li class="slide">
							<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-table"></i><span class="side-menu__label">车位查询</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="${ pageContext.request.contextPath }/car/little" class="slide-item">微型车</a></li>
								<li><a href="${ pageContext.request.contextPath }/car/middle" class="slide-item">中型车</a></li>
								<li><a href="${ pageContext.request.contextPath }/car/big" class="slide-item">大型车</a></li>
							</ul>
						</li>
						<li class="slide">
							<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-file-text"></i><span class="side-menu__label">订单查询</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="${ pageContext.request.contextPath }/nopay" class="slide-item">待支付订单</a></li>
								<li><a href="${ pageContext.request.contextPath }/pay" class="slide-item">已支付订单</a></li>
								<li><a href="${ pageContext.request.contextPath }/other" class="slide-item"> 更多优惠</a></li>
							</ul>
						</li>
						<li class="slide">
							<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-bar-chart"></i><span class="side-menu__label">泊车分析</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="${ pageContext.request.contextPath }/chartjs.html" class="slide-item">停车位置分布</a></li>
								<li><a href="${ pageContext.request.contextPath }/flotcharts.html" class="slide-item">喜爱位置分布</a></li>
								<li><a href="${ pageContext.request.contextPath }/barcharts.html" class="slide-item">周时长分布</a></li>
								<li><a href="${ pageContext.request.contextPath }/echart.html" class="slide-item">年时长分布</a></li>
								<li><a href="${ pageContext.request.contextPath }/chartist.html" class="slide-item">智能泊车分析</a></li>
							</ul>
						</li>
					

					</ul>
				</aside>

				<div class="app-content">
					<section class="section">
                    	<ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="content.jsp">home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">下单</li>
                        </ol>
						
						<div class="section-body ">
							<div class="row">
								<div class="col-lg-4">
								<div style="width:0px;height:0px;">
								<input type="date"  id="startdate0" ><input type="time"  id="starttime0">
								</div>
									<div class="card pt-inner">
										<div class="card-body ">
											<div class="pti-header bg-primary">
												<h2 id="basicbt">￥25 <small>/ min</small></h2>
												<div class="ptih-title">Basic</div>
											</div>

											<div class="pti-body border">
												<div class="ptib-item">
													<b class="isleisure"></b>
												</div>
												<div class="ptib-item">
													开始时间<input type="date" class="startdate" id="startdate1"><input type="time" class="starttime" id="starttime1">
												</div>
												<div class="ptib-item">
													车号<select id="cars1" class="cars">
													</select>
												</div>
												<div class="ptib-item">
												结束时间<input type="date" class="enddate" id="enddate1"><input type="time" name="endtime" id="endtime1">
												</div>
											</div>

											<div class="pti-footer border">
												<span class="btn btn-primary" id="basicbtn">下单</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="card pt-inner">
										<div class="card-body ">
											<div class="pti-header bg-success">
												<h2 id="minmbt">￥50 <small>/ min</small></h2>
												<div class="ptih-title">Premium</div>
											</div>

											<div class="pti-body border">
												<div class="ptib-item">
													<b class="isleisure"></b>
												</div>
												<div class="ptib-item">
													开始时间<input type="date" class="startdate" id="startdate2"><input type="time" class="starttime" id="starttime2">
												</div>
												<div class="ptib-item">
													车号
													<select id="cars2" class="cars">
													</select>
												</div>
												<div class="ptib-item">
													结束时间<input type="date" class="enddate" id="enddate2"><input type="time" name="endtime" id="endtime2">
												</div>
											</div>

											<div class="pti-footer border">
												<span class="btn btn-success" id="fkbtn">预约</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="card pt-inner">
										<div class="card-body">
											<div class="pti-header bg-cyan">
												<h2 id="businessbt">￥99 <small>/ min</small></h2>
												<div class="ptih-title">Business</div>
											</div>

											<div class="pti-body border">
												<div class="ptib-item">
													<b class="isleisure">不空闲</b>
												</div>
												<div class="ptib-item">
												开始时间<input type="date" class="startdate" id="startdate3"><input type="time" name="starttime" class="starttime" id="starttime3">
												</div>
												<div class="ptib-item">
												车号<select id="cars3" class="cars">
													</select>
												</div>
												<div class="ptib-item">
													结束时间<input type="date" class="enddate" id="enddate3"><input type="time" name="endtime" id="endtime3">
												</div>
											</div>
	
											<div class="pti-footer border">
												<span class="btn btn-info" id="bnisbtn">预约</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</section>
				</div>

				<footer class="main-footer">
					<div class="text-center">
						 <p class="margin-b-0"><a class="fweight-700" href="">[公司名]</a> 科技有限公司 [省份简写]ICP[备案号] <a href="#" target="_blank" title="智能泊车">智能泊车</a> <a href="#" title="加入我们" target="_blank">加入我们</a></p>
					</div>
				</footer>

			</div>
		</div>
</div>

<!--Jquery.min js-->
<script src="${ pageContext.request.contextPath }/assets/js/jquery.min.js"></script>


<script type= "text/javascript">
$(function () {
	$.get("client/writeInfo", {}, function (data) {
		if(data.cs!=null){
			$('#csimg1').attr("src",data.cs.img);
			$('#csimg2').attr("src",data.cs.img);
			$('#csname1').html(data.cs.name);
			$('#csname2').html(data.cs.sign);
			$('#cspost').html(data.cs.post);
			$('#cscompany').html(data.cs.company);
		}
	});
	var search=location.search;
	var sid=search.split("=")[1]
	load(sid);
	var nt=new  Date();
	var hour=nt.getHours();
	if(hour<10){
		hour=""+hour;
	}
	var min=nt.getMinutes();
	if(min<10){
		min="0"+min;
	}
	var second=nt.getSeconds();
	if(second<10){
		second="0"+second;
	}
	$('.starttime').val(hour+":"+min+":"+second);
	var s1=nt.getMonth()+1;
	if(s1<10){
		s1="0"+s1;
	}
	var s2=nt.getDate();
	if(s2<10){
		s2="0"+s2;
	}
	var std=nt.getFullYear()+"-"+s1+"-"+s2;
	$('.startdate').val(std);
	$('#basicbtn').click(function(){
		var se=new Date($('#startdate0').val()+" "+$('#starttime0').val());
		var st=$('#starttime1').val();
		var sd=$('#startdate1').val();
		var et=$('#endtime1').val();
		var ed=$('#enddate1').val();
		if(ed!=""&&et!=""){
			var dt1=new Date(sd+" "+st).getTime();
			var dt2=new Date(ed+" "+et).getTime();
			if(se.getTime()>dt1){
				alert("车位使用中..")
			}else if(dt1>dt2){
				alert("请输入正确的时间格式!")
			}else{
				//车辆id
				var icid=$('#cars3').val();
				if(icid==""){
					alert("没车")
				}
				//车库id   sid
				//开始时间otime
				if(confirm("您确认下单？")){
				$.post("stall/save",{icid:icid,isid:sid,stime:dt1,etime:dt2,otime:se.getTime()},function(data){
				});
				location.href="/park/nopay";
				}
			}
		}else{
			alert("请选择时间!");
		}
	});
	$('#fkbtn').click(function(){
		var se=new Date($('#startdate0').val()+" "+$('#starttime0').val());
		var st=$('#starttime2').val();
		var sd=$('#startdate2').val();
		var et=$('#endtime2').val();
		var ed=$('#enddate2').val();
		if(ed!=""&&et!=""){
			var dt1=new Date(sd+" "+st).getTime();
			var dt2=new Date(ed+" "+et).getTime();
			if(se.getTime()>dt1){
				alert("车位使用中..")
			}else if(dt1>dt2){
				alert("请输入正确的时间格式!")
			}else{
				//车辆id
				var icid=$('#cars3').val();
				if(icid==""){
					alert("没车")
				}
				//车库id   sid
				//开始时间otime
				if(confirm("您确认下单？")){
				$.post("stall/save",{icid:icid,isid:sid,stime:dt1,etime:dt2,otime:se.getTime()},function(data){
				});
				location.href="/park/nopay";
				}
			}
		}else{
			alert("请选择时间!");
		}
	});
	$('#bnisbtn').click(function(){
		var se=new Date($('#startdate0').val()+" "+$('#starttime0').val());
		var st=$('#starttime3').val();
		var sd=$('#startdate3').val();
		var et=$('#endtime3').val();
		var ed=$('#enddate3').val();
		if(ed!=""&&et!=""){
			var dt1=new Date(sd+" "+st).getTime();
			var dt2=new Date(ed+" "+et).getTime();
			if(se.getTime()>dt1){
				alert("车位使用中..")
			}else if(dt1>dt2){
				alert("请输入正确的时间格式!")
			}else{
				//车辆id
				var icid=$('#cars3').val();
				if(icid==""){
					alert("没车")
				}
				//车库id   sid
				//开始时间otime
				if(confirm("您确认下单？")){
				$.post("stall/save",{icid:icid,isid:sid,stime:dt1,etime:dt2,otime:se.getTime()},function(data){
				});
				location.href="/park/nopay";
				}
			}
		}else{
			alert("请选择时间!");
		}
	});
	function load(id){
		$.get("stall/queryDetail",{id:id},function(data){
			//检测一下不能为空
			var bt=data.stallprice-15;
				if(bt<=0){
					bt=1;
				}
			$('#basicbt').html("￥"+bt+" <small>/ min</small>")
			$('#minmbt').html("￥"+data.stallprice+" <small>/ min</small>")
			$('#businessbt').html("￥"+(data.stallprice+25)+" <small>/ min</small>");
			if(data.isleisure!=null){
				$('.isleisure').html(data.isleisure);
				$('#starttime0').val(data.starttime);
				$('#startdate0').val(data.startdate);
				if(data.isleisure=="空闲"){
					$('#fkbtn').html("下单");
				}
			}
		});
		$.get("stall/queryCars",{},function(data){
			//检测一下不能为空
			if(data.cars!=null){
				var cars="";
				for (var i = 0; i < data.cars.length; i++) {
					var car=data.cars[i];
					cars+='<option value="'+car.cid+'">'+car.carbrand+"--"+car.id+'</option>';
				}
				$('.cars').html(cars);
			}else{
				$('.cars').html('<a href="active.jsp">去增加车<a>');
			}
		});
	}
});

</script>

<!--popper js-->
<script src="${ pageContext.request.contextPath }/assets/js/popper.js"></script>

<!--Tooltip js-->
<script src="${ pageContext.request.contextPath }/assets/js/tooltip.js"></script>

<!--Bootstrap.min js-->
<script src="${ pageContext.request.contextPath }/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!--Jquery.nicescroll.min js-->
<script src="${ pageContext.request.contextPath }/assets/plugins/nicescroll/jquery.nicescroll.min.js"></script>

<!--Scroll-up-bar.min js-->
<script src="${ pageContext.request.contextPath }/assets/plugins/scroll-up-bar/dist/scroll-up-bar.min.js"></script>

<!--Sidemenu js-->
<script src="${ pageContext.request.contextPath }/assets/plugins/toggle-menu/sidemenu.js"></script>

<!--mCustomScrollbar js-->
<script src="${ pageContext.request.contextPath }/assets/plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- ECharts -->
<script src="${ pageContext.request.contextPath }/assets/plugins/echarts/dist/echarts.js"></script>

<!--Min Calendar -->
<script src="${ pageContext.request.contextPath }/assets/plugins/fullcalendar/calendar.min.js"></script>
<script src="${ pageContext.request.contextPath }/assets/plugins/fullcalendar/custom_calendar.js"></script>

<!--Morris js-->
<script src="${ pageContext.request.contextPath }/assets/plugins/morris/morris.min.js"></script>
<script src="${ pageContext.request.contextPath }/assets/plugins/morris/raphael.min.js"></script>

<!--Scripts js-->
<script src="${ pageContext.request.contextPath }/assets/js/scripts.js"></script>

</body>
</html>
