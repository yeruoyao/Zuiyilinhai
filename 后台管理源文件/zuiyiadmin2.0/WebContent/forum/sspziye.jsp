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
		<title>随手拍</title>
		<link rel="stylesheet" type="text/css" href="${path }/forum/css/sspziye.css"/>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		
		<style>
	
	.jssora05l, .jssora05r {
		display: block;
		position: absolute;
		/* size of arrow element */
		width: 40px;
		height: 40px;
		cursor: pointer;
		background: url('${path }/forum/img/a17.png') no-repeat;
		overflow: hidden;
	}
	.jssora05l { background-position: -10px -40px; }
	.jssora05r { background-position: -70px -40px; }
	.jssora05l:hover { background-position: -130px -40px; }
	.jssora05r:hover { background-position: -190px -40px; }
	.jssora05l.jssora05ldn { background-position: -250px -40px; }
	.jssora05r.jssora05rdn { background-position: -310px -40px; }
	.jssora05l.jssora05lds { background-position: -10px -40px; opacity: .3; pointer-events: none; }
	.jssora05r.jssora05rds { background-position: -70px -40px; opacity: .3; pointer-events: none; }
	/* jssor slider thumbnail navigator skin 01 css *//*.jssort01-99-66 .p            (normal).jssort01-99-66 .p:hover      (normal mouseover).jssort01-99-66 .p.pav        (active).jssort01-99-66 .p.pdn        (mousedown)*/.jssort01-99-66 .p {    position: absolute;    top: 0;    left: 0;    width: 99px;    height: 66px;}.jssort01-99-66 .t {    position: absolute;    top: 0;    left: 0;    width: 100%;    height: 100%;    border: none;}.jssort01-99-66 .w {    position: absolute;    top: 0px;    left: 0px;    width: 100%;    height: 100%;}.jssort01-99-66 .c {    position: absolute;    top: 0px;    left: 0px;    width: 95px;    height: 62px;    border: #000 2px solid;    box-sizing: content-box;    background: url('img/t01.png') -800px -800px no-repeat;    _background: none;}.jssort01-99-66 .pav .c {    top: 2px;    _top: 0px;    left: 2px;    _left: 0px;    width: 95px;    height: 62px;    border: #000 0px solid;    _border: #fff 2px solid;    background-position: 50% 50%;}.jssort01-99-66 .p:hover .c {    top: 0px;    left: 0px;    width: 97px;    height: 64px;    border: #fff 1px solid;    background-position: 50% 50%;}.jssort01-99-66 .p.pdn .c {    background-position: 50% 50%;    width: 95px;    height: 62px;    border: #000 2px solid;}* html .jssort01-99-66 .c, * html .jssort01-99-66 .pdn .c, * html .jssort01-99-66 .pav .c {    /* ie quirks mode adjust */    width /**/: 99px;    height /**/: 66px;}
</style>
	</head>
	<body>
		<div style="width: 1500px;">
		<div id="center">
			<div id="center_top"><h1 style="background-color: white;">个人空间图片</h1></div>
			
			<div style="margin-top: 20px; margin-bottom: 20px; overflow: hidden;">
				<div id="center_top_left">
					<span style="margin-left: 10px;">爱好：&nbsp;拍照</span><span>分类：人物照</span>
				</div>
				<div id="center_top_right">
					<span><i class="fa fa-user-circle"></i>&nbsp;230</span>
					<span><i class="fa fa-commenting-o"></i>&nbsp;120</span>
					<span><i class="fa fa-heart-o"></i>&nbsp;99</span>
					<span><i class="fa fa-mail-forward"></i>&nbsp;6</span>
				</div>
			</div>
			
			<div id="center_body">
			<div id="jssor_1" style="position: relative; margin: 0 auto; top: 20px; left: 0px; width: 960px; height: 480px; overflow: hidden; visibility: hidden; background-color: #24262e;">
			<!-- Loading Screen -->
			<div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
				<div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
				<div style="position:absolute;display:block;background:url('${path }/forum/img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
			</div>
			<div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 240px; width: 720px; height: 480px; overflow: hidden;">
				<div data-p="150.00">
					<img data-u="image" src="${path }/forum/img/a1.jpg" />
					<img data-u="thumb" src="${path }/forum/img/a1.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/a2.jpg" />
					<img data-u="thumb" src="${path }/forum/img/a2.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/a3.jpg" />
					<img data-u="thumb" src="${path }/forum/img/a3.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/a4.jpg" />
					<img data-u="thumb" src="${path }/forum/img/a4.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/a5.jpg" />
					<img data-u="thumb" src="${path }/forum/img/a5.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/a6.jpg" />
					<img data-u="thumb" src="${path }/forum/img/a6.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/lt1.jpg" />
					<img data-u="thumb" src="${path }/forum/img/lt1.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/lt2.jpg" />
					<img data-u="thumb" src="${path }/forum/img/lt2.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/lt3.jpg" />
					<img data-u="thumb" src="${path }/forum/img/lt3.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/lt4.jpg" />
					<img data-u="thumb" src="${path }/forum/img/lt4.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/lt5.jpg" />
					<img data-u="thumb" src="${path }/forum/img/lt5.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/lt6.jpg" />
					<img data-u="thumb" src="${path }/forum/img/lt6.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/lt7.jpg" />
					<img data-u="thumb" src="${path }/forum/img/lt7.jpg" />
				</div>
				<div data-p="150.00" style="display: none;">
					<img data-u="image" src="${path }/forum/img/fj1.jpg" />
					<img data-u="thumb" src="${path }/forum/img/fj1.jpg" />
				</div>
				<a data-u="any" href="#" style="display:none">Image Gallery with Vertical Thumbnail</a>
			</div>
			<!-- Thumbnail Navigator -->
			<div data-u="thumbnavigator" class="jssort01-99-66" style="position:absolute;left:0px;top:0px;width:240px;height:480px;" data-autocenter="2">
				<!-- Thumbnail Item Skin Begin -->
				<div data-u="slides" style="cursor: default;">
					<div data-u="prototype" class="p">
						<div class="w">
							<div data-u="thumbnailtemplate" class="t"></div>
						</div>
						<div class="c"></div>
					</div>
				</div>
				<!-- Thumbnail Item Skin End -->
			</div>
			</div>
			</div>
			
			<div id="center_body_bottom">
				<span><img src="${path }/forum/img/pl2.jpg" width="100px" height="100px" style="border-radius: 10px;"></span>
				<span style="color: deepskyblue;">风吹稻香</span>
				<span>昨天&nbsp;23:00</span>
			</div>
			
			<div>
				<form id="center_body_text" >
					<textarea cols="135" rows="10" style="width: 950px"></textarea>
					<input type="submit" value="点击回复" />
				</form>	
			</div>
			<div style="clear: both;"></div>
			<div id="pinglun">
				<div style="font-size: 25px; margin-left: 15px; border-bottom: 1px solid darkgray; height: 50px; line-height: 50px;"> 评论</div>
				<div class="pinglunren">
					<img src="${path }/forum/img/pl7.jpg" style="border-radius: 10px; float: left;" width="100px" height="100px" />
					<ul style="float: left; list-style: none;">
						<li style="color: deepskyblue; margin-top: 10px;">阿吉四大四&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: darkgray;">炉火纯青 发布于 <span>昨天 19:23</span>  来自浏览器</span></li>
						<li>真漂亮</li>
					</ul>
				</div>
				<div class="pinglunren">
					<img src="${path }/forum/img/pl4.jpg" style="border-radius: 10px; float: left;" width="100px" height="100px" />
					<ul style="float: left; list-style: none;">
						<li style="color: deepskyblue; margin-top: 10px;">也不待见&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: darkgray;">炉火纯青 发布于 <span>昨天 19:23</span>  来自浏览器</span></li>
						<li>我也想去</li>
					</ul>
				</div>
				<div class="pinglunren">
					<img src="${path }/forum/img/pl3.jpg" style="border-radius: 10px; float: left;" width="100px" height="100px" />
					<ul style="float: left; list-style: none;">
						<li style="color: deepskyblue; margin-top: 10px;">阿吉四大四&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: darkgray;">炉火纯青 发布于 <span>昨天 19:23</span>  来自浏览器</span></li>
						<li>真漂亮</li>
					</ul>
				</div>
			</div>
			
			
		</div>
		</div>
		<script src="${path }/forum/js/jquery-1.11.3.min.js" type="text/javascript">
			
		</script>
		<script src="${path }/forum/js/jssor.slider-21.1.6.mini.js" type="text/javascript"></script>
		<script type="text/javascript">
			
	jQuery(document).ready(function ($) {

		var jssor_1_SlideshowTransitions = [
		  {$Duration:1200,$Zoom:1,$Easing:{$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad},$Opacity:2},
		  {$Duration:1000,$Zoom:11,$SlideOut:true,$Easing:{$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
		  {$Duration:1200,$Zoom:1,$Rotate:1,$During:{$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
		  {$Duration:1000,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
		  {$Duration:1200,x:0.5,$Cols:2,$Zoom:1,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
		  {$Duration:1200,x:4,$Cols:2,$Zoom:11,$SlideOut:true,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
		  {$Duration:1200,x:0.6,$Zoom:1,$Rotate:1,$During:{$Left:[0.2,0.8],$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Left:$Jease$.$Swing,$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
		  {$Duration:1000,x:-4,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
		  {$Duration:1200,x:-0.6,$Zoom:1,$Rotate:1,$During:{$Left:[0.2,0.8],$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Left:$Jease$.$Swing,$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
		  {$Duration:1000,x:4,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
		  {$Duration:1200,x:0.5,y:0.3,$Cols:2,$Zoom:1,$Rotate:1,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.7}},
		  {$Duration:1000,x:0.5,y:0.3,$Cols:2,$Zoom:1,$Rotate:1,$SlideOut:true,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InExpo,$Top:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.7}},
		  {$Duration:1200,x:-4,y:2,$Rows:2,$Zoom:11,$Rotate:1,$Assembly:2049,$ChessMode:{$Row:28},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.7}},
		  {$Duration:1200,x:1,y:2,$Cols:2,$Zoom:11,$Rotate:1,$Assembly:2049,$ChessMode:{$Column:19},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.8}}
		];

		var jssor_1_options = {
		  $AutoPlay: true,
		  $SlideshowOptions: {
			$Class: $JssorSlideshowRunner$,
			$Transitions: jssor_1_SlideshowTransitions,
			$TransitionsOrder: 1
		  },
		  $ArrowNavigatorOptions: {
			$Class: $JssorArrowNavigator$
		  },
		  $ThumbnailNavigatorOptions: {
			$Class: $JssorThumbnailNavigator$,
			$Rows: 2,
			$Cols: 6,
			$SpacingX: 14,
			$SpacingY: 12,
			$Orientation: 2,
			$Align: 156
		  }
		};

		var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

		/*responsive code begin*/
		/*you can remove responsive code if you don't want the slider scales while window resizing*/
		function ScaleSlider() {
			var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
			if (refSize) {
				refSize = Math.min(refSize, 960);
				refSize = Math.max(refSize, 300);
				jssor_1_slider.$ScaleWidth(refSize);
			}
			else {
				window.setTimeout(ScaleSlider, 30);
			}
		}
		ScaleSlider();
		$(window).bind("load", ScaleSlider);
		$(window).bind("resize", ScaleSlider);
		$(window).bind("orientationchange", ScaleSlider);
		/*responsive code end*/
	});
	
</script>
		
	</body>
</html>
