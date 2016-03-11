<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
  <head> 
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.0.js"></script>  
  
	<base href="<%=basePath%>">
  </head>  
    
  <body>  
  
  <form action="User-add" method="post" onsubmit="return checkForm()">				
					账号
					<input id="zhanghao" name="u.userName" type="text" />
                   密码
					<input id="password1" name="u.passWord" type="password" />
					密码确认
					<input id="password2" type="password" />
                    学部
                    <select name="u.school">  
							<option value ="信息学部">信息学部</option>  
							<option value ="文理学部">文理学部</option>  
							<option value="工学部">工学部</option>  
							<option value="医学部">医学部</option>  
					</select>  
                    
					<!--  <input name="u.school" type="text" placeholder="学部"/> -->
                    电话
					<input id="telephone" name="u.telephone" type="text"/>
                    
					
                    <!--
					<label for="pass">Password</label>
					<input name="pass" type="password" placeholder="Password"/>
                    -->
               <input type="submit" value="注册"/>
               
               <font id="error" color="red"></font>
              
              </form>   
  <script type="text/javascript">
  	function checkForm() {
  		var zhanghao =  document.getElementById("zhanghao").value;
  		var password1=document.getElementById("password1").value;
  		var password2 = document.getElementById("password2").value;
  		var telephone = document.getElementById("telephone").value;
  		if(zhanghao==null || zhanghao==""){
			alert("账号不能为空！");
			return false;
		}
  		if(password1==null || password1==""){
			alert("密码不能为空！");
			return false;
		}
  		if(password2==null || password2==""){
			alert("确认密码不能为空！");
			return false;
		}
  		if(password1 != password2) {
  			alert("两次密码不一样！");
  			return false;
  		}
  		if(telephone==null || telephone==""){
			alert("电话号码不能为空！");
			return false;
		}
  		return true;
  	}
 </script>
  </body>
 </html>