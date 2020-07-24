<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <% String path=request.getContextPath();
    pageContext.setAttribute("path", path);
    %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="${path }/forum/css/suishoupai.css" rel="stylesheet"  type="text/css"/>
		<link rel="stylesheet" href="css/ft-carousel.css" />
				<link rel="shortcut icon" href="${path }/forum/img/3.ico" />
		<link rel="stylesheet" href="${path }/forum/css/bootstrap.min.css" type="text/css" />
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" href="${path }/forum/css/footer.css">
		<style>
		.example {width: 100%;height:400px;font-size: 40px;text-align: center;margin: 40px auto;margin-bottom:0px;background-color: #464576;}
		.carousel-item{line-height: 336px;color: #fff;font-family:  Arial Black}
		</style>

	</head>
	<body>
		
		<!--top-->
		<div id="top">
			<ul>
				<li class="top_left"><a href="#">临海论坛</a></li>
				<div style="float: right;">
			<li class="top_right"><a href="${path }/forum/index.jsp">首页</a></li>
				<li class="top_right"><a href="${path }/forum/suishoupai.jsp">随手拍</a></li>
				<li class="top_right"><a href="${path }/forum/quanzi.jsp">圈子</a></li>
				<li class="top_right"><a href="${path }/forum/send.jsp">我要发布</a></li>
				</div>
			</ul>
		</div>
		<!--top-->
		
		<div class="example">
			<div class="ft-carousel" id="carousel_1">
				<ul class="carousel-inner">
					<li class="carousel-item"><img src="${path }/forum/img/a1.jpg" width: 1369px;height:300px/></li>
					<li class="carousel-item"><img src="${path }/forum/img/a2.jpg" width: 1369px;height:300px/></li>
					<li class="carousel-item"><img src="${path }/forum/img/a3.jpg" width: 1369px;height:300px/></li>
					<li class="carousel-item"><img src="${path }/forum/img/a4.jpg" width: 1369px;height:300px/></li>
					<li class="carousel-item"><img src="${path }/forum/img/a5.jpg" width: 1369px;height:300px/></li>
					<li class="carousel-item"><img src="${path }/forum/img/a6.jpg" width: 1369px;height:300px/></li>
				</ul>
			</div>
		</div>
		<div style="width: 100%; height:100%; background-color: #EDEDED;">
		<!--随手拍专栏-->
		<div id="center_top">
			<p>&nbsp;</p>
			
			<p style="font-size:28px; margin-left: 20px; margin-top: -25px;">随手拍专栏</p>
			<div style="width: 1200px;">
			<ul>
				<li><a href="#"><img src="${path }/forum/img/lt2.jpg" width="380px" height="200px" style="margin-left: 15px;"></a></li>
				<li><a href="#"><img src="${path }/forum/img/lt3.jpg" width="380px" height="200px" style="margin-left: 20px;"></a></li>
				<li><a href="#"><img src="${path }/forum/img/lt4.jpg" width="380px" height="200px" style="margin-left: 25px;"></a></li>
			</ul>
		</div>
		</div>
		<!--随手拍专栏-->
		
		<!--随手拍达人-->
		
	
		
			<div id="center_daren">
					<p style="font-size:28px;margin-left: 20px; padding-top: 10px;">随手拍达人</p>
				<div class="daren"  >
					<img src="${path }/forum/img/pl2.jpg" />
					<ul>
						<li class="darenming">随风没吹</li>
						<li>随手拍:&nbsp;<span>360</span></li>
						<li ><a style="color: lightskyblue;">查看Ta的作品</a></li>
					</ul>
				</div>
				<div class="daren"  >
					<img src="${path }/forum/img/pl1.jpg" />
					<ul>
						<li class="darenming">野花野菜</li>
						<li>随手拍:&nbsp;<span>212</span></li>
						<li ><a style="color: lightskyblue;">查看Ta的作品</a></li>
					</ul>
				</div>
			
				<div class="daren"  >
					<img src="${path }/forum/img/pl3.jpg"  />
					<ul >
						<li class="darenming">阿达菜</li>
						<li>随手拍:&nbsp;<span>152</span></li>
						<li ><a style="color: lightskyblue;">查看Ta的作品</a></li>
					</ul>
				</div>
			
				<div class="daren"  >
					<img src="${path }/forum/img/pl4.jpg"  />
					<ul >
						<li class="darenming">山沟花野菜</li>
						<li>随手拍:&nbsp;<span>202</span></li>
						<li ><a style="color: lightskyblue;">查看Ta的作品</a></li>
					</ul>
				</div>
				<div class="daren"  >
					<img src="${path }/forum/img/pl5.jpg"  />
					<ul >
						<li class="darenming">慕容大师</li>
						<li>随手拍:&nbsp;<span>12</span></li>
						<li ><a style="color: lightskyblue;">查看Ta的作品</a></li>
					</ul>
				</div>
				<div class="daren"  >
					<img src="${path }/forum/img/pl6.jpg" />
					<ul ">
						<li class="darenming">啊嘎嘎就</li>
						<li>随手拍:&nbsp;<span>212</span></li>
						<li ><a style="color: lightskyblue;">查看Ta的作品</a></li>
					</ul>
				</div>
				<div class="daren"  >
					<img src="${path }/forum/img/pl7.jpg" />
					<ul >
						<li class="darenming">富贵花</li>
						<li>随手拍:&nbsp;<span>62</span></li>
						<li ><a style="color: lightskyblue;">查看Ta的作品</a></li>
					</ul>
				</div>
				<div class="daren"  >
					<img src="${path }/forum/img/pl8.jpg"  />
					<ul >
						<li class="darenming">净水机时</li>
						<li>随手拍:&nbsp;<span>12</span></li>
						<li ><a style="color: lightskyblue;">查看Ta的作品</a></li>
					</ul>
				</div>	
			</div>
		<!--随手拍达人-->
	<div id="center_body_footer">
		<p style="font-size:28px;margin-left: 20px;padding-top: 10px;">随手拍作品</p>
		<div class="center_bottom_zuoping">
				<ul>
					<li><img src="${path }/forum/img/fj1.jpg" ></li>
					<li><span class="zp_left">江南长城</span> <span class="zp_right" >42&nbsp;<i class="fa fa-heart-o"></i></span></li>
				</ul>
		</div>
		<div class="center_bottom_zuoping">
				<ul>
					<li><img src="${path }/forum/img/fj2.jpg" ></li>
					<li><span class="zp_left">杜桥水库</span> <span class="zp_right" >42&nbsp;<i class="fa fa-heart-o"></i></span></li>
				</ul>
		</div>
		<div class="center_bottom_zuoping">
				<ul>
					<li><img src="${path }/forum/img/fj3.jpg" ></li>
					<li><span class="zp_left">瓮城城墙</span> <span class="zp_right" >42&nbsp;<i class="fa fa-heart-o"></i></span></li>
				</ul>
		</div>
		
		<div class="center_bottom_zuoping">
				<ul>
					<li><img src="${path }/forum/img/fj4.jpg" ></li>
					<li><span class="zp_left">揽胜门</span> <span class="zp_right" >42&nbsp;<i class="fa fa-heart-o"></i></span></li>
				</ul>
		</div>
		
	</div>
		
		
		<!--尾部-->
	
		<div id="footer" >
			<div class="footer1" >
		  <div class="footer_1">
			    <p style="padding-top: 40px; padding-left: 10px;">相关网站：</p><br>
			  			<p style=" padding-left: 10px;">临海新闻网:
			  			 <a href=" http://www.lhnews.com.cn/" target="_blank"> http://www.lhnews.com.cn/</p></a><br />	
						 <p style=" padding-left: 10px;">临海门户网站:
			  				<a href="http://www.linhai.gov.cn/" target="_blank"> http://www.linhai.gov.cn/</p></a><br />
			  			 
			  			 <p style=" padding-left: 20px;">临海在线论坛：
			  			 <a href="https://www.lh168.net/" target="_blank"> http://www.lhnews.com.cn/</p></a>
			  </div>
		  <div class="footer_2">
			  <div class="footer_2_1">
				 <p style="color: white; padding-top: 20px;">扫码关注我们的微信公众号：</p>
				   <p style="color: white;">联系方式：</p>
				     <p style="color: white;">182-5867-4175</p><br />   </div>
			   <div class="footer_2_2">
				  <img src="${path }/forum/img/gzh.jpg" width="100px"  height="100px" style="padding-top: 10px;" />
			   </div>
		  </div>
		  </div>
		</div>
	
<script src="${path }/forum/js/jquery.min.js"></script>
<script src="${path }/forum/js/ft-carousel.min.js"></script>
<script type="text/javascript">
	$("#carousel_1").FtCarousel();

	$("#carousel_2").FtCarousel({
		index: 1,
		auto: false
	});

	$("#carousel_3").FtCarousel({
		index: 0,
		auto: true,
		time: 1000,
		indicators: false,
		buttons: true
	});
</script>
	</body>
</html>
