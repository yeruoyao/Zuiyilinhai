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
		<title>发表内容</title>
		<link href="${path }/forum/css/send.css" type="text/css"  rel="stylesheet"/>
	</head>
	<body>
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
		<div  id="center">
			<h1>发表内容</h1>
		<!--发布内容-->
		<div id="send_center_left">
			<form action="${pageContext.request.contextPath }/sendServlet" method="post" enctype="multipart/form-data">
				标题：<input type="text" placeholder="请给输入的内容写一个合适的标题"  id="theme" name="title"/><br>
				简述:<input type="text" placeholder="请简述相关事件" id="jianshu" name="label"><br />
				照片：<input type="file" value="浏览。。。"  id="phone" name="image"/><br />
				<span>编辑内容：</span><br><textarea placeholder="请写一些东西，例如文章，趣事等。。。。。" cols="95" rows="13" name="content"></textarea><br />
				<input type="submit" value="发送" id="submit" />
			</form>
		</div>
		<div id="send_center_right">
			<div id="center_right_label">
					<p style="margin-top: 20px;">热门标签</p>
					<div style="margin-bottom: 20px; margin-top: 5px;">
					<button>旅游</button>
					<button>乡村</button>
					<button>文化</button>
					<button>美食</button>
					<button>趣事</button>
					<button>最新</button>
					</div>
				</div>
				<div id="sousuo"><input type="text" placeholder="请输入作者/主题"><button>搜索</button></div>
				<!--<div id="center_right_send">
					<p style="margin-top: 30px;">板块推荐</p>
					<div style="margin-bottom: 20px; margin-top: -10px;">
					<div style="margin: 10px;"><a href="#"><img src="img/lt1.jpg" width="470px" height="250px"></a></div>
					<div style="float: left;margin-left: 10px;"><a href="#"><img src="img/lt2.jpg" width="230px" height="120px"></a></div>
					<div style="float: right; margin-left: 10px;"><a href="#"><img src="img/lt3.jpg" width="230px" height="120px"></a></div>
					<div style="float: left;margin-left: 10px;"><a href="#"><img src="img/lt4.jpg" width="230px" height="120px"></a></div>
					<div style="float: right; margin-left: 10px;"><a href="#"><img src="img/lt5.jpg" width="230px" height="120px"></a></div>
					
					</div>-->
				</div>
		</div>
		</div>
		<!--发布内容-->
	</body>
</html>
