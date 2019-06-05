<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>智能泊车</title>
    <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon"/>

    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="assets/css/icons.css">

    <link rel="stylesheet" href="assets/css/style.css">

    <link rel="stylesheet" href="assets/plugins/scroll-bar/jquery.mCustomScrollbar.css">

    <link rel="stylesheet" href="assets/plugins/toggle-menu/sidemenu.css">

    <link rel="stylesheet" href="assets/plugins/chartist/chartist.css">
    <link rel="stylesheet" href="assets/plugins/chartist/chartist-plugin-tooltip.css">

    <link rel="stylesheet" href="assets/plugins/fullcalendar/stylesheet1.css">

    <link rel="stylesheet" href="assets/plugins/morris/morris.css">


</head>

<body class="bg-primary">
<div id="app">
<section class="section">
    <div class="container">
        <div class="row">
            <div class="single-page construction-bg single-pageimage cover-image" data-image-src="assets/img/news/img14.jpg">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="wrapper wrapper2">
                            <form  class="card-body" tabindex="500" action="zcother" method="post">
                                <h3>新用户注册</h3>
                                <div class="mail" id="s_username">
                                    <input type="text" name="username" id="username">
                                    <label>邮箱/手机号/QQ号</label>
                                </div>
                                <div class="passwd" id="s_password">
                                    <input type="password" name="password" id="password">
                                    <label>密码</label>
                                </div>
                                <div class="passwd" id="s_password2">
                                    <input type="password" name="password2" id="password2" readonly>
                                    <label>再次输入密码</label>
                                </div>
                                <div class="passwd">
                                    <img alt="看不清,换一张" src="${ pageContext.request.contextPath }/suiji" id="randomcodeImg"
                                         style="cursor: pointer;" onclick="changeImg()">
                                </div>
                                <div class="passwd" id="s_random">
                                    <input type="text" required id="randomcode"
                                           name="randomcode" >
                                    <label>验证码</label>
                                </div>
                                <div class="submit">
                                    <input class="btn btn-primary btn-block" value="注册" type="button" id="subregister">
                                </div>
                                <p class="text-dark mb-0">已经拥有了账号?<a href="login.jsp" class="text-primary ml-1">登陆</a></p>

                            </form>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="log-wrapper text-center">
                            <img src="assets/img/brand/logo-white.png" class="mb-2 mt-4 mt-lg-0 " alt="logo" id="read_src">
                            <p id="read_article"></p>
                            <a class="btn btn-primary mt-3" href="#">阅读更多</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
<!--Jquery.min js-->
<script src="assets/js/jquery.min.js"></script>
<script>
    $(function () {
        $.get("client/toregister", {}, function (data) {
            var span = $("#read_article");
            span.html(data.inputtext);
            $("read_src").attr("src",data.imgSrc);
        });
        var password;
        $('#password').blur(function () {
            password=$(this).val();
            var leng=password.length;
            if(leng>6){
                $("#s_password").css('border','1px solid green');
                $('#password2').removeAttr('readonly');
            }else{
                $("#s_password").css('border','1px solid red');
            }
        });
        $('#password2').blur(function () {
            if(password!=$(this).val()){
                $('#s_password2').css('border','1px solid red');
            }else{
                $('#s_password2').css('border','1px solid green');
            }
        });
        $('#username').blur(function () {
        	var username=$(this).val();
            $.post("client/hasrepeat", {username: username}, function (data) {
                var span = $("#s_username");
                if (data.userExsit) {
                    //用户名存在
                    span.css("border", "1px solid red");
                } else {
                    //用户名不存在
                    span.css("border", "1px solid green");
                }
            });
        });
        $('#randomcode').blur(function(){
        	var value=$(this).val();
        	$.get("client/randomrepeat", {yzm: value}, function (data) {
        		var span = $("#s_random");
        		if(data.flag){
        			span.css("border", "1px solid green");
				}else{
				    //注册失败,给errorMsg添加提示信息
					span.css("border", "1px solid red");
					document.getElementById("randomcodeImg").src = "suiji?"
				    	+ new Date().getTime();
				}
            });
        });
        $('#subregister').click(function(){
        	var span1 = $("#s_username").css("borderColor");
        	var span2 = $("#s_password").css("borderColor");
        	var span3 = $("#s_password2").css("borderColor");
        	var span4 = $("#s_random").css("borderColor");
        	//rgb(255, 0, 0)
        	if(span1=="rgb(0, 128, 0)"&&span2=="rgb(0, 128, 0)"&&span3=="rgb(0, 128, 0)"&&span4=="rgb(0, 128, 0)"){
        		$.post("client/regist", {username:$('#username').val(),password:$('#password').val() }, function (data) {
            		var span = $("#s_random");
            		if(data.flag){
    				     //注册成功，跳转成功页面
    					location.href="login.jsp"; 
    				}else{
    				    //注册失败,给errorMsg添加提示信息
    					alert(data.errorMsg);
    				}
                });
        	}else{
        		confirm("填写失败,请重新填写!")
        	}
        	
        });
        $('#toread').click(function() {
			$.get("client/toregister", {}, function(data) {
				$("#read_article").html(data.inputtext);
				$("read_src").attr("src", data.imgSrc);
			});
		});
    });
    function changeImg() {
    	document.getElementById("randomcodeImg").src = "suiji?"
    	+ new Date().getTime();
    }
</script>
<!--popper js-->
<script src="assets/js/popper.js"></script>

<!--Tooltip js-->
<script src="assets/js/tooltip.js"></script>

<!--Bootstrap.min js-->
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!--Jquery.nicescroll.min js-->
<script src="assets/plugins/nicescroll/jquery.nicescroll.min.js"></script>

<!--Scroll-up-bar.min js-->
<script src="assets/plugins/scroll-up-bar/dist/scroll-up-bar.min.js"></script>

<!--Sidemenu js-->
<script src="assets/plugins/toggle-menu/sidemenu.js"></script>

<!--mCustomScrollbar js-->
<script src="assets/plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- ECharts -->
<script src="assets/plugins/echarts/dist/echarts.js"></script>

<!--Min Calendar -->
<script src="assets/plugins/fullcalendar/calendar.min.js"></script>
<script src="assets/plugins/fullcalendar/custom_calendar.js"></script>

<!--Morris js-->
<script src="assets/plugins/morris/morris.min.js"></script>
<script src="assets/plugins/morris/raphael.min.js"></script>

<!--Scripts js-->
<script src="assets/js/scripts.js"></script>


</body>
</html>