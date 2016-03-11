<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-2.1.0.js"></script>
	
<base href="<%=basePath%>">
<script type="text/javascript">
	function submit(callback){
    document.getElementById("myform").submit();
    callback();
}
function reset(){
     document.getElementById("myform").reset();
}
function tijiao(){
    submit(reset);

}
</script>
</head>
<body>
	<center>
		<form id="myform" action="Message-add?statue=1" method="post" target="four">
			<span style="font-family:华文中宋; font-size:16px; color:green;">输入聊天内容：</span><input
				id="shuru" style="width: 65%;height:35px" name="message.conString"
				type="text" />
				<input type="button" style="width:55px;height:35px;background-color:#009900" value="send" onclick="tijiao()"/>
		</form>
	</center>
	<div>
		<iframe name="four" width="1" height="1" frameborder="0"
			scrolling="no"></iframe>
	</div>
</body>
</html>