<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String path=request.getContextPath();
    pageContext.setAttribute("path", path);
    %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>后台管理系统 </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${path }/backstage2/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${path }/backstage2/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="${path }/backstage2/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${path }/backstage2/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${path }/backstage2/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${path }/backstage2/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <div class="page">
      <!-- Main Navbar-->
        <header class="header">
        <nav class="navbar">
          <!-- Search Box-->
          <div class="search-box">
            <button class="dismiss"><i class="icon-close"></i></button>
            <form id="searchForm" action="#" role="search">
              <input type="search" placeholder="What are you looking for..." class="form-control">
            </form>
          </div>
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <!-- Navbar Header-->
              <div class="navbar-header">
                <!-- Navbar Brand --><a href="${path }/backstage2/index.jsp" class="navbar-brand d-none d-sm-inline-block">
                  <div class="brand-text d-none d-lg-inline-block"><span>后台 </span><strong>管理系统</strong></div>
                  <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
              </div>
              <!-- Navbar Menu -->
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                <!-- Search-->
                <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
                <!-- Notifications-->
                <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
                  <ul aria-labelledby="notifications" class="dropdown-menu">
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification">
                          <div class="notification-content"><i class="fa fa-envelope bg-green"></i>网站有比赛活动到期 </div>
                          <div class="notification-time"><small>4分钟前</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification">
                          <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>你收到3条信息</div>
                          <div class="notification-time"><small>5分钟前</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification">
                          <div class="notification-content"><i class="fa fa-upload bg-orange"></i>用户**申请会员</div>
                          <div class="notification-time"><small>9分钟前</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification">
                          <div class="notification-content"><i class="fa fa-twitter bg-blue">用户会员到期</i></div>
                          <div class="notification-time"><small>10分钟前</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>更多信息</strong></a></li>
                  </ul>
                </li>
                <!-- Messages                        -->
                <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>
                  <ul aria-labelledby="notifications" class="dropdown-menu">
                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
                        <div class="msg-profile"> <img src="${path }/backstage2/img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="msg-body">

                          <h3 class="h5">陈女士</h3><span>发送你给的信息</span>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
                        <div class="msg-profile"> <img src="${path }/backstage2/img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="msg-body">
                          <h3 class="h5">威廉詹姆士</h3><span>发送给你信息</span>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
                        <div class="msg-profile"> <img src="${path }/backstage2/img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="msg-body">
                          <h3 class="h5">案件一零</h3><span>发送给你信息</span>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>全部未读信息   </strong></a></li>
                  </ul>
                </li>
                <!-- Languages dropdown    -->
                <!-- Logout    -->
                <li class="nav-item"><a href="${path }/Login" class="nav-link logout"> <span class="d-none d-sm-inline">离开</span><i class="fa fa-sign-out"></i></a></li>
              </ul>
            </div>
          </div>
        </nav>
      </header>
      <div class="page-content d-flex align-items-stretch"> 
        <!-- Side Navbar -->
        <nav class="side-navbar">
          <!-- Sidebar Header-->
          <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="${path }/backstage2/img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
              <div class="title">
              <h1 class="h4">${admin.ausername }</h1>
              <p>编号：${admin.aid }</p>
            </div>
          </div>
          <!-- Sidebar Navidation Menus--><span class="heading">列表</span>
   				 <ul class="list-unstyled">
                    <li><a href="${path }/backstage2/index.jsp"> <i class="icon-home"></i>首页 </a></li>
<!--                    <li class="active"><a href="${path }/backstage2/tables.jsp"> <i class="icon-grid"></i>用户管理 </a></li>-->
<!--                    <li><a href="${path }/backstage2/forms.jsp"> <i class="icon-padnote"></i>网站信息管理 </a></li>-->
                   <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>用户信息管理 </a>
                      <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
						<li><a href="${path }/AllUserServlet">所有用户</a></li>
                        <li><a href="${path }/AllUserServlet2">普通用户</a></li>
                        <li><a href="${path }/AllUserServlet1">会员用户</a></li>
                        <li><a href="${path }/AllUserServlet3">禁用用户</a></li>
                      </ul>
                    </li>
			  		 <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"> <i class="icon-grid"></i>比赛信息管理 </a>
                      <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
						<li><a href="${path }/backstage2/ht_bsxxfb.jsp">比赛信息发布</a></li>
                        <li><a href="${path }/AllMatchServlet">比赛查询</a></li>
						<li><a href="${path }/MMessageServlet">比赛报名信息展示</a></li>
                      </ul>
                    </li>
					<li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse"> <i class="icon-grid"></i>文章信息管理 </a>
                      <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                        <li><a href="${path }/CheckAllArticleServlet">文章查询</a></li>
                        <li><a href="${path }/ArticleAllContentServlet">文章审核</a></li>
                      </ul>
                    </li>
							   <li><a href="#exampledropdownDropdown3" aria-expanded="false" data-toggle="collapse"> <i class="icon-padnote"></i>商品信息管理 </a>
                      <ul id="exampledropdownDropdown3" class="collapse list-unstyled ">
						<li><a href="${path }/backstage2/ht_sptj.jsp">商品添加</a></li>
						<li><a href="${path }/backstage2/ht_spcx.jsp">商品查询</a></li>
						<li><a href="${path }/OrderController">订单管理</a></li>
                      </ul>
                    </li>
					 <li><a href="#exampledropdownDropdown4" aria-expanded="false" data-toggle="collapse"> <i class="icon-padnote"></i>论坛管理 </a>
                      <ul id="exampledropdownDropdown4" class="collapse list-unstyled ">

						<li><a href="${path }/CheckAllSend">论坛查询</a></li>
                      </ul>
                    </li>
					<li><a href="#exampledropdownDropdown5" aria-expanded="false" data-toggle="collapse"> <i class="icon-padnote"></i>网站导航管理 </a>
                       <ul id="exampledropdownDropdown5" class="collapse list-unstyled ">

						<li><a href="${path }/backstage2/ht_wzdhxg.jsp">网站一级导航管理</a></li>
						  <li><a href="${path }/backstage2/ht_ejtpdhxg.jsp">网站二级图片导航管理</a></li>
						  <li><a href="${path }/backstage2/ht_wzsjdhxg.jsp">网站三级图片导航管理</a></li>
                      </ul>
                    </li>
					<li><a href="#exampledropdownDropdown6" aria-expanded="false" data-toggle="collapse"> <i class="icon-padnote"></i>网站内容管理 </a>
                      <ul id="exampledropdownDropdown6" class="collapse list-unstyled ">

						<li><a href="${path }/FycrController">非遗传人</a></li>
						  <li><a href="${path }/FyxmController">非遗项目</a></li>
						  <li><a href="${path }/XxmrController">乡贤名人</a></li>
						  <li><a href="${path }/TsxzController">特色小镇</a></li>
						  <li><a href="${path }/WishController">千樟许愿</a></li>
                      </ul>
                    </li>
                    <li><a href="#exampledropdownDropdown7" aria-expanded="false" data-toggle="collapse"> <i class="icon-padnote"></i>用户作品审核 </a>
                      <ul id="exampledropdownDropdown7" class="collapse list-unstyled ">

						<li><a href="${path }/WorksServlet?action=Shiwen">诗文审核</a></li>
						  <li><a href="${path }/WorksServlet?action=SheYing">摄影审核</a></li>
						  <li><a href="${path }/WorksServlet?action=HangPai">航拍审核</a></li>
                      </ul>
                    </li>
		</ul>
        </nav>
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">首页</h2>
            </div>
          </header>
          <!-- Dashboard Counts Section-->
          <section class="dashboard-counts no-padding-bottom">
            <div class="container-fluid">
              <div class="row bg-white has-shadow">
                <!-- Item -->
                <div class="col-xl-3 col-sm-6">
                  <div class="item d-flex align-items-center">
                    <div class="icon bg-violet"><i class="icon-user"></i></div>
                    <a href="${path }/AllUserServlet">
                    <div class="title"><span>用户<br>信息管理</span>
                      <div class="progress">
                        <div role="progressbar" style="width: 25%; height: 4px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet"></div>
                      </div>
                    </div>
                    </a>
                    <div class="number"><strong></strong></div>
                  </div>
                </div>
                <!-- Item -->
                <div class="col-xl-3 col-sm-6">
                  <div class="item d-flex align-items-center">
                    <div class="icon bg-red"><i class="icon-padnote"></i></div>
                    <a href="${path }/backstage2/ht_bsxxfb.jsp">
                    <div class="title"><span>比赛<br>信息管理</span>
                      <div class="progress">
                        <div role="progressbar" style="width: 70%; height: 4px;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-red"></div>
                      </div>
                    </div>
                    </a>
                    <div class="number"><strong></strong></div>
                  </div>
                </div>
                <!-- Item -->
                <div class="col-xl-3 col-sm-6">
                  <div class="item d-flex align-items-center">
                    <div class="icon bg-green"><i class="icon-bill"></i></div>
                   <a href="${path }/backstage2/ht_sptj.jsp">
                    <div class="title"><span>商品<br>信息管理</span>
                      <div class="progress">
                        <div role="progressbar" style="width: 40%; height: 4px;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                      </div>
                    </div>
                    </a>
                    <div class="number"><strong></strong></div>
                  </div>
                </div>
                <!-- Item -->
                <div class="col-xl-3 col-sm-6">
                  <div class="item d-flex align-items-center">
                    <div class="icon bg-orange"><i class="icon-check"></i></div>
                   <a href="${path }/FycrController">
                    <div class="title"><span>网站<br>内容管理</span>
                      <div class="progress">
                        <div role="progressbar" style="width: 50%; height: 4px;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-orange"></div>
                      </div>
                    </div>
                    </a>
                    <div class="number"><strong></strong></div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- Dashboard Header Section    -->
			<br>
			<br>
          <section class="projects no-padding-top">
            <div class="container-fluid">
              <!-- Project-->
              <div class="project">
                <div class="row bg-white has-shadow">
                  <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                    <div class="project-title d-flex align-items-center">
                      <div class="image has-shadow"><img src="img/photos/1.jpg" alt="..." class="img-fluid"></div>
                      <div class="text">
                        <h3 class="h4">《白云山之巅》</h3><small>用户名：奖多多</small>
                      </div>
                    </div>
                    <div class="project-date"><span class="hidden-sm-down">2019.09.27.4:24 AM</span></div>
                  </div>
                  <div class="right-col col-lg-6 d-flex align-items-center">
                    <div class="time"><i class="fa fa-clock-o"></i>2019.09.27.12:00 PM </div>
                    <div class="comments"><i class="fa fa-comment-o"></i>20</div>
                    <div class="project-progress">
                      <div class="progress">
                        <div role="progressbar" style="width: 45%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-red"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Project-->
              <div class="project">
                <div class="row bg-white has-shadow">
                  <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                    <div class="project-title d-flex align-items-center">
                      <div class="image has-shadow"><img src="img/photos/2.jpg" alt="..." class="img-fluid"></div>
                      <div class="text">
                        <h3 class="h4">《随遇而安》</h3><small>作者：发北方</small>
                      </div>
                    </div>
                    <div class="project-date"><span class="hidden-sm-down">2019.09.27.4:24 AM</span></div>
                  </div>
                  <div class="right-col col-lg-6 d-flex align-items-center">
                    <div class="time"><i class="fa fa-clock-o"></i>2019.09.27.12:00 PM </div>
                    <div class="comments"><i class="fa fa-comment-o"></i>20</div>
                    <div class="project-progress">
                      <div class="progress">
                        <div role="progressbar" style="width: 60%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Project-->
              <div class="project">
                <div class="row bg-white has-shadow">
                  <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                    <div class="project-title d-flex align-items-center">
                      <div class="image has-shadow"><img src="img/photos/3.jpg" alt="..." class="img-fluid"></div>
                      <div class="text">
                        <h3 class="h4">《蓝天白云》</h3><small>用户名：发呢发</small>
                      </div>
                    </div>
                    <div class="project-date"><span class="hidden-sm-down">2019.09.27.4:24 AM</span></div>
                  </div>
                  <div class="right-col col-lg-6 d-flex align-items-center">
                    <div class="time"><i class="fa fa-clock-o"></i>2019.09.27.12:00 PM </div>
                    <div class="comments"><i class="fa fa-comment-o"></i>20</div>
                    <div class="project-progress">
                      <div class="progress">
                        <div role="progressbar" style="width: 50%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Project-->
              <div class="project">
                <div class="row bg-white has-shadow">
                  <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                    <div class="project-title d-flex align-items-center">
                      <div class="image has-shadow"><img src="img/photos/4.jpg" alt="..." class="img-fluid"></div>
                      <div class="text">
                        <h3 class="h4">《牛头山水库》</h3><small>作者：丹尼斯</small>
                      </div>
                    </div>
                    <div class="project-date"><span class="hidden-sm-down">2019.09.27.4:24 AM</span></div>
                  </div>
                  <div class="right-col col-lg-6 d-flex align-items-center">
                    <div class="time"><i class="fa fa-clock-o"></i>2019.09.27.12:00 PM </div>
                    <div class="comments"><i class="fa fa-comment-o"></i>20</div>
                    <div class="project-progress">
                      <div class="progress">
                        <div role="progressbar" style="width: 50%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-orange"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- Client Section-->
          <section class="feeds no-padding-top">
            <div class="container-fluid">
              <div class="row">
                <!-- Trending Articles-->
               <div class="col-lg-6">
                  <div class="articles card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard4" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>关闭</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>离开</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">
                      <h2 class="h3">新用户注册信息  </h2>
                      <div class="badge badge-rounded bg-green">6 新消息</div>
                    </div>
                    <div class="card-body no-padding">
                      <div class="item d-flex align-items-center">
                        <div class="image"><img src="img/photos/t1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="text"><a href="#">
                            <h3 class="h5">用户名：非无法</h3></a><small>注册邮箱：123456@qq.com   </small></div>
                      </div>
                      <div class="item d-flex align-items-center">
                        <div class="image"><img src="img/photos/t2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="text"><a href="#">
                            <h3 class="h5">用户名：过热和</h3></a><small>注册邮箱：1234567@qq.com </small></div>
                      </div>
                      <div class="item d-flex align-items-center">
                        <div class="image"><img src="img/photos/t3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="text"><a href="#">
                            <h3 class="h5">用户名：隔热层</h3></a><small>注册邮箱：1234567@qq.com</small></div>
                      </div>
                      <div class="item d-flex align-items-center">
                        <div class="image"><img src="img/photos/t4.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="text"><a href="#">
                            <h3 class="h5">用户名：徐东升</h3></a><small>注册邮箱：1234567@qq.com </small></div>
                      </div>
                      <div class="item d-flex align-items-center">
                        <div class="image"><img src="img/photos/t5.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="text"><a href="#">
                            <h3 class="h5">用户名：世界风</h3></a><small>注册邮箱：1234567@qq.com </small></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Check List -->
                <div class="col-lg-6">
                  <div class="checklist card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard5" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>关闭</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>离开</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">           
                      <h2 class="h3">用户表类</h2>
                    </div>
                    <div class="card-body no-padding">
                      <div class="item d-flex">
                        <input type="checkbox" id="input-1" name="input-1" class="checkbox-template">
                        <label for="input-1">用户基本信息表</label>
                      </div>
                      <div class="item d-flex">
                        <input type="checkbox" id="input-2" name="input-2" class="checkbox-template">
                        <label for="input-2">用户状态表</label>
                      </div>
                      <div class="item d-flex">
                        <input type="checkbox" id="input-3" name="input-3" class="checkbox-template">
                        <label for="input-3">用户论坛统计表</label>
                      </div>
                      <div class="item d-flex">
                        <input type="checkbox" id="input-4" name="input-4" class="checkbox-template">
                        <label for="input-4">用户发布作品表</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- Updates Section                                                -->
         
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="${path }/backstage2/vendor/jquery/jquery.min.js"></script>
    <script src="${path }/backstage2/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="${path }/backstage2/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="${path }/backstage2/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="${path }/backstage2/vendor/chart.js/Chart.min.js"></script>
    <script src="${path }/backstage2/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="${path }/backstage2/js/charts-home.js"></script>
    <!-- Main File-->
    <script src="${path }/backstage2/js/front.js"></script>
  </body>
</html>