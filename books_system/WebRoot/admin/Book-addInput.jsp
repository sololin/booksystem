<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
  <base href="<%=basePath%>">
  <meta charset='utf-8'>

  <title>添加书籍</title>
  <!--  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script> -->

  <style type="text/css">
    body {
      font-weight:lighter;
      margin-top: 1.0em;
     
	  background-image:url(admin/res/one.jpg);
	  background-size:cover;
      font-family: Helvetica, Arial, FreeSans, san-serif;
      color: #555;
    }
    #container {
      margin: 0 auto;
      width: 700px;
    }
    h1 {font-size: 3.8em; color: #edece8; margin-bottom: 3px; text-shadow: 0 1px 0px rgba(0,0,0, .2)}
    h1 .small { font-size: 0.3em; font-weight:lighter; color: #444;}
    h1 a {color:#666; text-decoration: none }
    h2 {font-size: 1.5em; color: #555; text-shadow: 0 1px 0px rgba(0,0,0, .2)}
    h3 {text-align: center; color: #555; text-shadow: 0 1px 0px rgba(0,0,0, .2)}
    a { color: #777; }
    .description {font-size: 1.0em; margin-bottom: 30px; margin-top: 30px; color: #666; text-shadow: 0 1px 0px rgba(0,0,0, .2)}
    pre { color: #fff; padding: 15px;}
    hr { border: 0; width: 80%; border-bottom: 1px solid #aaa}
    .footer {padding-top:30px; font-weight:lighter; }
  </style>
  
  
  <!-- Glowform -->
  	<script>
		$(function(){
		  var $form_inputs =   $('form input');
		  var $rainbow_and_border = $('.rain, .border');
		  /* Used to provide loping animations in fallback mode */
		  $form_inputs.bind('focus', function(){
		  	$rainbow_and_border.addClass('end').removeClass('unfocus start');
		  });
		  $form_inputs.bind('blur', function(){
		  	$rainbow_and_border.addClass('unfocus start').removeClass('end');
		  });
		  $form_inputs.first().delay(800).queue(function() {
			$(this).focus();
		  });
		});
	</script>
		<style>
			.border,
			.rain{
				height: 400px;
				width: 320px;
			}
			/* Layout with mask */
			.rain{
				 padding: 10px 12px 12px 10px;
				 -moz-box-shadow: 10px 10px 10px rgba(0,0,0,1) inset, -9px -9px 8px rgba(0,0,0,1) inset;
				 -webkit-box-shadow: 8px 8px 8px rgba(0,0,0,1) inset, -9px -9px 8px rgba(0,0,0,1) inset;
				 box-shadow: 8px 8px 8px rgba(0,0,0,1) inset, -9px -9px 8px rgba(0,0,0,1) inset;
				 margin: 100px 0 200px 0;
			}
			/* Artifical "border" to clear border to bypass mask */
			.border{
				padding: 1px;
				-moz-border-radius: 5px;
			    -webkit-border-radius: 5px;
				border-radius: 5px;
			}

			.border,
			.rain,
			.border.start,
			.rain.start{
				background-repeat: repeat-x, repeat-x, repeat-x, repeat-x;
				background-position: 0 0, 0 0, 0 0, 0 0;
				/* Blue-ish Green Fallback for Mozilla */
				background-image: -moz-linear-gradient(left, #09BA5E 0%, #00C7CE 15%, #3472CF 26%, #00C7CE 48%, #0CCF91 91%, #09BA5E 100%);
				/* Add "Highlight" Texture to the Animation */
				background-image: -webkit-gradient(linear, left top, right top, color-stop(1%,rgba(0,0,0,.3)), color-stop(23%,rgba(0,0,0,.1)), color-stop(40%,rgba(255,231,87,.1)), color-stop(61%,rgba(255,231,87,.2)), color-stop(70%,rgba(255,231,87,.1)), color-stop(80%,rgba(0,0,0,.1)), color-stop(100%,rgba(0,0,0,.25)));
				/* Starting Color */
				background-color: #39f;
				/* Just do something for IE-suck */
				filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00BA1B', endColorstr='#00BA1B',GradientType=1 );
			}
			
			/* Non-keyframe fallback animation */
			.border.end,
			.rain.end{
				-moz-transition-property: background-position;  
				-moz-transition-duration: 30s;
				-moz-transition-timing-function: linear;
				-webkit-transition-property: background-position;  
				-webkit-transition-duration: 30s;  
				-webkit-transition-timing-function: linear;
				-o-transition-property: background-position;  
				-o-transition-duration: 30s;  
				-o-transition-timing-function: linear;
				transition-property: background-position;  
				transition-duration: 30s;  
				transition-timing-function: linear;
				background-position: -5400px 0, -4600px 0, -3800px 0, -3000px 0;	
			}
			
			/* Keyfram-licious animation */
			@-webkit-keyframes colors {
			    0% {background-color: #39f;}
			    15% {background-color: #F246C9;}
			    30% {background-color: #4453F2;}
			    45% {background-color: #44F262;}
			    60% {background-color: #F257D4;}
			    75% {background-color: #EDF255;}
			    90% {background-color: #F20006;}
			    100% {background-color: #39f;}
		    }
		    .border,.rain{
			    -webkit-animation-direction: normal;
			    -webkit-animation-duration: 20s;
			    -webkit-animation-iteration-count: infinite;
			    -webkit-animation-name: colors;
			    -webkit-animation-timing-function: ease;
		    }
		    
		    /* In-Active State Style */
			.border.unfocus{
				background: #333 !important;	
				 -moz-box-shadow: 0px 0px 15px rgba(255,255,255,.2);
				 -webkit-box-shadow: 0px 0px 15px rgba(255,255,255,.2);
				 box-shadow: 0px 0px 15px rgba(255,255,255,.2);
				 -webkit-animation-name: none;
			}
			.rain.unfocus{
				background: #000 !important;	
				-webkit-animation-name: none;
			}
			
			/* Regular Form Styles */
			form{
				background: #212121;
				-moz-border-radius: 5px;
				-webkit-border-radius: 5px;
			        border-radius: 5px;
				height: 100%;
				width: 100%;
				background: -moz-radial-gradient(50% 46% 90deg,circle closest-corner, #252525, #090909);
				background: -webkit-gradient(radial, 50% 50%, 0, 50% 50%, 150, from(#252525), to(#090909));
			}
			form label{
				display: block;
				padding: 10px 10px 5px 15px;
				font-size: 14px;
				color: #F00;
			}
			form input{
				display: block;
				margin: 5px 10px 10px 15px;
				width: 85%;
				background: #111;
				-moz-box-shadow: 0px 0px 4px #000 inset;
				-webkit-box-shadow: 0px 0px 4px #000 inset;
				box-shadow: 0px 0px 4px #000 inset;
				outline: 1px solid #333;
				border: 1px solid #000;
				padding: 5px;
				color: #444;
				font-size: 16px;
			}
			form input:focus{
				outline: 1px solid #555;
				color: #FFF;
			}
			input[type="submit"]{
				color: #999;
				padding: 5px 10px;
				float: right;
				margin: 20px 0;
				border: 1px solid #000;
				font-weight: lighter;
				-moz-border-radius: 15px;
			    -webkit-border-radius: 15px;
				border-radius: 15px;
				background: #45484d;
				background: -moz-linear-gradient(top, #222 0%, #111 100%);
				background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#222), color-stop(100%,#111));
				filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#22222', endColorstr='#111111',GradientType=0 );
				-moz-box-shadow: 0px 1px 1px #000, 0px 1px 0px rgba(255,255,255,.3) inset;
				-webkit-box-shadow: 0px 1px 1px #000, 0px 1px 0px rgba(255,255,255,.3) inset;
				box-shadow: 0px 1px 1px #000,0px 1px 0px rgba(255,255,255,.3) inset;
				text-shadow: 0 1px 1px #000;
			}
		</style>
    <!-- /Glowform -->
</head>

<body>
 
  

    <!-- Glowform -->
    <center>
        <div class="rain">
			<div class="border start">
				<form action="admin/Book-add" method="post" onsubmit="return checkForm()">
					<label for="bookName">书名</label>
					<input id="bookName" name="book.bookName" type="text" placeholder="书名"/>
                    <label for="email">作者</label>
					<input id="authod" name="book.authod" type="text" placeholder="作者"/>
                    <label for="email">出版社及版次</label>
					<input id="edition" name="book.edition" type="text" placeholder="出版社及版次"/>
                    <label for="email">出售价格</label>
					<input id="price" name="book.price" type="text" placeholder="出售价格"/>
                    <label for="email">其他说明信息</label>
					<input id="description" name="book.description" type="text" placeholder="其他说明信息"/>
			
			
			</div>
			 <input type="submit" value="添加"/> 
              </form> 
		</div>
        </center>
    <!-- /Glowform -->
    
<script type="text/javascript">
  	function checkForm() {
  		var bookName =  document.getElementById("bookName").value;
  		var authod=document.getElementById("authod").value;
  		var edition = document.getElementById("edition").value;
  		var price = document.getElementById("price").value;
  		
  		if(bookName==null || bookName==""){
			alert("书名不能为空！");
			return false;
		}
  		if(authod==null || authod==""){
			alert("作者不能为空！");
			return false;
		}
  		if(edition==null || edition==""){
			alert("出版社不能为空！");
			return false;
		}
  		
  		if(price==null || price==""){
			alert("出售价格不能为空！");
			return false;
		}
  		return true;
  	}
 </script>

  <script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-22457957-1");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>
</html>