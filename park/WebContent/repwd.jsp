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
    <div class="container mt-6 mb-5">
        <div class="row">
            <div class="single-page construction-bg cover-image" data-image-src="assets/img/news/img04.jpg">
                <div class="row">
                    <div class="col-lg-6">
                        <div class=" wrapper">
                        <!-- 在秒嘀云或者阿里云注册发送短信验证码的账户,秒嘀云会送10元话费,把接口调用就行 -->
                            <form  class="card-body" tabindex="500" action="${ pageContext.request.contextPath }/login.jsp">
                                <h3>重置密码</h3>
                                <div class="mail">
                                    <input type="text" name="userphone" >
                                    <label>用户手机号</label>
                                </div>
                                <div class="mail">
                                    <input type="text" name="userphone"  >
                                    <label>用户名字</label>
                                </div>
                                <div class="passwd">
                                    <input type="password" name="password" id="password">
                                    <label>新密码</label>
                                </div>
                                <div class="passwd">
                                    <input type="password" name="password" id="password2" readonly>
                                    <label>再次输入</label>
                                </div>
                                <div class="submit mt-1 mb-0">
                                    <input class="btn btn-primary btn-block" type="submit"value="重置">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="log-wrapper text-center">
                            <img src="assets/img/brand/logo-white.png" class="mb-2 mt-4 mt-lg-0 " alt="logo" id="read_src">
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