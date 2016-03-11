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
  <form action="admin/Book-update" method="post">
  <input type = "hidden" name = "book.id" value="<s:property value="book.id"/>"/>
  	name:<input name="book.bookName" value="<s:property value="book.bookName"/>"/><br>
    authod:<input name="book.authod" value="<s:property value="book.authod"/>"/><br>
    edition:<input name="book.edition" value="<s:property value="book.edition"/>"/><br>
    price:<input name="book.price" value="<s:property value="book.price"/>"/><br>
  	description:<textarea name="book.description"><s:property value="book.description"/></textarea><br>
  	<input type="submit" value="add" /> 
  </form>
  <s:debug></s:debug>
  
  <!--  
  <form action="admin/Book-update" method="post">
    <input type = "hidden" name = "category.id" value="<s:property value="category.id"/>"/>
  	name:<input name="category.name" value="<s:property value="category.name"/>"/>
  	description:<textarea name="category.description"><s:property value="category.description"/></textarea>
  	<input type="submit" value="update" /> 
  </form>
  -->
  
  </body>
</html>
