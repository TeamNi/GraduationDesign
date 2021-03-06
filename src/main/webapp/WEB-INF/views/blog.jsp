<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Campus Blog</title>
	<%
		pageContext.setAttribute("BASE_PATH",request.getContextPath());
	%>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<meta name="MobileOptimized" content="320">
	<!-- BEGIN GLOBAL MANDATORY STYLES -->          
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN THEME STYLES --> 
	<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/pages/blog.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
	<!-- END THEME STYLES -->
	<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-boxed page-full-width">
	<!-- BEGIN HEADER -->   
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="header-inner container">
			<!-- BEGIN LOGO -->
			<a class="navbar-brand" href="index">
			<img src="assets/img/logo.png" alt="logo" class="img-responsive" />
			</a>
			<!-- END LOGO -->
			<!-- BEGIN HORIZANTAL MENU -->
			<div class="hor-menu hidden-sm hidden-xs">
				<ul class="nav navbar-nav">
					<li>
						<a href="index">首页</a>
					</li>
					<li class="active">
						<a href="blog">校园论坛</a>                       
					</li>
					<li>
						<a href="used">校园闲置</a>
					</li>
					<li>
						<a href="#">教材征订</a>                      
					</li>
					<li>
						<span class="hor-menu-search-form-toggler">&nbsp;</span>
						<div class="search-form">
							<form class="form-search" action="search" method="get">
								<div class="input-group">
									<input type="text" placeholder="Search..." class="form-control">
									<div class="input-group-btn">
										<button type="button" class="btn"></button>
									</div>
								</div>
							</form>
						</div>
					</li>
				</ul>
			</div>
			<!-- END HORIZANTAL MENU -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<img src="assets/img/menu-toggler.png" alt="" />
			</a>          
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<ul class="nav navbar-nav pull-right">
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<li class="dropdown user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<img alt="" src="assets/img/avatar1_small.jpg"/>
					<span class="username"><c:out value="${username }"></c:out></span>
					<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="my_info"><i class="fa fa-user"></i> My Profile</a></li>
						<li><a href="my_blog"><i class="fa fa-envelope"></i> My Blog <span class="badge badge-danger">3</span></a></li>
						<li><a href="my_used"><i class="fa fa-tasks"></i> My Used <span class="badge badge-success">7</span></a></li>
						<li class="divider"></li>
						<li><a href="logout"><i class="fa fa-key"></i> Log Out</a></li>
					</ul>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->   
	<div class="page-container">
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN PAGE HEADER-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">
						Campus Blog <small>Let's focus on the campus dynamic together</small>
					</h3>
					<ul class="page-breadcrumb breadcrumb">
						<li class="btn-group">
							<a href="blog_issue" class="btn blue">
								<span>Issue</span><i class="fa fa-plus"></i>
							</a>
						</li>
						<li>
							<i class="fa fa-home"></i>
							<a href="index">Home</a> 
							<i class="fa fa-angle-right"></i>
						</li>
						<li><a href="blog">Blog</a></li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12 blog-page">
					<div class="row">
						<div class="col-md-9 col-sm-8 article-block">
							<h1>Latest Blog</h1>
							<c:forEach items="${pageInfo.list }" var="blog">
							<div class="row">
								<div class="col-md-4 blog-img blog-tag-data">
									<img src="assets/img/gallery/image4.jpg" alt="" class="img-responsive">
									<ul class="list-inline">
										<li><i class="fa fa-calendar"></i> <a href="#">${blog.createtime }</a></li>
										<li><i class="fa fa-comments"></i> <a href="#">${blog.replytimes } Comments</a></li>
									</ul>
									<ul class="list-inline blog-tags">
										<li>
											<i class="fa fa-tags"></i> 
											<a href="#">Technology</a> 
											<a href="#">Education</a>
											<a href="#">Internet</a>
										</li>
									</ul>
								</div>
								<div class="col-md-8 blog-article">
									<h3><a href="blog_details">${blog.title }</a></h3>
									<p>${blog.content }</p>
									<a class="btn blue" href="blog_details">
									Read more 
									<i class="m-icon-swapright m-icon-white"></i>
									</a>
								</div>
							</div>
							<hr>
							</c:forEach>
							<div class="row">
								<div class="col-md-4 blog-img blog-tag-data">
									<img src="assets/img/gallery/image3.jpg" alt="" class="img-responsive">
									<ul class="list-inline">
										<li><i class="fa fa-calendar"></i> <a href="#">April 16, 2013</a></li>
										<li><i class="fa fa-comments"></i> <a href="#">38 Comments</a></li>
									</ul>
									<ul class="list-inline blog-tags">
										<li>
											<i class="fa fa-tags"></i> 
											<a href="#">Technology</a> 
											<a href="#">Education</a>
											<a href="#">Internet</a>
										</li>
									</ul>
								</div>
								<div class="col-md-8 blog-article">
									<h3><a href="blog_details">Hello here will be some recent news..</a></h3>
									<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
									<a class="btn blue" href="blog_details">
									Read more 
									<i class="m-icon-swapright m-icon-white"></i>
									</a>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-4 blog-img blog-tag-data">
									<img src="assets/img/gallery/image2.jpg" alt="" class="img-responsive">
									<ul class="list-inline">
										<li><i class="fa fa-calendar"></i> <a href="#">April 16, 2013</a></li>
										<li><i class="fa fa-comments"></i> <a href="#">38 Comments</a></li>
									</ul>
									<ul class="list-inline blog-tags">
										<li>
											<i class="fa fa-tags"></i> 
											<a href="#">Technology</a> 
											<a href="#">Education</a>
											<a href="#">Internet</a>
										</li>
									</ul>
								</div>
								<div class="col-md-8 blog-article">
									<h3><a href="blog_details">Hello here will be some recent news..</a></h3>
									<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
									<a class="btn blue" href="blog_details">
									Read more 
									<i class="m-icon-swapright m-icon-white"></i>
									</a>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-4 blog-img blog-tag-data">
									<img src="assets/img/gallery/image5.jpg" alt="" class="img-responsive">
									<ul class="list-inline">
										<li><i class="fa fa-calendar"></i> <a href="#">April 16, 2013</a></li>
										<li><i class="fa fa-comments"></i> <a href="#">38 Comments</a></li>
									</ul>
									<ul class="list-inline blog-tags">
										<li>
											<i class="fa fa-tags"></i> 
											<a href="#">Technology</a> 
											<a href="#">Education</a>
											<a href="#">Internet</a>
										</li>
									</ul>
								</div>
								<div class="col-md-8 blog-article">
									<h3><a href="blog_details">Hello here will be some recent news..</a></h3>
									<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
									<a class="btn blue" href="blog_details">
									Read more 
									<i class="m-icon-swapright m-icon-white"></i>
									</a>
								</div>
							</div>
						</div>
						<!--end col-md-9-->
						<div class="col-md-3 col-sm-4 blog-sidebar">
							<h3>Top Entiries</h3>
							<div class="top-news">
								<a href="#" class="btn red">
								<span>Metronic News</span>
								<em>Posted on: April 16, 2013</em>
								<em>
								<i class="fa fa-tags"></i>
								Money, Business, Google
								</em>
								<i class="fa fa-briefcase top-news-icon"></i>
								</a>
								<a href="#" class="btn green">
								<span>Top Week</span>
								<em>Posted on: April 15, 2013</em>
								<em>
								<i class="fa fa-tags"></i>
								Internet, Music, People
								</em>
								<i class="fa fa-music top-news-icon"></i>                             
								</a>
								<a href="#" class="btn blue">
								<span>Gold Price Falls</span>
								<em>Posted on: April 14, 2013</em>
								<em>
								<i class="fa fa-tags"></i>
								USA, Business, Apple
								</em>
								<i class="fa fa-globe top-news-icon"></i>                             
								</a>
								<a href="#" class="btn yellow">
								<span>Study Abroad</span>
								<em>Posted on: April 13, 2013</em>
								<em>
								<i class="fa fa-tags"></i>
								Education, Students, Canada
								</em>
								<i class="fa fa-book top-news-icon"></i>                              
								</a>
								<a href="#" class="btn purple">
								<span>Top Destinations</span>
								<em>Posted on: April 12, 2013</em>
								<em>
								<i class="fa fa-tags"></i>
								Places, Internet, Google Map
								</em>
								<i class="fa fa-bolt top-news-icon"></i>                              
								</a>
							</div>
							<div class="space20"></div>
							<h3>Flickr</h3>
							<ul class="list-inline blog-images">
								<li>
									<a  class="fancybox-button" data-rel="fancybox-button" title="390 x 220 - keenthemes.com" href="assets/img/blog/1.jpg">
									<img alt="" src="assets/img/blog/1.jpg">
									</a>
								</li>
								<li><a href="#"><img alt="" src="assets/img/blog/2.jpg"></a></li>
								<li><a href="#"><img alt="" src="assets/img/blog/3.jpg"></a></li>
								<li><a href="#"><img alt="" src="assets/img/blog/4.jpg"></a></li>
								<li><a href="#"><img alt="" src="assets/img/blog/5.jpg"></a></li>
								<li><a href="#"><img alt="" src="assets/img/blog/6.jpg"></a></li>
								<li><a href="#"><img alt="" src="assets/img/blog/8.jpg"></a></li>
								<li><a href="#"><img alt="" src="assets/img/blog/10.jpg"></a></li>
								<li><a href="#"><img alt="" src="assets/img/blog/11.jpg"></a></li>
								<li><a href="#"><img alt="" src="assets/img/blog/1.jpg"></a></li>
								<li><a href="#"><img alt="" src="assets/img/blog/2.jpg"></a></li>
								<li><a href="#"><img alt="" src="assets/img/blog/7.jpg"></a></li>
							</ul>
							<div class="space20"></div>
							<h3>Tabs</h3>
							<div class="tabbable tabbable-custom">
								<ul class="nav nav-tabs">
									<li class="active"><a data-toggle="tab" href="#tab_1_1">Section 1</a></li>
									<li ><a data-toggle="tab" href="#tab_1_2">Section 2</a></li>
								</ul>
								<div class="tab-content">
									<div id="tab_1_1" class="tab-pane active">
										<p>I'm in Section 1.</p>
										<p>
											Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.
										</p>
									</div>
									<div id="tab_1_2" class="tab-pane">
										<p>Howdy, I'm in Section 2.</p>
										<p>
											Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.
										</p>
									</div>
								</div>
							</div>
							<div class="space20"></div>
							<h3>Recent Twitts</h3>
							<div class="blog-twitter">
								<div class="blog-twitter-block">
									<a href="">@keenthemes</a> 
									<p>At vero eos et accusamus et iusto odio.</p>
									<a href="#"><em>http://t.co/sBav7dm</em></a> 
									<span>2 hours ago</span>
									<i class="fa fa-twitter blog-twiiter-icon"></i>
								</div>
								<div class="blog-twitter-block">
									<a href="">@keenthemes</a> 
									<p>At vero eos et accusamus et iusto odio.</p>
									<a href="#"><em>http://t.co/sBav7dm</em></a> 
									<span>5 hours ago</span>
									<i class="fa fa-twitter blog-twiiter-icon"></i>
								</div>
								<div class="blog-twitter-block">
									<a href="">@keenthemes</a> 
									<p>At vero eos et accusamus et iusto odio.</p>
									<a href="#"><em>http://t.co/sBav7dm</em></a> 
									<span>7 hours ago</span>
									<i class="fa fa-twitter blog-twiiter-icon"></i>
								</div>
							</div>
						</div>
						<!--end col-md-3-->
					</div>
					<div class="row">
						<!-- 分页文字信息 -->
						<div class="col-md-6">
							当前第  ${pageInfo.pageNum }  页,总  ${pageInfo.pages }  页,总  ${pageInfo.total }  条记录
						</div>
						<!-- 分页条信息 -->
						<div class="col-md-6">
							<nav aria-label="Page navigation">
							  <ul class="pagination">
							  	<li><a href="${BASE_PATH }/blog?pn=1">首页</a></li>
							  	<c:if test="${pageInfo.hasPreviousPage }">
								    <li>
								      <a href="${BASE_PATH }/blog?pn=${pageInfo.pageNum-1 }" aria-label="Previous">
								        <span aria-hidden="true">&laquo;</span>
								      </a>
								    </li>
							    </c:if>
							    <c:forEach items="${pageInfo.navigatepageNums }" var="page_num">
							    	<c:if test="${page_num == pageInfo.pageNum }">
								    	<li class="active"><a href="#">${page_num }</a></li>
							    	</c:if>
							    	<c:if test="${page_num != pageInfo.pageNum }">
								    	<li><a href="${BASE_PATH }/blog?pn=${page_num }">${page_num }</a></li>
							    	</c:if>
							    </c:forEach>
							    <c:if test="${pageInfo.hasNextPage }">
								    <li>
								      <a href="${BASE_PATH }/blog?pn=${pageInfo.pageNum+1 }" aria-label="Next">
								        <span aria-hidden="true">&raquo;</span>
								      </a>
								    </li>
							    </c:if>
							    <li><a href="${BASE_PATH }/blog?pn=${pageInfo.pages }">末页</a></li>
							  </ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
		<!-- END PAGE -->    
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<div class="footer-inner">
			2013 &copy; Metronic by keenthemes.
		</div>
		<div class="footer-tools">
			<span class="go-top">
			<i class="fa fa-angle-up"></i>
			</span>
		</div>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->   
	<!--[if lt IE 9]>
	<script src="assets/plugins/respond.min.js"></script>
	<script src="assets/plugins/excanvas.min.js"></script> 
	<![endif]-->   
	<script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
	<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
	<!-- END CORE PLUGINS -->
	<script src="assets/scripts/app.js"></script>      
	<script>
		jQuery(document).ready(function() {    
		   App.init();
		});
	</script>
<!-- END JAVASCRIPTS -->
</body>