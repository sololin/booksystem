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
    <title>BookList</title>
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
            <tr><td colspan="8" class="first_col" style="width: 250px;">我的书籍</td></tr>
              <tr>
                <td colspan="2" class="first_col" style="width: 250px;">书名</td>
                
                <td width="62" class="first_col" style="width: 100px;">作者</td>
                <td width="58" class="first_col" style="width: 100px;">版次</td>
               <td width="58" class="first_col" style="width: 100px;">出售价</td>
                <td colspan="1" class="first_col" style="width: 200px;">书的其它信息</td>
                <td width="178" class="first_col" style="width: 180px;">删除书籍</td>
                <td width="178" class="first_col" style="width: 180px;">更新信息</td>
              </tr>
            </thead>
            </body>
              
         <s:iterator value="books" var="b">     
              
              <tr>
                <td width="100" class="read_forum"></td>
                <td width="150" class="forum_description"><s:property value="#b.bookName" /></td>
  
                 <td width="100" class="forum_index"><s:property value="#b.authod" /></td>
                <td  width="100" class="forum_index"><s:property value="#b.edition" /></td>
                <td  width="100" class="forum_index"><s:property value="#b.price" /></td>
                <td  width="100" class="forum_index"><s:property value="#b.description" /></td>
               <!--   <td width="64" class="forum_index"><a href="/login">详细信息</a></td>-->
                <td width="178" class="forum_index"><a href="admin/Book-delete?id=<s:property value="#b.id"/>">删除书籍</a></td>
		        <td width="178" class="forum_index"><a href="admin/Book-updateInput?id=<s:property value="#b.id"/>">更新</a></td>
              </tr>
              
          </s:iterator>
          
