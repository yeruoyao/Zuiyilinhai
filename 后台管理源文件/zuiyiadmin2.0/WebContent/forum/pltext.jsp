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
		<!--<link type="text/css" href="css/pltext.css" rel="stylesheet"/>-->
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${path }/forum/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${path }/forum/css/pltext1.css">

	</head>
	<body>
		<div>
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
		<!--top-->
		<div style="width: 1200px; margin: 0 auto;overflow: hidden; margin-top: 10px;" >
		<div style="float: left; padding-bottom: 20px; width: 700px;" id="center_left">
		<div style="width: 700px; margin-left: 50px;">
		<div id="top_top" style="margin-top: -10px;">
			<!--<span style="float: left; margin-left: -15px;"><img src="img/themelogo29.png" width="200px"></span>-->
		</div>
		</div>
		<div style="width: 500px; margin-left: 10px; color: gray; margin-top: 50px; font-size: 16px;"><a href="${path }/LtIndexServlet1" style="color: #000000;">首页</a> >  ${sendPing.send.title }</div>

				<div style="color: lightslategray; font-size: 25px; margin-top: 10px; margin-left: 10px;"> ${sendPing.send.title }</div>
				<div id="logo_text">
					<span><i class="fa fa-commenting-o"></i>&nbsp;${sendPing.send.sum }</span>
					<span><img src="${path }/forum/img/aixin.png" id="aximage" width="40px" onclick="guanzhu()" style="margin-bottom: 5px;"><span id="guanzhuliang">${sendPing.send.focuse }</span></span>
				</div>
				<div style="margin-top: 10px;margin-left: 10px;">
					<span style="float: left;"><img src="${path }/forum/img/pl1.jpg" width="100px" height="100px" style="border-radius: 10px;"></span>
					<ul id="zuozhe">
						<li><span style="float: left;"> ${sendPing.send.name }<span style="margin-left: 40px;">来自于：&nbsp;浏览器</span></span> <span style="margin-left: 50px;">只看该作者&nbsp;&nbsp;楼主</span></li>
						<li style="margin-top: 10px;"> ${sendPing.send.time }</li>
					</ul>
				</div>
				<div style="clear: both;"></div>
				<p>&nbsp;</p>
				<div >
					<ul>
						<li id="text" style="font-size: 18px;margin: 0 auto;"> ${sendPing.send.label}</li>
					</ul>
					<!--<div style="clear: both;"></div>-->
					<p>&nbsp;</p>
					<h1 style="margin-left: 20px; font-size: 25px; margin-top: 20px;"> ${sendPing.send.title }</h1>
					<div style="margin-left: 140px; "><img src="${path }${sendPing.send.image }"height="500px" width="500px"></div>
					
					<div style="width: 700px; margin: 0 auto; font-size: 21px; margin-top: 20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${sendPing.send.content }</div>
				</div>
			<div id="pinglun">
				<form action="${path }/SpinglunServlet?tid=${sendPing.send.tid}" method="post">
					<textarea cols="100" rows="5px" placeholder="来说两句" style="width: 600px;" name="context"></textarea><br />
					<input type="submit" value="评论"/>
				</form>
			</div>
			
			<div id="pinglun2">
				<div style="font-size: 25px; margin-left: 15px; border-bottom: 1px solid darkgray; height: 50px; line-height: 50px; width: 600px;"> 评论</div>
				<c:forEach items="${sendPing.list}" var="t">
				<div class="pinglunren">
					<img src="${path }${t.image}" style="border-radius: 10px; float: left;" width="100px" height="100px" />
					<ul style="float: left; list-style: none;">
						<li style="color: deepskyblue; margin-top: 10px;">${t.username }&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: darkgray;">炉火纯青 发布于 <span>${t.time }</span>  来自浏览器</span></li>
						<li>${t.context }</li>
					</ul>
				</div>
				</c:forEach>
				
				
			</div>
			</div>
			
			<div id="center_right" >
				<div id="center_right_top"><a href="${path }/forum/send.jsp"><i class="fa fa-leanpub fa-lg"></i>发布新帖</a></div>
				<div id="center_right_label">
					<p style="margin-top: 30px;">热门标签</p>
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
			<div id="center_right_body">
					<span id="remenqz">热门圈子</span>
					<p style="clear: both; border-bottom: 1px solid lightgray;height: 10px;width: 98%; margin: 0 auto; overflow: hidden;"></p>
					<div class="xingqu">
					<div  class="rmimg"><img src="${path }/forum/img/jkdb.png"style="border-radius: 10px;" width="70px" height="70px"></div>
					<div  class="center_right_body_list">
						<ul>
							<li>极客大本营&nbsp;&nbsp;<span class="logov">V</span></li>
							<li  class="join">2503人</li>
						</ul>
					</div>
					<span class="rmbutton"><button>加入</button></span>
					</div>
					
					<p style="clear: both; height: 10px;width: 98%; margin: 0 auto; overflow: hidden;"></p>
					<div class="xingqu">
					<div class="rmimg"><img src="${path }/forum/img/ydq.png"style="border-radius: 10px;" width="70px" height="70px"></div>
					<div  class="center_right_body_list">
						<ul>
							<li>阅读圈&nbsp;&nbsp;<span  class="logov">V</span></li>
							<li class="join">2503人</li>
						</ul>
					</div>
					<span class="rmbutton"><button>加入</button></span>
					</div>
					
					<p style="clear: both;height: 10px;width: 98%; margin: 0 auto; overflow: hidden;"></p>
					<div class="xingqu">
					<div class="rmimg"><img src="${path }/forum/img/hfzs.png"style="border-radius: 10px;" width="70px" height="70px"></div>
					<div style="float: left;" class="center_right_body_list">
						<ul>
							<li>美丽之声&nbsp;&nbsp;<span class="logov">V</span></li>
							<li class="join">2503人</li>
						</ul>
					</div>
					<span class="rmbutton"><button>加入</button></span>
					</div>
					
					<p style="clear: both;height: 10px;width: 98%; margin: 0 auto; overflow: hidden;"></p>
					<div class="xingqu">
					<div class="rmimg"><img src="${path }/forum/img/ztah.png"style="border-radius: 10px;" width="70px" height="70px"></div>
					<div class="center_right_body_list">
						<ul>
							<li>主题爱好者&nbsp;&nbsp;<span  class="logov">V</span></li>
							<li class="join">2503人</li>
						</ul>
					</div>
					<span class="rmbutton"><button>加入</button></span>
					</div>
					
				</div>
			</div>
		</div>
		</div>
		<script type="text/javascript" src="${path }/forum/js/jquery.min.js"></script>
		<script type="text/javascript" src="${path }/forum/js/jquery.comment.js" ></script>
		<script type="text/javascript" src="${path }/forum/js/bootstrap.min.js"></script>
	<script>
		function guanzhu(){
			var image=document.getElementById("aximage").src;
			var num=document.getElementById("guanzhuliang").innerText;
			if(image.match("img/aixin.png")){	
				num++;
				document.getElementById("guanzhuliang").innerText=num;
				/* document.getElementById("aximage").src="${path }/forum/img/aixin2.png"; */
				window.location.href="${path}/focuseServlet?tid=${sendPing.send.tid }&focuse="+num;
			}else{
				document.getElementById("aximage").src="${path }/forum/img/aixin.png";
				num--;
				document.getElementById("guanzhuliang").innerText=num;
				window.location.href="${path}/focuseServlet?tid=${sendPing.send.tid }&focuse="+num;
			}
			
			
		}
	</script>
	</body>
</html>

