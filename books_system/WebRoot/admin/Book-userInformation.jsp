<%@ page language="java" contentType="text/html;charset=GB18030" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

  <head>
  
  <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=GB18030"/>
    <title>�����û���Ϣ</title>
    <link rel="shortcut icon" href="res/favicon.ico" type="image/x-icon" />
    <link href="res/forum.css" rel="stylesheet" type="text/css" />
    <body style="background:url(admin/res/three.jpg) #000000"> 

    
   </head>
  <body>
       <div id="header">
       
        </div>
        
        
      <div id="content" class="clearfix">
        <div id="main">
          <table id="forum_main" cellspacing="1">
            <thead>
            <tr><td colspan="8" class="first_col" style="width: 250px;">�˺Ź���</td></tr>
              <tr>
                <td colspan="2" class="first_col" style="width: 250px;">�˺�</td>
                <td width="62" class="first_col" style="width: 100px;">����</td>
                <td width="62" class="first_col" style="width: 100px;">ѧ��</td>
                <td width="58" class="first_col" style="width: 100px;">�绰</td>
       
                <td width="178" class="first_col" style="width: 180px;">������Ϣ</td>
               
              </tr>
            </thead>
            </body>
              
              
              <tr>
                <td width="100" class="read_forum"></td>
                <td width="150" class="forum_description"><s:property value="user.userName" /></td>
  
                 <td width="100" class="forum_index"><s:property value="user.passWord" /></td>
                <td  width="100" class="forum_index"><s:property value="user.school" /></td>
                <td  width="100" class="forum_index"><s:property value="user.telephone" /></td>
                <td width="178" class="forum_index"><a href="User-updateInput?id=<s:property value="user.id"/>">����</a></td>
               <!--   <td width="64" class="forum_index"><a href="/login">��ϸ��Ϣ</a></td>-->
              <!--    <td width="178" class="forum_index"><a href="User-delete?id=<s:property value="#u.id"/>">ɾ��</a></td>-->
		        
              </tr>
              
          
