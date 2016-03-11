<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

    
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/bootstrap/js/jQuery.js"></script>
	<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
<base href="<%=basePath%>">

<title>BookList</title>

   <link rel="shortcut icon" href="res/favicon.ico" type="image/x-icon" />
   <link href="res/forum.css" rel="stylesheet" type="text/css" />
   <body style="background:url(admin/res/lanyun.jpg) #000000">
<!--  <body style="background:url(image/h.jpg) #000000"> -->
</head>
<body>
	<div id="content" class="clearfix">
		<div id="main">
			<table id="forum_main" cellspacing="1">
				<thead>

					<tr>
						<td colspan="7" class="first_col" style="width: 250px;">论坛</td>
					</tr>
					<tr>
						<td colspan="2" class="first_col" style="width: 250px;">主题</td>

						<td width="62" class="first_col" style="width: 100px;">作者</td>
						<td width="58" class="first_col" style="width: 100px;">发布时间</td>
						<td width="58" class="first_col" style="width: 100px;">点击率</td>
						<td colspan="1" class="first_col" style="width: 200px;">回复数</td>

					</tr>

				</thead>


				<s:iterator value="categories" var="b">

					<tr>
						<td width="100" class="read_forum"></td>
						<td width="150" class="forum_description"><a
							href="category/Category-listSubCategory?id=<s:property value="#b.id"/>&&hitorno=1"
							target="_blank"><s:property value="#b.topic" /></a></td>
						<td width="100" class="forum_index"><c:choose>
								<c:when test="${b.user.userName==null }">
										游客
									</c:when>
								<c:otherwise>
										 ${b.user.userName }
							   </c:otherwise>
							</c:choose></td>
						<!--   <td width="100" class="forum_index"><s:property value="#b.user.userName" /></td>-->
						<td width="100" class="forum_index"><fmt:formatDate
								value="${b.createDate }" type="date" pattern="yyyy-MM-dd" /></td>
						<!--  <td  width="100" class="forum_index"><s:property value="#b.createDate" /></td>-->
						<td width="100" class="forum_index"><s:property
								value="#b.hit" /></td>
						<td width="100" class="forum_index"><s:property
								value="#b.reply" /></td>
						<!--   <td width="64" class="forum_index"><a href="/login">详细信息</a></td>-->
						<!-- <td width="178" class="forum_index"><a href="User-information?id=<s:property value="#b.uid"/>">查看信息</a></td>-->

					</tr>

				</s:iterator>


			</table>
	   
		</div>
	</div>
	<div>
		<div class="pagination pagination-centered">
			<ul>
				${pageCode}
			</ul>
	</div>
	</div>
</body>
</html>