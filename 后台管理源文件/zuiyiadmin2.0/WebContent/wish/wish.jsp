<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%-- <%
List list=new ArrayList();
list.add("加油");
list.add("天天向上");
pageContext.setAttribute("list", list);
%> --%>
<% 
String path =request.getContextPath();
pageContext.setAttribute("path", path);
%>
<!DOCTYPE html>
<html>
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <title>千樟许愿</title> 
  <link rel="shortcut icon" href="${path }/wish/images/3.ico" />
  <style>
	*{
		margin: 0px;
		padding: 0px;
	}
	.box{
		width: 1400px;
		height:700px;
		margin: 0 auto;
		padding: 0 auto;	
		background: url(${path }/wish/images/shu2.png) no-repeat;
	}
	body{
		margin: 0px auto;			
		font-family: '微软雅黑', sans-serif;	
		font-size: 16px;
		position: relative;
		top: 0px;
		left: 0px;
		bottom: 0px;
		width: 1400px;
		right: 0px;
	}
	.item {
		width: 100px;
		height: 300px;
		line-height: 30px;
		-webkit-border-bottom-left-radius: 20px 500px;
		-webkit-border-bottom-right-radius: 500px 30px;
		-webkit-border-top-right-radius: 5px 100px;
		-moz-border-bottom-left-radius: 20px 500px;
		-moz-border-bottom-right-radius: 500px 30px;
		-moz-border-top-right-radius: 5px 100px;
		box-shadow: 0 2px 10px 1px rgba(0, 0, 0, 0.2);
		-webkit-box-shadow: 0 2px 10px 1px rgba(0, 0, 0, 0.2);
		-moz-box-shadow: 0 2px 10px 1px rgba(0, 0, 0, 0.2);
	}
	#container p{
		height:200px;
		margin: 30px 25px;
		overflow: hidden;
		writing-mode:horizontal-tb; 
        writing-mode:vertical-rl; 
		writing-mode: tb-rl;
		font-size: 15px;
		word-wrap: break-word;
		line-height: 2;
	}
	#container a{
		text-decoration: none;
		color: white;
		position: relative;
		left: 60px;
		color: white;
		padding-bottom: 10px;
		font-size: 14px;
	}
	#input{
		border: 0;
		border-radius: 5px;
		display:block;
		height: 30px;
		padding: 0 1em;
		line-height: 30px;
		width: 300px;
		background-color: palegoldenrod;
		margin-top: 150px;
		margin-left: 550px;
		margin-right: auto;
		font-size: 20px;
	}
		#submit{
		border: 0;
		border-radius: 5px;
		display:block;
		height: 30px;
		padding: 0 1em;
		line-height: 30px;
		width: 100px;
		background-color: palegoldenrod;
		margin-top: -30px;
		margin-left: 900px;
		margin-right: auto;
		font-size: 20px;
		color: gray;
	}
  </style> 
  <script src="${path }/wish/jquery-3.1.1.min.js"></script>
 </head> 
 <body> 
 <div class="box">
  <div id="container" style="width: 1300px; margin-left:25px;"> 
  </div> 
  <form action="${pageContext.request.contextPath }/WishInsertServlet" method="post">
  <input id="input" type="text" placeholder="许个愿吧!" name="wishtext"/>  
  <input type="submit" value="提交" id="submit">
  </form>
  </div>
  
  <div style="display: none;">
  <c:forEach items="${list }" var="t">
  <div name="content">${t.wishtext }</div>
  </c:forEach>
  	
  </div>
  <script>
  (function ($) {
	
	var container;
	
	// 可选颜色
	var colors = ['#0faf71', '#cc7112', '#216c79','#f05750', '#FFCC00'];
	
	//创建许愿页
	var createItem = function(text){
		var color = colors[parseInt(Math.random() * 5, 10)]
		$('<div class="item"><p>'+ text +'</p><a href="#">关闭</a></div>').css({ 'background': color }).appendTo(container).drag();
	};
	
	// 定义拖拽函数
    $.fn.drag = function () {
		
        var $this = $(this);
        var parent = $this.parent();
		
        var pw = parent.width();
        var ph = parent.height();
        var thisWidth = $this.width() + parseInt($this.css('padding-left'), 10) + parseInt($this.css('padding-right'), 10);
        var thisHeight = $this.height() + parseInt($this.css('padding-top'), 10) + parseInt($this.css('padding-bottom'), 10);

        var x, y, positionX, positionY;
        var isDown = false; 

        var randY = parseInt(Math.random() * (ph - thisHeight), 10);
        var randX = parseInt(Math.random() * (pw - thisWidth), 10);


        parent.css({
            "position": "relative",
            "overflow": "hidden"
        });
		
        $this.css({
            "cursor": "move",
            "position": "absolute"
        }).css({
            top: randY,
            left: randX
        }).mousedown(function (e) {
            parent.children().css({
                "zIndex": "0"
            });
            $this.css({
                "zIndex": "1"
            });
            isDown = true;
            x = e.pageX;
            y = e.pageY;
            positionX = $this.position().left;
            positionY = $this.position().top;
            return false;
        });		
        $(document).mouseup(function (e) {
            isDown = false;
        }).mousemove(function (e) {
            var xPage = e.pageX;
            var moveX = positionX + xPage - x;
            var yPage = e.pageY;
            var moveY = positionY + yPage - y;
            if (isDown == true) {
                $this.css({
                    "left": moveX,
                    "top": moveY
                });
            } else {
                return;
            }
            if (moveX < 0) {
                $this.css({
                    "left": "0"
                });
            }
            if (moveX > (pw - thisWidth)) {
                $this.css({
                    "left": pw - thisWidth
                });
            }
            if (moveY < 0) {
                $this.css({
                    "top": "0"
                });
            }
            if (moveY > (ph - thisHeight)) {
                $this.css({
                    "top": ph - thisHeight
                });
            }
        });
    };
	
	// 初始化
	var init = function () {
		
		container = $('#container');
		
		// 绑定关闭事件
		container.on('click','a',function () {
			var shanchu1=$(this).parent().text();
			var length=shanchu1.length;
			var shanchu =shanchu1.substring(0,length-2);
			
			window.location.href="${path}/deleteWishServlet?shanchu="+shanchu;
		}).height($(window).height() -204);

		var tests = [];
		var content=document.getElementsByName("content");
	
		for (var i=0;i<content.length;i++) {
			tests.unshift(content[i].innerHTML);
		}
		$.each(tests, function (i,v) {
			createItem(v);
		});
		
		// 绑定输入框
		$('#input').keydown(function (e) {
			var $this = $(this);
			if(e.keyCode == '13') {
				var value = $this.val();
				if(value) {
					createItem(value);
					$this.val('');
				}
			}
		});
		
	};
	$(function() {
		init();
	});
	
})(jQuery);
  </script> 
 </body>
</html>