<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>用户登录</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<div class="container header">
		
<div class="span5">
		<div class="logo">
		<h1>摩尔MALL商城</h1>
		
		</div>
	</div>
	
	
	<div class="span9">
<div class="headerAd">

		
</div>	
</div>
	<%@ include file="header.jsp" %>
	<%@ include file="menu.jsp" %>
</div>	
<div class="container login ad">

		<div class="span12">

		<img src="${pageContext.request.contextPath}/images/model.png" width="350px"  height="637px" />
</div>		

		<div class="span12 last ad1">
			<div class="wrap">
				<div class="main">
					<div class="title">
						<strong>账号登录</strong>
					</div>
					<div class="title " style="padding-left:10px ">
						<s:actionerror/>
					</div>
					<form id="loginForm" action="${ pageContext.request.contextPath }/user_login.action"  method="post" novalidate="novalidate">
						<table>
							<tbody>
							<tr>
								<th>
										用户名:
								</th>
								<td>
									<input type="text" id="username" name="username" class="text" maxlength="20"/><span><s:fielderror fieldName="username"/></span>
								</td>
							</tr>
							<tr>
								<th>
									密&nbsp;&nbsp;码:
								</th>
								<td>
									<input type="password" id="password" name="password" class="text" maxlength="20" autocomplete="off"/><span><s:fielderror fieldName="password"/></span>
								</td>
							</tr>
							
								
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<label>
										<input type="checkbox" id="isRememberUsername" name="isRememberUsername" value="true">记住用户名
									</label>
									<label>
										&nbsp;&nbsp;<a >找回密码</a>
									</label>
									
								</td>
							</tr>
							
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<input type="submit" class="submit" value="登 录">
								</td>
							</tr>
							<tr>
							
							</tr>
							<tr >
	                                <th>
									
								</th>
									<td>	————— 更多登录方式       —————</td>
										
			
							</tr>
							<tr>
							<th></th>
							
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
							<img src="images/WeChat.png"  width="50px" height="50px"/>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<img src="images/SinaWeibo.png" width="50px" height="50px"/></td>
											</tr>
						</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>

<div class="container footer">
	<div class="span24">
	  <div class="footerAd">
	  <div align="center">	<img src="${pageContext.request.contextPath}/images/footer.jpg" width="1100" height="162" alt="我们的优势" title="我们的优势"></div>
	</div>
	<div class="span24">
		<ul class="bottomNav">
					
					
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright © 202017 摩尔商城 版权所有</div>
	</div>
</div>
</body></html>