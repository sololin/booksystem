<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <c:choose>
									<c:when test="${id!=0 }">
									<span style="font-family:华文中宋; font-size:16px; color:green;">添加成功，两秒后返回>></span>
										<script type="text/javascript">
						        			setTimeout("location.href='category/Category-listSubCategory?id=${id}'", 2000);
										</script>
										
									</c:when>
									<c:otherwise>
										<span style="font-family:华文中宋; font-size:16px; color:green;">添加成功，两秒后返回>></span>
										<script type="text/javascript">
						        			setTimeout("location.href='category/Category-list'", 2000);
										</script>
							   </c:otherwise>
				 </c:choose></td>
       
  </body>
</html>
