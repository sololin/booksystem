<%@ page language="java" contentType="text/html;charset=GB18030" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
  
  <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=GB18030"/>
    <title></title>
    <link rel="shortcut icon" href="res/favicon.ico" type="image/x-icon" />
    <link href="res/forum.css" rel="stylesheet" type="text/css" />
    <body style="background:url(admin/res/lanyun.jpg) #000000"> 
    <style>
    a:link{font-size:20px;font-weight:bolder}
    </style>
   </head>
  <body>
       <div id="header">
       
        </div>
        
        
      <div id="content" class="clearfix">
        <div id="main">
          <table id="forum_main" cellspacing="1">
            <thead>
            <tr><td colspan="8" class="first_col" style="width: 250px;">�˺���Ϣ</td></tr>
              <tr>
                <td colspan="2" class="first_col" style="width: 250px;">�˺�</td>
                
                <td width="62" class="first_col" style="width: 100px;">ѧ��</td>
                <td width="58" class="first_col" style="width: 100px;">�绰</td>
       
               
               
              </tr>
            </thead>
            
            
            
              <tr>
                <td width="100" class="read_forum"></td>
                <td width="150" class="forum_description"><s:property value="u.userName" /></td>
  
                
                <td  width="100" class="forum_index"><s:property value="u.school" /></td>
                <td  width="100" class="forum_index"><s:property value="u.telephone" /></td>
                 
             
               <!--   <td width="64" class="forum_index"><a href="/login">��ϸ��Ϣ</a></td>-->
               
		        
              </tr>
             </table>
          </div>  
          </div>   
                
                
                              <tr><a href="admin/Book-categoryList" >����>></a></tr>
                              </body>  
  </html>        
        
         
          
