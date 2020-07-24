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
		<link type="text/css" href="${path }/forum/css/quanzi.css" rel="stylesheet"/>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" href="${path }/forum/css/pageStyle.css">
		<link rel="stylesheet" href="${path }/forum/css/footer.css">
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
		<div id="center">
			<div id="logo"><img src="${path }/forum/img/themelogo29.png" height="50px"></div>
		</div>
		<!--<div id="syqz">首页 > 圈子</div>-->
		<div id="maincenter">
			<div id="center_left" >
				<div id="center_left_top">
					<span><img src="${path }/forum/img/fire.png"  style="float: left;"/><span id="remen">热门话题</span></span>
				</div>
				<div id="center_left_body">
				<p class="clear"></p>
				<div class="center_list">
					<span class="center_list_span"><img src="${path }/forum/img/pl6.jpg" ></span>
					<a href="${path }/forum/mtxx.jsp">
						<ul style="float: left; width:750px; margin-bottom: 10px;">
						<li><span class="center_list_title">西湖美景</span>&nbsp;&nbsp;<span style="color: orange; border: 1px solid #FFDEAD;">美图</span>&nbsp;&nbsp;<span style="border-radius: 12px; background-color: #00CD00; color: white;">图片附件</span></li>
						<li style="color: gray;"><span style="float: left; margin-left: 10px;">简约者&nbsp; &nbsp;  发布与4天前</span><span style="float: right;"><i class="fa fa-commenting-o fa-lg"></i> &nbsp;120&nbsp; &nbsp; <span><i class="fa fa-share-alt fa-lg"></i>&nbsp;分享</span></span></li>
						<li class="tupian" style="height: 120px; margin-top: 35px;">
							<span><img src="${path }/forum/img/xh1.png" width="150px" height="110px" style="border-radius: 10px;"></span>
							<span><img src="${path }/forum/img/xh2.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
							<span><img src="${path }/forum/img/xh3.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
							<span><img src="${path }/forum/img/xh4.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
						</li>
						<li style="color: gray;margin-left: 10px;">不错吧，是不是很漂亮</li>
					</ul>
					</a>
					<p class="clear"></p>
				</div>
				
				<div class="center_list">
					<span class="center_list_span"><img src="${path }/forum/img/pl3.jpg"></span>
					<a href="mtxx2.html">
						<ul style="float: left; width: 750px;margin-bottom: 10px;">
						<li><span class="center_list_title">秀丽山水</span>&nbsp;&nbsp;<span style="color: orange; border: 1px solid #FFDEAD;">美图</span>&nbsp;&nbsp;<span style="border-radius: 12px; background-color: #00CD00; color: white;">图片附件</span></li>
						<li style="color: gray;"><span style="float: left; margin-left: 10px;">山水之家&nbsp; &nbsp;  发布与8天前</span><span style="float: right;"><i class="fa fa-commenting-o fa-lg"></i> &nbsp;260&nbsp; &nbsp; <span><i class="fa fa-share-alt fa-lg"></i>&nbsp;分享</span></span></li>
						<li class="tupian" style="height: 120px; margin-top: 35px;">
							<span><img src="${path }/forum/img/ssfj1.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
							<span><img src="${path }/forum/img/ssfj2.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
							<span><img src="${path }/forum/img/ssfj3.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
							<span><img src="${path }/forum/img/ssfj4.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
						</li>
						<li style="color: gray; margin-left: 10px;">陶醉在山水田园之间，人会感到无比舒适</li>
					</ul>
					</a>
					<p class="clear"></p>
				</div>
				
				<div class="center_list">
					<span class="center_list_span"><img src="${path }/forum/img/pl5.jpg" ></span>
					<a href="mtxx3.html">
						<ul style="float: left; width:750px; margin-bottom: 10px;">
						<li><span class="center_list_title">美食</span>&nbsp;&nbsp;<span style="color: orange; border: 1px solid #FFDEAD;">美图</span>&nbsp;&nbsp;<span style="border-radius: 12px; background-color: #00CD00; color: white;">图片附件</span></li>
						<li style="color: gray;"><span style="float: left; margin-left: 10px;">小吃货&nbsp; &nbsp;  发布与9天前</span><span style="float: right;"><i class="fa fa-commenting-o fa-lg"></i> &nbsp;100&nbsp; &nbsp; <span><i class="fa fa-share-alt fa-lg"></i>&nbsp;分享</span></span></li>
						<li class="tupian" style="height: 120px; margin-top: 35px;">
							<span><img src="${path }/forum/img/cqms1.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
							<span><img src="${path }/forum/img/cqms2.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
							<span><img src="${path }/forum/img/cqms3.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
							<span><img src="${path }/forum/img/cqms4.jpg" width="150px" height="110px" style="border-radius: 10px;"></span>
						</li>
				
						<li style="color: gray; margin-left: 10px;">重庆的美食不错吧</li>
					</ul>
					</a>
					<p class="clear"></p>
				</div>
				</div>
				<div>
					<div id="page" class="page_div"></div>
				</div>
			</div>
			<div id="center_right">
				<div id="center_right_top">
					<div ><img src="${path }/forum/img/quanzi.jpg" height="210px" width="220px"></div>
					<div style="color: gray;">欢迎来到我们的圈子</div>
					<div><button>欢迎加入</button></div>
				</div>
				<div style="background-color: #EDEDED;height:10px; clear: both;"></div>
				<div id="center_right_body" >
					<span style="font-weight: bold; font-size: 20px;">热门圈子</span>
					<p class="rmqzclear"></p>
					<div >
					<div class="rmqzimg"><img src="${path }/forum/img/jkdb.png"></div>
					<div style="float: left;" class="center_right_body_list">
						<ul>
							<li>极客大本营&nbsp;&nbsp;<span class="spanv">V</span></li>
							<li style="margin-left: -35px;margin-top: 10px;">2503人</li>
						</ul>
					</div>
					<span class="jiaru"><button>加入</button></span>
					</div>
					
					<p class="rmqzclear"></p>
					<div >
					<div class="rmqzimg"><img src="${path }/forum/img/ydq.png"></div>
					<div style="float: left;" class="center_right_body_list">
						<ul>
							<li>阅读圈&nbsp;&nbsp;<span class="spanv">V</span></li>
							<li style="margin-left: -5px;margin-top: 10px;">2503人</li>
						</ul>
					</div>
					<span class="jiaru"><button>加入</button></span>
					</div>
					
					<p class="rmqzclear"></p>
					<div >
					<div class="rmqzimg"><img src="${path }/forum/img/hfzs.png"></div>
					<div style="float: left;" class="center_right_body_list">
						<ul>
							<li>美丽之声&nbsp;&nbsp;<span class="spanv">V</span></li>
							<li style="margin-left: -25px;margin-top: 10px;">2503人</li>
						</ul>
					</div>
					<span class="jiaru"><button>加入</button></span>
					</div>
					
					<p class="rmqzclear"></p>
					<div >
					<div class="rmqzimg"><img src="${path }/forum/img/ztah.png"></div>
					<div style="float: left;" class="center_right_body_list">
						<ul>
							<li>主题爱好者&nbsp;&nbsp;<span class="spanv">V</span></li>
							<li style="margin-left: -40px;margin-top: 10px;">2503人</li>
						</ul>
					</div>
					<span class="jiaru"><button>加入</button></span>
					</div>
					
				</div>
			</div>
			<div style="clear: both; height: 50px;"></div>
			
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
		<script type="text/javascript" src="${path }/forum/js/paging.js"></script>
		<script>
		    //分页
		    $("#page").paging({
		        pageNo:3,  /*当前选中的是哪一页*/
		        totalPage: 15, /*共多少页*/
		        totalSize: 300,/*共多少条记录*/
		        callback: function(num) {
		            console.log(num);
		        }
		    })
		</script>
	</body>
</html>
