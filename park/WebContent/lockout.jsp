<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>学习网站</title>
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

<body class="bg-primary">
<div id="app">
<section class="section">
    <div class="container mt-6 mb-5 ">
        <div class="row">
            <div class="single-page construction-bg cover-image" data-image-src="assets/img/news/img05.jpg">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="wrapper text-center">
                            <form id="Forgot" class="card-body" tabindex="500" action="unlock" method="post">
                                <img id="dataImg" src="${ pageContext.request.contextPath }/assets/img/avatar/avatar-1.jpeg" alt="profile-user" class="width-40 rounded-circle mb-4">
                                <h5 class="mb-4" id="h5name"></h5>
                                <input type="hidden" value="" name="username" id="username">
                                <div class="passwd">
                                    <input type="password" name="password" id="password">
                                    <label>Password</label>
                                </div>

                                <div class="submit  mb-0">
                                    <input type="button" class="btn btn-primary btn-block" value="解锁" id="sublogin">
                                </div>

                            </form>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="log-wrapper text-center">
                            <img src="${ pageContext.request.contextPath }/assets/img/brand/logo-white.png" class="mb-2 mt-4 mt-lg-0 " alt="logo">
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
<script src="${ pageContext.request.contextPath }/assets/js/jquery.min.js"></script>

<!--popper js-->
<script src="${ pageContext.request.contextPath }/assets/js/popper.js"></script>

<!--Tooltip js-->
<script src="${ pageContext.request.contextPath }/assets/js/tooltip.js"></script>

<!--Bootstrap.min js-->
<script src="${ pageContext.request.contextPath }/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!--Jquery.nicescroll.min js-->
<script src="${ pageContext.request.contextPath }/assets/plugins/nicescroll/jquery.nicescroll.min.js"></script>
<script>
    $(function () {
    	$.get("client/getusername",{},function(data){
    		if(data.username!=null){
    		$('#username').val(data.username);
    		$('#h5name').html(data.username);
    		$('#dataImg').attr("src",data.img);
    		}
    	});
    	 $.get("client/toregister", {}, function (data) {
             var span = $("#read_article");
             span.html(data.inputtext);
             $("read_src").attr("src",data.imgSrc);
         });
        $('#toread').click(function () {
            $.get("client/toregister", {}, function (data) {
                $("#read_article").html(data.inputtext);
                $("read_src").attr("src", data.imgSrc);
            });
        });
        $('#sublogin').click(function(){
        		$.post("client/login", {username:$('#username').val(),password:$('#password').val() }, function (data) {
            		var span = $("#s_random");
            		if(data.flag){
    				     //注册成功，跳转成功页面
    					location.href="content.jsp"; 
    				}else{
    				    //注册失败,给errorMsg添加提示信息
    				    if("激活"==data.errorMsg){
    				    	location.href="active.jsp";
    				    }else{    				    	
    					alert(data.errorMsg);
    					location.href="login.jsp";
    				    }
    				}
                });
        });
    })

</script>
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