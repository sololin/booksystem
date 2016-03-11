<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<%@taglib uri="/struts-tags" prefix="s"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<script type="text/javascript" src="../xheditor/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../xheditor/xheditor-1.1.14-zh-cn.min.js"></script>
	<meta http-equiv="content-type" content="text/html; charset=GBK">
	<link rel="stylesheet" type="text/css" href="images/style.css"
	title="Integrated Styles">
	<script language="JavaScript" type="text/javascript"
	src="images/global.js"></script>
	<link rel="alternate" type="application/rss+xml" title="RSS"
	href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
	
	
</head>
<body>
    
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td width="40%"><img src="images/header-stretch.gif" alt=""
					border="0" height="57" width="100%"></td>
				<td width="1%"><img src="images/header-right.gif" alt=""
					height="57" border="0"></td>
			</tr>
		</tbody>
	</table>
	<br>
	<div id="jive-flatpage">
		
		<br>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr valign="top">
					<td width="99%"><div id="jive-message-holder">
							<div class="jive-message-list">
								<div class="jive-table">
									<div class="jive-messagebox">

										<!-- start -->


<table summary="Message" border="0" cellpadding="0"
												cellspacing="0" width="100%">
												<tbody>
													<tr id="jive-message-780144" class="jive-odd" valign="top">
														<td class="jive-first" width="1%">
															<!-- 个人信息的table -->
															<table border="0" cellpadding="0" cellspacing="0"
																width="150">
																<tbody>
																	<tr>
																		<td><table border="0" cellpadding="0"
																				cellspacing="0" width="100%">
																				<tbody>
																					<tr valign="top">
																						<td style="padding: 0px;" width="1%"><nobr>
							<span style="font-family:华文中宋; font-size:18px;color:green"><c:choose>
								<c:when test="${category.user.userName==null }">
										游客
									</c:when>
								<c:otherwise>
										 ${b.user.userName }
							   </c:otherwise>
							</c:choose></span>
																							</nobr></td>
																						<td style="padding: 0px;" width="99%"><img
																							class="jive-status-level-image"
																							src="images/level3.gif" title="世界新手" alt=""
																							border="0"><br></td>
																					</tr>
																				</tbody>
																			</table> <img class="jive-avatar"
																			src="images/avatar-display.png" alt="" border="0">
																			 </td>
																	</tr>
																</tbody>
															</table> <!--个人信息table结束-->

														</td>
														<td class="jive-last" width="99%"><table border="0"
																cellpadding="0" cellspacing="0" width="100%">
																<tbody>
																	<tr valign="top">
																		<td width="1%"></td>
																		<td width="97%"><span style="font-family:华文中宋; font-size:16px;">主题：</span>${category.topic}</td>
																		<td class="jive-rating-buttons" nowrap="nowrap"
																			width="1%"></td>
																		<td width="1%"><div class="jive-buttons">
																				
																			</div></td>
																	</tr>
																	<tr>
																		<td colspan="4"
																			style="border-top: 1px solid rgb(204, 204, 204);"><br>
																			<span style="font-family:华文中宋; font-size:16px;">&nbsp;&nbsp;内容：</span>${category.description} <br> <br>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4" style="font-size: 9pt;"><img
																			src="images/sigline.gif"><br> <font
																			color="#568ac2">学程序是枯燥的事情，愿大家在一起能从中得到快乐！</font> <br>
																		</td>
																	</tr>
																	
																</tbody>
															</table></td>
													</tr>
												</tbody>
											</table>


										
                          <c:forEach var="b" items="${categories }" varStatus="status">
											<table summary="Message" border="0" cellpadding="0"
												cellspacing="0" width="100%">
												<tbody>
													<tr id="jive-message-780144" class="jive-odd" valign="top">
														<td class="jive-first" width="1%">
															<!-- 个人信息的table -->
															<table border="0" cellpadding="0" cellspacing="0"
																width="150">
																<tbody>
																	<tr>
																		<td><table border="0" cellpadding="0"
																				cellspacing="0" width="100%">
																				<tbody>
																					<tr valign="top">
																						<td style="padding: 0px;" width="1%"><nobr>
									<span style="font-family:华文中宋; font-size:18px;color:green"><c:choose>
								<c:when test="${b.user.userName==null }">
										游客
									</c:when>
								<c:otherwise>
										 ${b.user.userName }
							   </c:otherwise>
							</c:choose></span>
																							</nobr></td>
																						<td style="padding: 0px;" width="99%"><img
																							class="jive-status-level-image"
																							src="images/level3.gif" title="世界新手" alt=""
																							border="0"><br></td>
																					</tr>
																				</tbody>
																			</table> <img class="jive-avatar"
																			src="images/avatar-display.png" alt="" border="0">
																			 </td>
																	</tr>
																</tbody>
															</table> <!--个人信息table结束-->

														</td>
														<td class="jive-last" width="99%"><table border="0"
																cellpadding="0" cellspacing="0" width="100%">
																<tbody>
																	<tr valign="top">
																		<td width="2%"></td>
																		<td width="96%">第${status.index+2 }楼</td>
																		<td class="jive-rating-buttons" nowrap="nowrap"
																			width="1%"></td>
																		<td width="1%"><div class="jive-buttons">
																				
																			</div></td>
																	</tr>
																	<tr>
																		<td colspan="4"
																			style="border-top: 1px solid rgb(204, 204, 204);"><br>
																			&nbsp;&nbsp;${b.description} <br> <br>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4" style="font-size: 9pt;"><img
																			src="images/sigline.gif"><br> <font
																			color="#568ac2">学程序是枯燥的事情，愿大家在一起能从中得到快乐！</font> <br>
																		</td>
																	</tr>
																	
																</tbody>
															</table></td>
													</tr>
												</tbody>
											</table>
										
										</c:forEach>
										<!-- end -->
                          <center>
										<form action="category/Category-add" method="post">
											<input type="hidden" name="id" value="<s:property value="id"/>" />
					
											 <textarea id="elm3" name="category.description" class="xheditor-simple" rows="12" cols="80" style="width: 70%"></textarea>
											<br/>
											<input style="width:15%;height:35px;" type="submit" value="回复" />
										</form>
						</center>
									</div>
								</div>
							</div>
							
						</div></td>
					<td width="1%">&nbsp;</td>
				</tr>
			</tbody>
		</table>
	</div>
	
</body>
</html>
