<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
  <head>
  	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <!--  
  <script type="text/javascript">
   window.setInterval("show();",1000);
    function show(){
    	window.location.href="${pageContext.request.contextPath}/Message-add";
	}
    </script>
    -->
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
  <table>
  <c:forEach var="m" items="${sm}">
			<tr>
			    <td><span style="color:#009900">${m.userName }</span></td>
			    <td>&nbsp;<span style="color:#ff00ff">${m.conString }</span></td>
				<td><span style="color:#009900"><fmt:formatDate value="${m.createDate }" type="date" pattern="yyyy/MM/dd"/></span></td>	
			    
			</tr>
</c:forEach>
</table>

  
  </body>
</html>
