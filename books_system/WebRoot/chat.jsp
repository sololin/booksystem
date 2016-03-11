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
        
        <div style="height:420px; overflow:auto" id="showTable"></div>
       
<script>
        window.setInterval("show();",1500);  
        function show(){  
           var url = "j/ajaxLogin";  
            $.ajax({  
                type:'get',  
                url:'j/ajaxLogin',  
                dataType: 'json',  
                success:function(data,satue){ 
                    $("#showTable").html(""); 
                    $.each(data,function(i,list){  
                        
                         var _tr = $("<tr><td><span style=\"font-family:华文中宋; font-size:16px;color:0000ff\">"+list.userName+"  "+"<span style=\"color:#009900\">"+list.stringDate+"</span>"+"</span></td>"+"</tr><tr><td style=\"word-wrap:break-word;word-break:break-all;\" colspan=\"2\"><span style=\"font-family:华文中宋; font-size:16px;color:#ff00ff\">"+  
                                  list.conString+"</span></td></tr>");  
                       
                       $("#showTable").append(_tr); 
                    }); 
                  document.getElementById('showTable').scrollTop = document.getElementById('showTable').scrollHeight*2;  
                }  
            });  
              
        } ; 
    </script>          
 
 <!--       
  <script type="text/javascript">
    	document.getElementById("elm3").onkeydown=function(e){
if(e.keyCode == 13 && e.ctrlKey){
document.getElementById("elm3").value += "\n";
}else if(e.keyCode == 13){

e.preventDefault();

alert(1);
}
};
    </script>        
 -->    
  </body>  
</html>  