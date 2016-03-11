
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书交易</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<link  rel="stylesheet" type="text/css" href="scroll/carousel.css"/>
<script type="text/javascript" src="scroll/jquery.js"></script>
<script type="text/javascript" src="scroll/carousel.js"></script>

<link rel="stylesheet" type="text/css"
	href="fullpage/jquery.fullPage.css" />
<link rel="stylesheet" type="text/css" href="fullpage/examples.css" />



<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>

<script type="text/javascript" src="fullpage/jquery.fullPage.js"></script>
<script type="text/javascript" src="fullpage/examples.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#fullpage').fullpage(
						{

							sectionsImage : [ 'url(image/h.jpg)',
									'url(image/finger.jpg)',
									'url(image/wood.jpg)', 'url(image/shamo.jpg)',
									'url(image/zuozhu.jpg)' ],
							sectionsColor : [ '#1bbc9b', '#4BBFC3', '#7BAABE',
									'whitesmoke', '#ccddff' ],
							anchors : [ 'firstPage', 'secondPage', '3rdPage',
									'4thpage', 'lastPage' ],
							menu : '#menu',
							scrollingSpeed : 1000
						});

			});
</script>




<style type="text/css">
.head {
	font-size: xx-large;
	text-align: center;
	color: #09F;
	font-weight: bold;
}
</style>
<style>
.menu1 {
	border: 0px solid #F00;
	width: 650px;
	height: 47px;
	margin: 0px auto;
}
</style>
<style>
.display {
	border: 1px solid #F00;
	width: 900px;
	height: 600px;
	margin: 0px auto;
}

.setpiture {
	background-image: url(image/h.jpg);
}

.bg-div {
	position: relative;
	background-image: url(admin/res/lany.jpg);
	width: 900px;
	height: 90px;
	margin: 0 auto;
	border: 1px solid #F00;
}

.logo {
	background-image: url(res/logo.png);
	height: 53px;
	width: 107px;
	float: left;
	margin: -4px 18px 0 0;
}

.search-form {
	float: left;
	background-color: #fff;
	padding: 5px;
}

.search-text {
	height: 25px;
	line-height: 25px;
	float: left;
	width: 350px;
	border: 0;
	outline: none;
}

.search-button {
	background-image: url(res/search-button.png);
	width: 29px;
	height: 29px;
	float: left;
	border: 0
}

.search-box {
	position: absolute;
	top: 20px;
	left: 160px;
}
</style>
<script language="javascript">
	window.location.href = document.getElementById("autodown").href;
</script>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet"
	type="text/css" />
<!--<body style="background:url(image/h.jpg) #000000">-->
</head>

<body>

	<ul id="menu">
		<li><a href="#firstPage"><span
				style="font-family:华文中宋; font-size:13px; color:#009933;">图书交易</span></a></li>
		<li><a href="#secondPage"><span
				style="font-family:华文中宋; font-size:13px; color:#009933;">影视娱乐</span></a></li>
		<li><a href="#3rdPage"><span
				style="font-family:华文中宋; font-size:13px; color:#009933;">交流论坛</span></a></li>
		<li><a href="#4thpage"><span
				style="font-family:华文中宋; font-size:13px; color:#009933;">介绍及联系</span></a></li>
	</ul>

	<div id="fullpage">

		<div class="section " id="section0">

			<span class="head" style="text-align: center"></span>
			 <div class="head">
				<span class="head"><span class="head">图书交易</span></span>
			</div> 
			<div class="head1">
				<center>
					<table width="800"  border="0">
						<tr>
							<td width="266"></td>
							<td width="266"> <img src="image/mao1.jpg" width="55"
								height="30" longdesc="image/mao1.jpg" /></td>
							<td style='text-align:right;' width="268">
								<c:choose>
									<c:when test="${currentUser.userName!=null }">
										<strong>
											欢迎你：${currentUser.userName}&nbsp;&nbsp;&nbsp;<a
											href="admin/index" target="_blank">前往后台</a>
										</strong>
									</c:when>
									<c:otherwise>
										<a href="User-addInput">注册</a>&nbsp;&nbsp;&nbsp;<a
											href="User-login" target="_blank">登录</a> &nbsp;&nbsp;&nbsp; 
							
							   </c:otherwise>
							   </c:choose>

							</td>

							
						</tr>
					</table>
				</center>
			</div>
			<div class="menu1">
				<center>
					<ul id="MenuBar1" class="MenuBarHorizontal">
						<li class="MenuBarHorizontal"><a class="MenuBarItemSubmenu"
							id="autodown" href="admin/Book-categoryList?category=0"
							target="one">全部</a>
							<ul>
								<li><a href="admin/Book-categoryList?category=1"
									target="one">信息学部</a></li>
								<li><a href="admin/Book-categoryList?category=2"
									target="one">文理学部</a></li>
								<li><a href="admin/Book-categoryList?category=3"
									target="one">工学部</a></li>
								<li><a href="admin/Book-categoryList?category=4"
									target="one">医学部</a></li>
							</ul></li>

						<li><a class="MenuBarItemSubmenu"
							href="admin/Book-categoryList?category=1" target="one">信息学部</a>
						</li>

						<li><a class="MenuBarItemSubmenu"
							href="admin/Book-categoryList?category=2" target="one">文理学部</a>
							</li>

						<li><a class="MenuBarItemSubmenu"
							href="admin/Book-categoryList?category=3" target="one">工学部</a>
							</li>

						<li><a class="MenuBarItemSubmenu"
							href="admin/Book-categoryList?category=4" target="one">医学部</a>
							</li>

					</ul>
				</center>
			</div>
			<div class="display">



				<div class="bg-div">
					<div class="search-box">
						<div class="logo"></div>

						<form class="search-form" action="admin/Book-categoryList"
							target="one" method="post">
							<input type="hidden" name="category" value="5" /> <input
								type="text" class="search-text" name="search.contend" /> <input
								type="submit" class="search-button" value="" />
						</form>
					</div>
				</div>



				<div>
					<center>
						
						<iframe src="admin/Book-categoryList?category=0" name="one"  width="900" height="500" frameborder="0"
							scrolling="no"></iframe>
					</center>
				</div>
			</div>
		</div>


		<div class="section" id="section1">
			<div class="slide">
				<center>
				<div>
					<span style="font-family:华文中宋; font-size:20px; color:blue;">Chat Online</span>
				</div>
				
				<div>
					<iframe name="three" src="chat.jsp" width="600" height="500" frameborder="1"
						scrolling="yes"></iframe>
				</div>
				<div>
					<iframe name="chatInput" src="chatInput1.jsp" width="600" height="50" frameborder="1"
						scrolling="no"></iframe>
				</div>
			</center>
				


			</div>
			<div class="slide">
				<div class="intro">
				
				<center>
			  <table width="800">
			  <tr><td colspan="4"><center><span style="font-family:华文中宋; font-size:20px; color:blue;">论坛</span></center></td></tr>
				<tr>
				<td width="50"></td>
				<td width="350"><span style="font-family:华文中宋; font-size:16px; color:blue;"><a href="category/Category-addNewInput" target="twoo">点我添加新主题</a></span></td>
				<td width="130"></td>
				<td width="270"><span style="font-family:华文中宋; font-size:16px; color:blue;">排序：<a href="category/Category-list?order=1" target="twoo">按最新(默认)</a>&nbsp;&nbsp;&nbsp;<a href="category/Category-list?order=2" target="twoo">按热度(点我)</a></span></td>
				</tr>
			 </table>
			</center>
			<center>
				<div>
					<iframe name="twoo" src="category/Category-list?order=1" width="800" height="500" frameborder="1"
						scrolling="yes"></iframe>
				</div>
			</center>
				
					
				</div>
			</div>
			
			
		</div>
		<div class="section" id="section2">
            <div><center><span style="font-family:华文中宋; font-size:30px; color:yellow;">电影</span></center></div>
			<center>
					<div class="J_Poster poster-main" data-setting='{
                                                                                    "width":1000,
                                                                                    "height":270,
                                                                                    "posterWidth":640,
                                                                                    "posterHeight":270,
                                                                                    "scale":0.8,
                                                                                    "autoPlay":true,
                                                                                    "delay":2000,
                                                                                    "speed":300
																					}'>
	<div class="poster-btn poster-prev-btn"></div>
    <ul class="poster-list">
    	<li class="poster-item"><a href="http://www.xiamp4.com/Html/GP19706.html" target="_blank"><img src="scroll/su7_1.jpg" width="100%" height="100%"/></a></li>
							<li class="poster-item"><a
								href="http://www.xiamp4.com/Html/GP715.html"
								target="_blank"><img src="scroll/tangbohu_1.jpg"
									width="100%" height="100%"/></a></li>
							<li class="poster-item"><a
								href="http://www.xiamp4.com/Html/GP3881.html" target="_blank"><img
									src="scroll/pursuitofhappyness_1.jpg" width="100%" height="100%"/></a></li>
							<li class="poster-item"><a
								href="http://www.xiamp4.com/Html/GP20847.html" target="_blank"><img
									src="scroll/moritanta_1.jpg" width="100%" height="100%"/></a></li>
							<li class="poster-item"><a
								href="http://www.xiamp4.com/Html/GP20848.html"
								target="_blank"><img src="scroll/junglepark_1.jpg"
									width="100%" height="100%"/></a></li>
    </ul>
    <div class="poster-btn poster-next-btn"></div>
</div>
<p style="height:50px;"></p>
<div><center><span style="font-family:华文中宋; font-size:30px; color:yellow;">电视剧</span></center></div>
<div class="J_Poster poster-main" data-setting='{
                                                                                    "width":1000,
                                                                                    "height":270,
                                                                                    "posterWidth":640,
                                                                                    "posterHeight":270,
                                                                                    "scale":0.8,
                                                                                    "autoPlay":true,
                                                                                    "delay":5000,
                                                                                    "speed":300,
                                                                                    "vericalAlign":"top"
																					}'>
	<div class="poster-btn poster-prev-btn"></div>
    <ul class="poster-list">
    	<li class="poster-item"><a href="http://www.iqiyi.com/a_19rrhc1zfx.html?vfm=2008_aldbd" target="_blank"><img src="scroll/huaqiangu_1.jpg" width="100%" height="100%"/></a></li>
							<li class="poster-item"><a
								href="http://v.duba.com/varietydetail/272993.html"
								target="_blank"><img src="scroll/jixiantiaozhan_1.jpg"
									width="100%" height="100%"/></a></li>
							<li class="poster-item"><a
								href="http://v.duba.com/tvdetail/272930.html" target="_blank"><img
									src="scroll/daomubiji_1.jpg" width="100%" height="100%"/></a></li>
							<li class="poster-item"><a
								href="http://v.duba.com/tvdetail/274713.html" target="_blank"><img
									src="scroll/kelalianren_1.jpg" width="100%" height="100%"/></a></li>
							<li class="poster-item"><a
								href="http://v.duba.com/zt_indexv3.html?ztn=tvdetail_hqg&f=ysb"
								target="_blank"><img src="scroll/huaqiangu_1.jpg"
									width="100%" height="100%"/></a></li>
							<li class="poster-item"><a
								href="http://v.duba.com/varietydetail/272993.html"
								target="_blank"><img src="scroll/jixiantiaozhan_1.jpg"
									width="100%" height="100%"/></a></li>
    </ul>
    <div class="poster-btn poster-next-btn"></div>
</div>
				</center>


		</div>
		<div class="section" id="section3">

			<div class="slide">
			<center>
			<table width="1200"  style="padding-top:0px;">
			
				<tr height="100">
				<td colspan="2"><center><span style="font-family:华文中宋; font-size:36px; color:green;">网站介绍</span></center></td>
				</tr>
				<tr height="100">
				<td width="160"><span style="font-family:华文中宋; font-size:26px; color:red;">图书交易：</span></td>
				<td><span style="font-family:华文中宋; font-size:26px; color:yellow;">本网站的主要功能，实现同学间二手书交易，注册登录后可前往后台添加自己销售的书籍，有意者在前台看到可私下与你联系交易。同时，后台可修改、删除所属书籍及修改个人信息</span></td>
				</tr>
				<tr height="100">
				<td><span style="font-family:华文中宋; font-size:26px; color:red;">交流论坛：</span></td>
				<td><span style="font-family:华文中宋; font-size:26px; color:yellow;">登录后可实现在线交流，同时，同学们可在论坛提问，访问者可回复。</span></td>
				</tr>
				<tr height="100">
				<td><span style="font-family:华文中宋; font-size:26px; color:red;">影视娱乐：</span></td>
				<td><span style="font-family:华文中宋; font-size:26px; color:yellow;">提供最新的电视剧、电影链接</span></td>
				</tr>
			</table>
			</center>
			</div>
			<div class="slide">
				<div class="intro">
				
				<center>
			<table width="300"  style="padding-top:0px;">
			
				<tr height="100">
				<td colspan="2"><center><span style="font-family:华文中宋; font-size:36px; color:green;">联系</span></center></td>
				</tr>
				<tr height="100">
				
				<td width="150"><span style="font-family:华文中宋; font-size:26px; color:red;">作者：</span></td>
				<td width="150"><span style="font-family:华文中宋; font-size:26px; color:yellow;">庞观林</span></td>
				
				</tr>
				<tr height="100">
				<td><span style="font-family:华文中宋; font-size:26px; color:red;">QQ：</span></td>
				<td><span style="font-family:华文中宋; font-size:26px; color:yellow;">792370810</span></td>
				</tr>
				<tr height="100">
				<td><span style="font-family:华文中宋; font-size:26px; color:red;">微信：</span></td>
				<td><span style="font-family:华文中宋; font-size:26px; color:yellow;">pgl_666</span></td>
				</tr>
			</table>
			</center>
				
					
				</div>
			</div>
			
		</div>
	






	<script type="text/javascript">
		var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {
			imgDown : "SpryAssets/SpryMenuBarDownHover.gif",
			imgRight : "SpryAssets/SpryMenuBarRightHover.gif"
		});
	</script>
	<script>
		$(function() {
			Carousel.init($(".J_Poster"));
		});
	</script>
</body>
</html>
