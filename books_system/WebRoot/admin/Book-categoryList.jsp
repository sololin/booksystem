<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

 <head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/bootstrap/js/jQuery.js"></script>
	<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=GB18030"/>
    <title>BookList</title>
    <body style="background:url(admin/res/lanyun.jpg) #000000">
    
    <!--  <body style="background:url(admin/res/three.jpg) #000000">-->

    
   </head>
  <body>
       <div class="data_content">
		<table class="table table-bordered table-hover">
		  
			<tr >
				<th style="width:25%;font-family:华文中宋; font-size:20px; color:blue;text-align:center;">书名</th>
				<th style="width:10%;font-family:华文中宋; font-size:20px; color:blue;text-align:center;">作者</th>
				<th style="width:15%;font-family:华文中宋; font-size:20px; color:blue;text-align:center;">版次</th>
				<th style="width:10%;font-family:华文中宋; font-size:20px; color:blue;text-align:center;">出售价</th>
				<th style="width:25%;font-family:华文中宋; font-size:20px; color:blue;text-align:center;">书的其它信息</th>
				<th style="width:15%;font-family:华文中宋; font-size:20px; color:blue;text-align:center;">联系卖家</th>
			</tr>
			
        <c:forEach var="b" items="${books}" varStatus="status">
        <tr>
                <!--  <td>${status.index+1 }</td>  -->
				<td style="font-family:华文中宋; font-size:18px; color:black;text-align:center;">${b.bookName }</td>
				<td style="font-family:华文中宋; font-size:18px; color:black;text-align:center;">${b.authod }</td>
				<td style="font-family:华文中宋; font-size:18px; color:black;text-align:center;">${b.edition }</td>
				<td style="font-family:华文中宋; font-size:18px; color:black;text-align:center;">${b.price }</td>
				<td style="font-family:华文中宋; font-size:18px; color:black;text-align:center;">${b.description }</td>
				<td style="font-family:华文中宋; font-size:18px; text-align:center;"><a href="User-information?id=${b.id }"><span style="font-family:华文中宋; font-size:18px; color:green;">查看信息</span></a></td>
		</tr>
		</c:forEach>				
  </table>
  </div>
     <div>
		<div class="pagination pagination-centered">
			<ul>
				${pageCode }
			</ul>
		</div>
	</div>   
           
     </body>
          