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
    <title>������ѧ��Java��̳</title>
    <link rel="shortcut icon" href="res/favicon.ico" type="image/x-icon" />
    <link href="res/forum.css" rel="stylesheet" type="text/css" />
   </head>
  <body>
      <div id="content" class="clearfix">
        <div id="main">
          <table id="forum_main" cellspacing="1">
            <thead>
              <tr>
                <td colspan="2" class="first_col" style="width: 250px;">����</td>
                
                <td width="62" class="first_col" style="width: 100px;">����</td>
                <td width="58" class="first_col" style="width: 100px;">���</td>
               <td width="58" class="first_col" style="width: 100px;">���ۼ�</td>
                <td colspan="1" class="first_col" style="width: 200px;">���������Ϣ</td>
                <td width="178" class="first_col" style="width: 180px;">������Ϣ</td>
                <td width="178" class="first_col" style="width: 180px;">ɾ���鼮</td>
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
               <!--   <td width="64" class="forum_index"><a href="/login">��ϸ��Ϣ</a></td>-->
                <td width="178" class="forum_index"><a href="admin/Book-delete?id=<s:property value="#b.id"/>">ɾ���鼮</a></td>
		        <td width="178" class="forum_index"><a href="admin/Book-updateInput?id=<s:property value="#b.id"/>">����</a></td>
              </tr>
              
          </s:iterator>
              
              
              
             
              
              
             
              
             
              
              
             
             
              
              
             
              
             
              
              
             
              
              
              
             
              
              
             
              
              
              
            
              
            </tbody>
          </table>

  <br/>
  <div id="forum_action" class="clearfix">
    <ul>
      <li><a href="/forums/mark_read_all">������������Ѷ�</a></li>
      <li><a href="/rss/forum" class="rss">����ȫ����̳����</a></li>
      
    </ul>
  </div>

  <div id="online_status">
    <h3>��ǰ����״̬</h3>
    <img src="/images/whosonline.gif"/> Ŀǰ���� <strong>2936</strong> �����ߣ�����ע���Ա <strong>365</strong> ��
    <a href="#" id="show_list" onClick="$('show_list').hide();$('hide_list').show();$('online_users').update('��ȡ��...'); new Ajax.Updater('online_users', '/users/online', {asynchronous:true, evalScripts:true, method:'get'}); return false;">��ʾ�б�</a><a href="#" id="hide_list" onClick="$('online_users').update(' ');$('show_list').show();$('hide_list').hide();return false;" style="display:none;">�����б�</a>
    <li><a href="/rss/topic" class="rss">����ȫ����̳�ȵ�</a></li><a href="/users/online" id="all_list">�鿴��ϸ״̬</a>
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
      <li>��������</li>
      <li>��ϵ����</li>
      <li class="last">��������</li>
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
