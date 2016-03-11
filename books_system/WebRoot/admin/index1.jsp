<%@ page language="java" contentType="text/html;charset=GB18030" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<s:property value="categories" /><s:property value="'hello'"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=GB18030"/>
    <title>北京尚学堂Java论坛</title>
    <link rel="shortcut icon" href="res/favicon.ico" type="image/x-icon" />
    <link href="res/forum.css" rel="stylesheet" type="text/css" />
   </head>
  <body>
      <div id="content" class="clearfix">
        <div id="main">
          <table id="forum_main" cellspacing="1">
            <thead>
              <tr>
                <td colspan="2" class="first_col" style="width: 250px;">书名</td>
                
                <td width="62" class="first_col" style="width: 100px;">作者</td>
                <td width="58" class="first_col" style="width: 100px;">版次</td>
               <td width="58" class="first_col" style="width: 100px;">出售价</td>
                <td colspan="1" class="first_col" style="width: 200px;">书的其它信息</td>
                <td width="178" class="first_col" style="width: 180px;">更新信息</td>
                <td width="178" class="first_col" style="width: 180px;">删除书籍</td>
              </tr>
            </thead>
            <tbody>
              
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
              
              
              
             
              
              
             
              
             
              
              
             
             
              
              
             
              
             
              
              
             
              
              
              
             
              
              
             
              
              
              
            
              
            </tbody>
          </table>

  <br/>
  <div id="forum_action" class="clearfix">
    <ul>
      <li><a href="/forums/mark_read_all">标记所有文章已读</a></li>
      <li><a href="/rss/forum" class="rss">订阅全部论坛新贴</a></li>
      
    </ul>
  </div>

  <div id="online_status">
    <h3>当前在线状态</h3>
    <img src="/images/whosonline.gif"/> 目前共有 <strong>2936</strong> 人在线，其中注册会员 <strong>365</strong> 人
    <a href="#" id="show_list" onClick="$('show_list').hide();$('hide_list').show();$('online_users').update('读取中...'); new Ajax.Updater('online_users', '/users/online', {asynchronous:true, evalScripts:true, method:'get'}); return false;">显示列表</a><a href="#" id="hide_list" onClick="$('online_users').update(' ');$('show_list').show();$('hide_list').hide();return false;" style="display:none;">隐藏列表</a>
    <li><a href="/rss/topic" class="rss">订阅全部论坛热点</a></li><a href="/users/online" id="all_list">查看详细状态</a>
    <div id="online_users">&nbsp;</div>
  </div>

  <script type="text/javascript">
    var current_index = 0;
    var s_adverts = ["\u003Cembed play=\"true\" src=\"http://ftp.javaeye.com/public/ibm/ibm_x.swf\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" height=\"180\" loop=\"true\" menu=\"true\" width=\"370\"\u003E\u003C/embed\u003E\r\n\r\n\r\n"];

    Event.observe(window,'load',function() {
      show_slide(0);
      new PeriodicalExecuter(show_slide, 30);
    });

    function show_slide(s_index) {
      if(typeof(s_index) != 'number') s_index = current_index + 1;
      if(s_index >= s_adverts.length) s_index = 0;
      
      $("slides").innerHTML = s_adverts[s_index];
      var s_pagination = s_adverts.inject("<span class='pagination'>", function(memo, value, i) {
        return memo + (s_index == i ? "<span class='current'>" + (i + 1) + "</span>" : "<a href='#' onclick='show_slide(" + i + ");return false;'>" + (i + 1) + "</a>");
      }) + "</span>";


      $("slides").insert(s_pagination);

      current_index = s_index;
    }
  </script>
        </div>
      </div>
      <div id="footer">
  <div id="site_nav">
    <ul>
      <li></li>
      <li></li>
      <li>关于我们</li>
      <li>联系我们</li>
      <li class="last">友情链接</li>
    </ul>
  </div>
  <div id="copyright">
    &copy; 2003-2009 xxx.com.   All rights reserved.  
  </div>
</div>

    </div>
    
<script type="text/javascript">
  document.write("<img src='http://stat.javaeye.com/?url="+ encodeURIComponent(document.location.href) + "&referrer=" + encodeURIComponent(document.referrer) + "&logged_in=no" + "' width='0' height='0' />");
</script>
  </body>
</html>
