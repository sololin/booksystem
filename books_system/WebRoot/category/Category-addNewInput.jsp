<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" href="xheditor/common.css" type="text/css" media="screen" />
  	<script type="text/javascript" src="../xheditor/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../xheditor/xheditor-1.1.14-zh-cn.min.js"></script>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Category_input.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <center>
  <div style="margin-top:35px">
  <form action="category/Category-add" method="post">
    <span style="font-family:华文中宋; font-size:16px; color:blue;">topic:</span><input style="width: 60%;height:35px" type="text" name="category.topic">
    
  	<div style="margin-top:35px"><span style="font-family:华文中宋; font-size:26px; color:blue;">description：</span></div>
    <textarea id="elm3" name="category.description" class="xheditor-simple" rows="12" cols="80" style="width: 80%"></textarea>
  	
  	<div style="margin-top:25px"><input style="width:15%;height:35px;background-color:#009900;" type="submit" value="add" /> 
  	<button style="width:15%;height:35px;background-color:#009900" type="button" onclick="javascript:history.back()">back</button>
  	</div>
  </form>
  </div>
  </center>
  </body>
</html>
