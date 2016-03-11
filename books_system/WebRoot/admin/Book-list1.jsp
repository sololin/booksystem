<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
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
Category_list
<!--  
<a href="admin/Book-add">添加Book</a>
<a href="admin/Book-update">更新Category</a>
<a href="admin/Book-delete">删除Category</a>
-->
<a href="admin/Book-addInput">添加Book111</a>
<a href="admin/Book-updateInput">更新Book</a>
<a href="admin/Book-delete">删除Book</a>
<s:property value="book.bookName" />|
<hr/>
	<s:iterator value="books" var="b">
		<s:property value="#b.bookName"/>|
		<s:property value="#b.authod"/>|
		<s:property value="#b.edition"/>|
		<s:property value="#b.price"/>|
		<s:property value="#b.description"/>|
		<a href="admin/Book-delete?id=<s:property value="#b.id"/>">删除Category</a>|
		<a href="admin/Book-updateInput?id=<s:property value="#b.id"/>">更新Category</a>
		<br>
	</s:iterator >
		<!--  
		<a href="admin/Book-delete?id=<s:property value="#b.id"/>">删除Category</a>|
		<a href="admin/Book-updateInput?id=<s:property value="#b.id"/>">更新Category</a>
		-->
	<br/>
	<s:debug></s:debug>
  </body>
</html>
