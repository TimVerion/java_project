<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>

		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Kharna-Admin Dashboard</title>

		<!--Favicon -->
		<link rel="icon" href="favicon.ico" type="image/x-icon"/>

		<!--Bootstrap.min css-->
		<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

		<!--Icons css-->
		<link rel="stylesheet" href="assets/css/icons.css">

		<!--Style css-->
		<link rel="stylesheet" href="assets/css/style.css">

		<!--mCustomScrollbar css-->
		<link rel="stylesheet" href="assets/plugins/scroll-bar/jquery.mCustomScrollbar.css">

		<!--Sidemenu css-->
		<link rel="stylesheet" href="assets/plugins/toggle-menu/sidemenu.css">

		<!--DataTables css-->
		<link rel="stylesheet" href="assets/plugins/Datatable/css/dataTables.bootstrap4.css">

	</head>

	<body class="app ">

		<div id="spinner"></div>

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
								<div class="dropdown-list-content">
									<a href="#" class="dropdown-item dropdown-item-unread">
										<img alt="image" src="assets/img/avatar/avatar-1.jpeg" class="rounded-circle dropdown-item-img">
										<div class="dropdown-item-desc">
											<div class="dropdownmsg d-flex">
												<div class="">
													<b>Stewart Ball</b>
													<p>Your template awesome</p>
												</div>
												<div class="time">6 hours ago</div>
											</div>

										</div>
									</a>
									<a href="#" class="dropdown-item dropdown-item-unread">
										<img alt="image" src="assets/img/avatar/avatar-2.jpeg" class="rounded-circle dropdown-item-img">
										<div class="dropdown-item-desc">
											<div class="dropdownmsg d-flex">
												<div class="">
													<b>Jonathan North</b>
													<p>Your Order Shipped.....</p>
												</div>
												<div class="time">45 mins ago</div>
											</div>
										</div>
									</a>
									<a href="#" class="dropdown-item">
										<img alt="image" src="assets/img/avatar/avatar-4.jpeg" class="rounded-circle dropdown-item-img">
										<div class="dropdown-item-desc">
											<div class="dropdownmsg d-flex">
												<div class="">
													<b>Victor Taylor</b>
													<p>Hi!, I' am web developer</p>
												</div>
												<div class="time"> 8 hours ago</div>
											</div>
										</div>
									</a>
									<a href="#" class="dropdown-item">
										<img alt="image" src="assets/img/avatar/avatar-3.jpeg" class="rounded-circle dropdown-item-img">
										<div class="dropdown-item-desc">
											<div class="dropdownmsg d-flex">
												<div class="">
													<b>Ruth	Arnold</b>
													<p>Hi!, I' am web designer</p>
												</div>
												<div class="time"> 3 hours ago</div>
											</div>
										</div>
									</a>
									<a href="#" class="dropdown-item">
										<img alt="image" src="assets/img/avatar/avatar-5.jpeg" class="rounded-circle dropdown-item-img">
										<div class="dropdown-item-desc">
											<div class="dropdownmsg d-flex">
												<div class="">
													<b>Sam	Lyman</b>
													<p>Hi!, I' am java developer</p>
												</div>
												<div class="time"> 15 mintues ago</div>
											</div>
										</div>
									</a>
								</div>
							</div>
						</li>
						<li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link  nav-link-lg beep"><i class="ion-ios-bell-outline"></i></a>
							<div class="dropdown-menu dropdown-list dropdown-menu-right">
								<div class="dropdown-header">Notifications
									<div class="float-right">
										<a href="#">View All</a>
									</div>
								</div>
								<div class="dropdown-list-content">
									<a href="#" class="dropdown-item">
										<i class="fa fa-users text-primary"></i>
										<div class="dropdown-item-desc">
											<b>So many Users Visit your template</b>
										</div>
									</a>
									<a href="#" class="dropdown-item">
										<i class="fa fa-exclamation-triangle text-danger"></i>
										<div class="dropdown-item-desc">
											<b>Error message occurred....</b>
										</div>
									</a>
									<a href="#" class="dropdown-item">
										<i class="fa fa-users text-warning"></i>
										<div class="dropdown-item-desc">
											<b> Adding new people</b>
										</div>
									</a>
									<a href="#" class="dropdown-item">
										<i class="fa fa-shopping-cart text-success"></i>
										<div class="dropdown-item-desc">
											<b>Your items Arrived</b>
										</div>
									</a>
									<a href="#" class="dropdown-item">
										<i class="fa fa-comment text-primary"></i>
										<div class="dropdown-item-desc">
											<b>New Message received</b> <div class="float-right"><span class="badge badge-pill badge-danger badge-sm">67</span></div>
										</div>
									</a>
									<a href="#" class="dropdown-item">
										<i class="fa fa-users text-primary"></i>
										<div class="dropdown-item-desc">
											<b>So many Users Visit your template</b>
										</div>
									</a>
								</div>
							</div>
						</li>
						<li class="dropdown dropdown-list-toggle">
							<a href="#" class="nav-link nav-link-lg full-screen-link">
								<i class="ion-arrow-expand"  id="fullscreen-button"></i>
							</a>
						</li>
						<li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg">
							<img src="assets/img/avatar/avatar-1.jpeg" alt="profile-user" class="rounded-circle w-32">
							<div class="d-sm-none d-lg-inline-block">Jessica Lee</div></a>
							<div class="dropdown-menu dropdown-menu-right">
								<a href="profile.html" class="dropdown-item has-icon">
									<i class="ion ion-android-person"></i> Profile
								</a>
								<a href="profile.html" class="dropdown-item has-icon">
									<i class="ion-android-drafts"></i> Messages
								</a>
								<a href="profile.html" class="dropdown-item has-icon">
									<i class="ion ion-gear-a"></i> Settings
								</a>
								<a href="#" class="dropdown-item has-icon">
									<i class="ion-ios-redo"></i> Logout
								</a>
							</div>
						</li>
					</ul>
				</nav>

				<aside class="app-sidebar">
					<div class="app-sidebar__user">
					    <div class="dropdown">
							<a class="nav-link pl-2 pr-2 leading-none d-flex" data-toggle="dropdown" href="#">
								<img alt="image" src="assets/img/avatar/avatar-1.jpeg" class=" avatar-md rounded-circle">
								<span class="ml-2 d-lg-block">
									<span class="text-white app-sidebar__user-name mt-5">Jessica Lee</span><br>
									<span class="text-muted app-sidebar__user-name text-sm"> Web-Designer</span>
								</span>
							</a>
						</div>
					</div>
					<ul class="side-menu">
						<li class="slide">
							<a class="side-menu__item"  data-toggle="slide" href="#"><i class="side-menu__icon fa fa-desktop"></i><span class="side-menu__label">Dashboard</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a class="slide-item"  href="index.html"><span>Dashboard 01</span></a></li>
								<li><a class="slide-item" href="index2.html"><span>Dashboard 02</span></a></li>
								<li><a class="slide-item" href="index3.html"><span>Dashboard 03</span></a></li>
							</ul>
						</li>
						<li>
							<a class="side-menu__item" href="widgets.html"><i class="side-menu__icon fa fa-flask"></i><span class="side-menu__label">Widgets</span></a>
						</li>
						<li class="slide">
							<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-tasks"></i><span class="side-menu__label">UI Elements</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="elements.html" class="slide-item"> Elements</a></li>
								<li><a href="buttons.html" class="slide-item"> Buttons</a></li>
								<li><a href="toastr.html" class="slide-item"> Toastr</a></li>
								<li><a href="calender.html" class="slide-item"> Calendar</a></li>
								<li><a href="rangesliders.html" class="slide-item"> Rangeslider</a></li>
								<li><a href="modals.html" class="slide-item"> Modals</a></li>
								<li><a href="timeline.html" class="slide-item"> Timeline</a></li>
								<li><a href="invoice.html" class="slide-item"> Invoice</a></li>
								<li><a href="users.html" class="slide-item"> Users List</a></li>
								<li><a href="mailinbox.html" class="slide-item"> Mail-inbox</a></li>
								<li><a href="mail-compose.html" class="slide-item"> Mail-Compose</a></li>
							</ul>
						</li>
						<li class="slide">
						    <a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-paw"></i><span class="side-menu__label">Icons</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="icons-ion.html" class="slide-item"> Ion Icons</a></li>
								<li><a href="icons-fontawesome.html" class="slide-item"> Font Awesome</a></li>
								<li><a href="icons-feather.html" class="slide-item"> Feather Awesome</a></li>
								<li><a href="icons-materialdesign.html" class="slide-item"> Material Design</a></li>
								<li><a href="icons-themify.html" class="slide-item"> Themify</a></li>
								<li><a href="icons-simpleline.html" class="slide-item"> Simple line</a></li>
								<li><a href="icons-pe7.html" class="slide-item"> pe7</a></li>
								<li><a href="icons-flag.html" class="slide-item"> Flag Icons</a></li>
								<li><a href="icons-weather.html" class="slide-item"> Weather Icons</a></li>
								<li><a href="icons-typicons.html" class="slide-item"> Typicons</a></li>
							</ul>
						</li>
						<li class="slide">
							<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-table"></i><span class="side-menu__label">Tables</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="table.html" class="slide-item">Basic Tables</a></li>
								<li><a href="datatables.html" class="slide-item"> Data Tables</a></li>
							</ul>
						</li>
						<li class="slide">
							<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-file-text"></i><span class="side-menu__label">Forms</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="formelements.html" class="slide-item"> Form Elements</a></li>
								<li><a href="formadvanced.html" class="slide-item"> Advanced Form</a></li>
								<li><a href="formeditor.html" class="slide-item"> Form Editor</a></li>
							</ul>
						</li>
						<li class="slide">
							<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-bar-chart"></i><span class="side-menu__label">Charts</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="chartjs.html" class="slide-item">Chart Js</a></li>
								<li><a href="flotcharts.html" class="slide-item"> Flot Charts</a></li>
								<li><a href="barcharts.html" class="slide-item"> Bar Charts</a></li>
								<li><a href="echart.html" class="slide-item"> ECharts</a></li>
								<li><a href="chartist.html" class="slide-item"> Chartist</a></li>
								<li><a href="morris.html" class="slide-item"> Morris Charts</a></li>
								<li><a href="othercharts.html" class="slide-item"> Other Charts</a></li>
							</ul>
						</li>
						<li class="slide">
							<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-map"></i><span class="side-menu__label">Maps</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="maps.html" class="slide-item"> Google Maps</a></li>
								<li><a href="vector-map.html" class="slide-item">Vector Maps</a></li>
							</ul>
						</li>
						<li class="slide">
							<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon fa fa-pie-chart"></i><span class="side-menu__label">Pages</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="profile.html" class="slide-item"> Profile</a></li>
								<li><a href="pricing-tables.html" class="slide-item"> Pricing Tables</a></li>
								<li><a href="gallery.html" class="slide-item"> Gallery</a></li>
								<li><a href="shop.html" class="slide-item"> Shop</a></li>
								<li><a href="shop-cart.html" class="slide-item"> Shop Cart</a></li>
								<li><a href="terms.html" class="slide-item"> Terms and Conditions</a></li>
								<li><a href="register.html" class="slide-item"> Register</a></li>
								<li><a href="login.html" class="slide-item"> Login</a></li>
								<li><a href="forgot.html" class="slide-item"> Forgot Password</a></li>
								<li><a href="reset.html" class="slide-item"> Reset Password</a></li>
								<li><a href="under-construction.html" class="slide-item"> Under Construction</a></li>
								<li><a href="lockscreen.html" class="slide-item"> Lock Screen</a></li>
								<li><a href="404.html" class="slide-item"> 404</a></li>
								<li><a href="505.html" class="slide-item"> 505</a></li>
								<li><a href="emptypage.html" class="slide-item"> Empty  Page</a></li>
							</ul>
						</li>
					</ul>
				</aside>

				<div class="app-content">
					<section class="section">
                    	<ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Tables</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Data Tables</li>
                        </ol>

						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h4>Defalut Datatables</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
										<table id="example" class="table table-striped table-bordered border-t0 text-nowrap w-100" >
											<thead>
												<tr>
													<th class="wd-15p">First name</th>
													<th class="wd-15p">Last name</th>
													<th class="wd-20p">Position</th>
													<th class="wd-15p">Start date</th>
													<th class="wd-10p">Salary</th>
													<th class="wd-25p">E-mail</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Bella</td>
													<td>Chloe</td>
													<td>System Developer</td>
													<td>2018/03/12</td>
													<td>$654,765</td>
													<td>b.Chloe@datatables.net</td>
												</tr>
												<tr>
													<td>Donna</td>
													<td>Bond</td>
													<td>Account Manager</td>
													<td>2012/02/21</td>
													<td>$543,654</td>
													<td>d.bond@datatables.net</td>
												</tr>
												<tr>
													<td>Harry</td>
													<td>Carr</td>
													<td>Technical Manager</td>
													<td>20011/02/87</td>
													<td>$86,000</td>
													<td>h.carr@datatables.net</td>
												</tr>
												<tr>
													<td>Lucas</td>
													<td>Dyer</td>
													<td>Javascript Developer</td>
													<td>2014/08/23</td>
													<td>$456,123</td>
													<td>l.dyer@datatables.net</td>
												</tr>
												<tr>
													<td>Karen</td>
													<td>Hill</td>
													<td>Sales Manager</td>
													<td>2010/7/14</td>
													<td>$432,230</td>
													<td>k.hill@datatables.net</td>
												</tr>
												<tr>
													<td>Dominic</td>
													<td>Hudson</td>
													<td>Sales Assistant</td>
													<td>2015/10/16</td>
													<td>$654,300</td>
													<td>d.hudson@datatables.net</td>
												</tr>
												<tr>
													<td>Herrod</td>
													<td>Chandler</td>
													<td>Integration Specialist</td>
													<td>2012/08/06</td>
													<td>$137,500</td>
													<td>h.chandler@datatables.net</td>
												</tr>
												<tr>
													<td>Jonathan</td>
													<td>Ince</td>
													<td>junior Manager</td>
													<td>2012/11/23</td>
													<td>$345,789</td>
													<td>j.ince@datatables.net</td>
												</tr>
												<tr>
													<td>Leonard</td>
													<td>Ellison</td>
													<td>Junior Javascript Developer</td>
													<td>2010/03/19</td>
													<td>$205,500</td>
													<td>l.ellison@datatables.net</td>
												</tr>
												<tr>
													<td>Madeleine</td>
													<td>Lee</td>
													<td>Software Developer</td>
													<td>20015/8/23</td>
													<td>$456,890</td>
													<td>m.lee@datatables.net</td>
												</tr>
												<tr>
													<td>Karen</td>
													<td>Miller</td>
													<td>Office Director</td>
													<td>2012/9/25</td>
													<td>$87,654</td>
													<td>k.miller@datatables.net</td>
												</tr>
												<tr>
													<td>Lisa</td>
													<td>Smith</td>
													<td>Support Lead</td>
													<td>2011/05/21</td>
													<td>$342,000</td>
													<td>l.simth@datatables.net</td>
												</tr>
												<tr>
													<td>Morgan</td>
													<td>Keith</td>
													<td>Accountant</td>
													<td>2012/11/27</td>
													<td>$675,245</td>
													<td>m.keith@datatables.net</td>
												</tr>
												<tr>
													<td>Nathan</td>
													<td>Mills</td>
													<td>Senior Marketing Designer</td>
													<td>2014/10/8</td>
													<td>$765,980</td>
													<td>n.mills@datatables.net</td>
												</tr>
												<tr>
													<td>Ruth</td>
													<td>May</td>
													<td>office Manager</td>
													<td>2010/03/17</td>
													<td>$654,765</td>
													<td>r.may@datatables.net</td>
												</tr>
												<tr>
													<td>Penelope</td>
													<td>Ogden</td>
													<td>Marketing Manager</td>
													<td>2013/5/22</td>
													<td>$345,510</td>
													<td>p.ogden@datatables.net</td>
												</tr>
												<tr>
													<td>Sean</td>
													<td>Piper</td>
													<td>Financial Officer</td>
													<td>2014/06/11</td>
													<td>$725,000</td>
													<td>s.piper@datatables.net</td>
												</tr>
												<tr>
													<td>Trevor</td>
													<td>Ross</td>
													<td>Systems Administrator</td>
													<td>2011/05/23</td>
													<td>$237,500</td>
													<td>t.ross@datatables.net</td>
												</tr>
												<tr>
													<td>Vanessa</td>
													<td>Robertson</td>
													<td>Software Designer</td>
													<td>2014/6/23</td>
													<td>$765,654</td>
													<td>v.robertson@datatables.net</td>
												</tr>
												<tr>
													<td>Una</td>
													<td>Richard</td>
													<td>Personnel Manager</td>
													<td>2014/5/22</td>
													<td>$765,290</td>
													<td>u.richard@datatables.net</td>
												</tr>
												<tr>
													<td>Justin</td>
													<td>Peters</td>
													<td>Development lead</td>
													<td>2013/10/23</td>
													<td>$765,654</td>
													<td>j.peters@datatables.net</td>
												</tr>
												<tr>
													<td>Adrian</td>
													<td>Terry</td>
													<td>Marketing Officer</td>
													<td>2013/04/21</td>
													<td>$543,769</td>
													<td>a.terry@datatables.net</td>
												</tr>
												<tr>
													<td>Cameron</td>
													<td>Watson</td>
													<td>Sales Support</td>
													<td>2013/9/7</td>
													<td>$675,876</td>
													<td>c.watson@datatables.net</td>
												</tr>
												<tr>
													<td>Evan</td>
													<td>Terry</td>
													<td>Sales Manager</td>
													<td>2013/10/26</td>
													<td>$66,340</td>
													<td>d.terry@datatables.net</td>
												</tr>
												<tr>
													<td>Angelica</td>
													<td>Ramos</td>
													<td>Chief Executive Officer</td>
													<td>20017/10/15</td>
													<td>$6,234,000</td>
													<td>a.ramos@datatables.net</td>
												</tr>
												<tr>
													<td>Connor</td>
													<td>Johne</td>
													<td>Web Developer</td>
													<td>2011/1/25</td>
													<td>$92,575</td>
													<td>C.johne@datatables.net</td>
												</tr>
												<tr>
													<td>Jennifer</td>
													<td>Chang</td>
													<td>Regional Director</td>
													<td>2012/17/11</td>
													<td>$546,890</td>
													<td>j.chang@datatables.net</td>
												</tr>
												<tr>
													<td>Brenden</td>
													<td>Wagner</td>
													<td>Software Engineer</td>
													<td>2013/07/14</td>
													<td>$206,850</td>
													<td>b.wagner@datatables.net</td>
												</tr>
												<tr>
													<td>Fiona</td>
													<td>Green</td>
													<td>Chief Operating Officer</td>
													<td>2015/06/23</td>
													<td>$345,789</td>
													<td>f.green@datatables.net</td>
												</tr>
												<tr>
													<td>Shou</td>
													<td>Itou</td>
													<td>Regional Marketing</td>
													<td>2013/07/19</td>
													<td>$335,300</td>
													<td>s.itou@datatables.net</td>
												</tr>
												<tr>
													<td>Michelle</td>
													<td>House</td>
													<td>Integration Specialist</td>
													<td>2016/07/18</td>
													<td>$76,890</td>
													<td>m.house@datatables.net</td>
												</tr>
												<tr>
													<td>Suki</td>
													<td>Burks</td>
													<td>Developer</td>
													<td>2010/11/45</td>
													<td>$678,890</td>
													<td>s.burks@datatables.net</td>
												</tr>
												<tr>
													<td>Prescott</td>
													<td>Bartlett</td>
													<td>Technical Author</td>
													<td>2014/12/25</td>
													<td>$789,100</td>
													<td>p.bartlett@datatables.net</td>
												</tr>
												<tr>
													<td>Gavin</td>
													<td>Cortez</td>
													<td>Team Leader</td>
													<td>2015/1/19</td>
													<td>$345,890</td>
													<td>g.cortez@datatables.net</td>
												</tr>
												<tr>
													<td>Martena</td>
													<td>Mccray</td>
													<td>Post-Sales support</td>
													<td>2011/03/09</td>
													<td>$324,050</td>
													<td>m.mccray@datatables.net</td>
												</tr>
												<tr>
													<td>Unity</td>
													<td>Butler</td>
													<td>Marketing Designer</td>
													<td>2014/7/28</td>
													<td>$34,983</td>
													<td>u.butler@datatables.net</td>
												</tr>
												<tr>
													<td>Howard</td>
													<td>Hatfield</td>
													<td>Office Manager</td>
													<td>2013/8/19</td>
													<td>$98,000</td>
													<td>h.hatfield@datatables.net</td>
												</tr>
												<tr>
													<td>Hope</td>
													<td>Fuentes</td>
													<td>Secretary</td>
													<td>2015/07/28</td>
													<td>$78,879</td>
													<td>h.fuentes@datatables.net</td>
												</tr>
												<tr>
													<td>Vivian</td>
													<td>Harrell</td>
													<td>Financial Controller</td>
													<td>2010/02/14</td>
													<td>$452,500</td>
													<td>v.harrell@datatables.net</td>
												</tr>
												<tr>
													<td>Timothy</td>
													<td>Mooney</td>
													<td>Office Manager</td>
													<td>20016/12/11</td>
													<td>$136,200</td>
													<td>t.mooney@datatables.net</td>
												</tr>
												<tr>
													<td>Jackson</td>
													<td>Bradshaw</td>
													<td>Director</td>
													<td>2011/09/26</td>
													<td>$645,750</td>
													<td>j.bradshaw@datatables.net</td>
												</tr>
												<tr>
													<td>Olivia</td>
													<td>Liang</td>
													<td>Support Engineer</td>
													<td>2014/02/03</td>
													<td>$234,500</td>
													<td>o.liang@datatables.net</td>
												</tr>
												<tr>
													<td>Bruno</td>
													<td>Nash</td>
													<td>Software Engineer</td>
													<td>2015/05/03</td>
													<td>$163,500</td>
													<td>b.nash@datatables.net</td>
												</tr>
												<tr>
													<td>Sakura</td>
													<td>Yamamoto</td>
													<td>Support Engineer</td>
													<td>2010/08/19</td>
													<td>$139,575</td>
													<td>s.yamamoto@datatables.net</td>
												</tr>
												<tr>
													<td>Thor</td>
													<td>Walton</td>
													<td>Developer</td>
													<td>2012/08/11</td>
													<td>$98,540</td>
													<td>t.walton@datatables.net</td>
												</tr>
												<tr>
													<td>Finn</td>
													<td>Camacho</td>
													<td>Support Engineer</td>
													<td>2016/07/07</td>
													<td>$87,500</td>
													<td>f.camacho@datatables.net</td>
												</tr>
												<tr>
													<td>Serge</td>
													<td>Baldwin</td>
													<td>Data Coordinator</td>
													<td>2017/04/09</td>
													<td>$138,575</td>
													<td>s.baldwin@datatables.net</td>
												</tr>
												<tr>
													<td>Zenaida</td>
													<td>Frank</td>
													<td>Software Engineer</td>
													<td>2018/01/04</td>
													<td>$125,250</td>
													<td>z.frank@datatables.net</td>
												</tr>
												<tr>
													<td>Zorita</td>
													<td>Serrano</td>
													<td>Software Engineer</td>
													<td>2017/06/01</td>
													<td>$115,000</td>
													<td>z.serrano@datatables.net</td>
												</tr>
												<tr>
													<td>Jennifer</td>
													<td>Acosta</td>
													<td>Junior Javascript Developer</td>
													<td>2017/02/01</td>
													<td>$75,650</td>
													<td>j.acosta@datatables.net</td>
												</tr>
											</tbody>
										</table>
									</div>
									</div>
								</div>
							</div>
						</div>

					</section>
				</div>

				<footer class="main-footer">
					<div class="text-center">
						Copyright &copy;Kharna-Admin 2018. Design By<a href="https://spruko.com/"> Spruko</a>
					</div>
				</footer>

			</div>
		</div>

		<!--Jquery.min js-->
		<script src="assets/js/jquery.min.js"></script>

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

		<!--DataTables js-->
		<script src="assets/plugins/Datatable/js/jquery.dataTables.js"></script>
		<script src="assets/plugins/Datatable/js/dataTables.bootstrap4.js"></script>

		<!--Scripts js-->
		<script src="assets/js/scripts.js"></script>

		<script>
			$(function(e) {
				$('#example').DataTable();
			} );
		</script>

	</body>
</html>