<%@page import="java.net.URLDecoder"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>智能泊车</title>
<link rel="icon"
	href="${ pageContext.request.contextPath }/assets/img/favicon.ico"
	type="image/x-icon" />

<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/plugins/bootstrap/css/bootstrap.min.css">

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


</head>

<body class="bg-primary">
	<div id="app">
		<section class="section section-2">
			<div class="container">
				<div class="row">
					<div
						class="single-page single-pageimage construction-bg cover-image " style="background-image: url(${ pageContext.request.contextPath }/assets/img/news/img09.jpg)" id="read_src">
						<div class="row">
							<div class="col-lg-6">
								<div class="wrapper wrapper2">
									<form id="login" class="card-body" tabindex="500"
										action="login" method="post">
										<h3>登陆网站</h3>
										<div class="mail" id="s_username">
											<input type="text" name="username" required id="username">
											<label>邮箱/手机号/QQ号</label>
										</div>
										<div class="passwd" id="s_password">
											<input type="password" name="password" required id="password">
											<label>密码</label>
										</div>
										<div class="passwd">
											<img alt="看不清,换一张" src="suiji" id="randomcodeImg"
												style="cursor: pointer;" onclick="changeImg()">
										</div>
										<div class="passwd" id="s_random">
											<input type="text" required id="randomcode" name="randomcode"
												placeholder=""> <label>验证码</label>
										</div>
										<input type="checkbox" value="no" id="jzpwd"
											style="width: 20px; height: 20px"><span
											style="height: 40px; padding-bottom: 30px;">记住密码</span>
										<div class="submit">
											<input class="btn btn-primary btn-block" id="sublogin"
												type="button" value="登陆">
										</div>
										<p class="text-dark mb-0">
											<a href="repwd.jsp">忘记密码</a>还没有拥有账号?<a href="register.jsp"
												class="text-primary ml-1">注册</a>
										</p>
									</form>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="log-wrapper text-center">
									<img src="assets/img/brand/logo-white.png"
										class="mb-2 mt-4 mt-lg-0 " alt="logo" >
									<p id="read_article"></p>
									<a class="btn btn-primary mt-3" id="toread">阅读更多</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!--Jquery.min js-->
	<script
		src="${ pageContext.request.contextPath }/assets/js/jquery.min.js"></script>


	<script type="text/javascript">
		$(function() {
			$.get("client/toregister", {}, function(data) {
				var span = $("#read_article");
				span.html(data.inputtext);
				$("read_src").attr("data-image-src", data.imgSrc);
			});
			//为了用户体验假如使新用户，将把用户名填入
			$.get("client/getusername", {}, function(data) {
				if (data.username != null) {
					$('#username').val(data.username);
					$("#s_username").css("border", "1px solid green");
				}else{
			//记住密码后
					$.get("client/jzpwd", {}, function(data) {
						if (data.name != null && data.pwd != null) {
							$('#username').val(data.name);
							$("#s_username").css("border", "1px solid green");
							$('#password').val(data.pwd);
							$("#s_password").css("border", "1px solid green");
						}
					});
				}
			});
			$('#toread').click(function() {
				$.get("client/toregister", {}, function(data) {
					$("#read_article").html(data.inputtext);
					$("#read_src").attr("backgroundImg", data.imgSrc);
				});
			});
			$('#username').blur(function() {
				var username = $('#username').val();
				$.post("client/hasrepeat", {
					username : username
				}, function(data) {
					var span = $("#s_username");
					if (data.userExsit) {
						//用户名存在
						span.css("border", "1px solid green");
					} else {
						//用户名不存在
						span.css("border", "1px solid red");
					}
				});
			});
			$('#password').blur(function() {
				password = $(this).val();
				var leng = password.length;
				//做简单的密码需求
				if (leng > 3) {
					$("#s_password").css('border', '1px solid green');
				} else {
					$("#s_password").css('border', '1px solid red');
				}
			});
			$('#randomcode')
					.blur(
							function() {
								var value = $(this).val();
								$
										.get(
												"client/randomrepeat",
												{
													yzm : value
												},
												function(data) {
													var span = $("#s_random");
													if (data.flag) {
														/* //注册成功，跳转成功页面
														location.href="login.html"; */
														span
																.css("border",
																		"1px solid green");
													} else {
														//注册失败,给errorMsg添加提示信息
														span
																.css("border",
																		"1px solid red");
														document
																.getElementById("randomcodeImg").src = "suiji?"
																+ new Date()
																		.getTime();
													}
												});
							});
			$('#jzpwd').change(function() {
				$(this).val("yes");
			});
			$('#sublogin').click(
					function() {
						var span1 = $("#s_username").css("borderColor");
						var span2 = $("#s_password").css("borderColor");
						var span3 = $("#s_random").css("borderColor");
						var issame=span1==span2||span2==span3;
						if (span1 == "rgb(0, 128, 0)"
								&& span2 == "rgb(0, 128, 0)"
								&& span3 == "rgb(0, 128, 0)") {
							$.post("client/login", {
								username : $('#username').val(),
								password : $('#password').val(),
								style : $('#jzpwd').val()
							}, function(data) {
								var span = $("#s_random");
								if (data.flag) {
									//注册成功，跳转成功页面
									location.href = "content.jsp";
								} else {
									//注册失败,给errorMsg添加提示信息
									if ("激活" == data.errorMsg) {
										location.href = "active.jsp";
									} else {
										alert(data.errorMsg);
										location.href = "login.jsp";
									}
								}
							});
						} else {
							if(issame){
								alert("您的浏览器不兼容,请使用谷歌");
							}
							confirm("填写失败,请重新填写!");
						}
					});
		});
		function changeImg() {
			document.getElementById("randomcodeImg").src = "suiji?"
					+ new Date().getTime();
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

	<!--Scripts js-->
	<script src="${ pageContext.request.contextPath }/assets/js/scripts.js"></script>

</body>
</html>
