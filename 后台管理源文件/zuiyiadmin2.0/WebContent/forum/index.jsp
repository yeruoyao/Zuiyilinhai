<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String path=request.getContextPath();
    pageContext.setAttribute("path", path);
    %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="${path }/forum/img/3.ico" />
		<title>临海论坛</title>
		<link rel="stylesheet" href="${path }/forum/css/bootstrap.min.css" type="text/css" />
		<link type="text/css" href="${path }/forum/css/index.css" rel="stylesheet"/>
		
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" href="${path }/forum/css/footer.css">
    	<link rel="stylesheet" href="${path }/forum/css/pageStyle.css">
	</head>
	<body>
	<div style="width: 100%; height: 100%;">
		<!--top-->
		<div id="top">
			<ul>
				<li class="top_left"><a href="#">临海论坛</a></li>
				<div style="float: right;">
				<li class="top_right"><a href="${path }/LtIndexServlet1">首页</a></li>
				<li class="top_right"><a href="${path }/forum/suishoupai.jsp">随手拍</a></li>
				<li class="top_right"><a href="${path }/forum/quanzi.jsp">圈子</a></li>
				<li class="top_right"><a href="${path }/forum/send.jsp">我要发布</a></li>
				</div>
			</ul>
		</div>
		<div style="width: 100%; height: 100%;">
		<!--top-->
		
		<!--header-->
		<div id="colee_right" style="overflow:hidden;width:99%; height: 310px; margin: 45px auto; margin-bottom: 20px;">
		<table cellpadding="0" cellspacing="0" border="0">
		<tr><td id="colee_right1" valign="top" align="center">
		<table cellpadding="2" cellspacing="0" border="0">
		<tr align="center" id="mainthing">
		<td style="padding-left: 5px;"><p><img src="${path }/forum/img/lh1.jpg" height="300px" width="450px"></p></td>
		<td style="padding-left: 5px;"><p><img src="${path }/forum/img/lh2.jpg" height="300px" width="450px"></p></td>
		<td style="padding-left: 5px;"><p><img src="${path }/forum/img/lh3.jpg" height="300px" width="450px"></p></td>
		<td style="padding-left: 5px;"><p><img src="${path }/forum/img/lh4.jpg" height="300px" width="450px"></p></td>
		<td style="padding-left: 5px;"><p><img src="${path }/forum/img/lh5.jpg" height="300px" width="450px"></p></td>
		<td style="padding-left: 5px;"><p><img src="${path }/forum/img/lh6.jpg" height="300px" width="450px"></p></td>
		<td style="padding-left: 5px;"><p><img src="${path }/forum/img/lh7.jpg" height="300px" width="450px"></p></td>
		
		</tr>
		</table>
		</td>
		<td id="colee_right2" valign="top"></td>
		</tr>
		</table>
		</div>
		<!--header-->
		
		<!--center-->
		<div id="center">
			
			<h1 style="border-bottom: 1px dashed darkgray; height: 50px;margin-left: 20px; line-height: 50px; font-size: 28px;">临海论坛</h1>
			
			<div id="select">
			<!-- <select id="select_left">
				<option>默认排序</option>
				<option>最新发帖</option>
				<option>最多回帖</option>
				<option>热门</option>
			</select> -->
			<div id="select_right">
				<a>最新/</a>
				<a>最多/</a>
				<a>热门</a>
			</div>
			</div>
			<div id="center_left">
			<c:forEach items="${pageBean.sendsList }" var="t">
			<!--评论-->
				<div class="pinglun" >
				<div class="pinglun_left">
					<div class="pinglun_left_left"><img src="${path }${t.phone}" width="100px" height="100px" style="border-radius: 10px;"></div>
				<div class="pinglun_left_center">
					<ul>
					<li style="font-size: 16px; font-weight: bold;"><a href="${path }/forumServlet?action=PlText&tid=${t.tid}" >${t.title } </a></li>
					<li style="font-size: 14px;">${t.label } </li>
					<li style="color: darkgray; font-size: 14px;">发送时间：<span>${t.time }</span></li>
					</ul>
				</div>
				<div class="pinglun_left_right">
					<ul>
					<li style="margin-bottom: 10px;"><i class="fa fa-heart-o "></i>&nbsp;&nbsp;<span>2</span></li>
					<li><i class="fa fa-commenting-o"></i>&nbsp;&nbsp; <span>6</span></li>
					</ul>
				</div>
				</div>
				</div>	
					
			</c:forEach>
				<div id="page" class="page_div"></div>
			</div>
			
			<div id="center_right">
				<div id="center_right_top"><a href="${path }/forum/send.jsp"><i class="fa fa-leanpub fa-lg"></i>发布新帖</a></div>
				<div id="center_right_label">
					<p style="margin-top: 30px; font-size: 20PX;">热门标签</p>
					<div style="margin-bottom: 20px; margin-top: 10px;">
					<button>旅游</button>
					<button>乡村</button>
					<button>文化</button>
					<button>美食</button>
					<button>趣事</button>
					<button>最新</button>
					</div>
				</div>
				<div id="sousuo"><input type="text" placeholder="请输入作者/主题"><button>搜索</button></div>
				<div id="center_right_send">
					<p style="margin: 20px 0px; font-size: 30px;">板块推荐</p>
					<div style="margin-bottom: 20px; margin-top: -20px;">
					<div style="margin: 5px;"><a href="#"><img src="${path }/forum/img/lt1.jpg" width="330px" height="220px"></a></div>
					<div class="xtp"><a href="#"><img src="${path }/forum/img/lt2.jpg" height="100px"  ></a>
					<a href="#"><img src="${path }/forum/img/lt3.jpg" height="100px" style="float: right;"></a></div>
					<div class="xtp_1"><a href="#"><img src="${path }/forum/img/lt4.jpg" height="100px"></a>
					<a href="#"><img src="${path }/forum/img/lt5.jpg" height="100px"  style="float: right;"></a></div>
					
					</div>
				</div>
			</div>	
		</div>
		<!--center-->
		
		 
		<!-- 分页结束 -->
		<!--尾部-->
		<div id="footer">
			<div class="footer1">
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
		</div>
		<script src="${path }/forum/js/jquery.min.js"></script>
		<script type="text/javascript" src="${path }/forum/js/paging.js"></script>
		<script>
		var speed=30//速度数值越大速度越慢
		var colee_right2=document.getElementById("colee_right2");
		var colee_right1=document.getElementById("colee_right1");
		var colee_right=document.getElementById("colee_right");
		colee_right2.innerHTML=colee_right1.innerHTML
		function Marquee4(){
		if(colee_right.scrollLeft<=0)
		colee_right.scrollLeft+=colee_right2.offsetWidth
		else{
		colee_right.scrollLeft--
		}
		}
		var MyMar4=setInterval(Marquee4,speed)
		colee_right.onmouseover=function() {clearInterval(MyMar4)}
		colee_right.onmouseout=function() {MyMar4=setInterval(Marquee4,speed)}
		
		 //分页
    //分页
	   $("#page").paging({
			pageNo : ${pageBean.currentPage},
			totalPage : ${pageBean.totalPage},
			totalSize : ${pageBean.totalCount},
			callback : function(num) {
				// alert(num);
				//${pageContext.request.contextPath }/GoodsServlet?action=getPageData&currentPage=1
				$(window).attr('location', '${path}/forumServlet?action=getPageData&currentPage='+num);

			}
		});
		
		</script>
				

		
	</body>
		
</html>
		
	