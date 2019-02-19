<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>用户注册</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/register.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function checkForm(){
		// 校验用户名:
		var username = document.getElementById("username").value;
		if(username == ''){
			alert("用户名不能为空!");
			return false;
		}
		
		// 校验密码:
		var password = document.getElementById("password").value;
		if(password == ''){
			alert("密码不能为空!");
			return false;
		}
		
		// 校验确认密码
		var repassword = document.getElementById("repassword").value;
		if(password != repassword){
			alert("两次密码不一致!");
			return false;
		}
	}
	
	function checkUserName(){
		var username = $("#username").val();
		$("#span1").load("${pageContext.request.contextPath}/user_checkUserName.action?"+new Date().getTime(),{'username':username});
	}
	
	function change(){
		var img = document.getElementById("checkImg");
		img.src="${pageContext.request.contextPath}/checkImg.action?"+new Date().getTime();
	}
	
	/*
	function checkUserName(){
		// 获得用户名的值:
		var username = document.getElementById("username").value;
		// 1.创建异步加载对象:
		var xhr = createXMLHttpRequest();
		// 2.设置监听
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					var data = xhr.responseText;
					document.getElementById("span1").innerHTML = data;
				}
			}
		}
		// 3.打开连接:
		xhr.open("GET","${pageContext.request.contextPath}/user_checkUserName.action?"+new Date().getTime()+"&username="+username,true);
		// 4.发送
		xhr.send(null);
	}
	
	function createXMLHttpRequest() {
		var xmlHttp;
		try { // Firefox, Opera 8.0+, Safari
			xmlHttp = new XMLHttpRequest();
		} catch (e) {
			try {// Internet Explorer
				xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
				}
			}
		}

		return xmlHttp;
	}
	*/
</script>
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
	<div class="container register">
		<div class="span24">
			<div class="wrap">
				<div class="main clearfix">
					<div class="title">
						<strong>新用户注册</strong>
					</div>
					<div class="title">
						<s:actionerror />
					</div>
					<form id="registerForm"
						action="${ pageContext.request.contextPath }/user_regist.action"
						method="post" novalidate="novalidate"
						onsubmit="return checkForm();">
						<div>
												
						<table >
							<tbody>
								<tr>
									<th><span class="requiredField">*</span>用户名:</th>
									<td><input type="text" id="username" name="username"
										class="text" maxlength="20" onblur="checkUserName()" /><span
										id="span1"><s:fielderror fieldName="username" />
									</span></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>密&nbsp;&nbsp;码:</th>
									<td><input type="password" id="password" name="password"
										class="text" maxlength="20" autocomplete="off" /><span><s:fielderror
												fieldName="password" />
									</span></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>确认密码:</th>
									<td><input type="password" id="repassword"
										name="repassword" class="text" maxlength="20"
										autocomplete="off" /></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>E-mail:</th>
									<td><input type="text" id="email" name="email"
										class="text" maxlength="200" /><span><s:fielderror
												fieldName="email" />
									</span></td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>电话:</th>
									<td><input type="text" id="phone" name="phone"
										class="text" maxlength="200">
									</td>
								</tr>
								<tr>
									<th>姓名:</th>
									<td><input type="text" name="name" class="text"
										maxlength="200">
									</td>
								</tr>
								<tr>
									<th>性别:</th>
									<td><span class="fieldSet"> <label> <input
												type="radio" name="sex" value="男">男 
										</label> <label> <input type="radio" name="sex" value="女">女
											
										</label> </span></td>
								</tr>


								<tr>
									<th>地址:</th>
									<td><input type="text" name="addr" class="text"
										maxlength="200"/>
									</td>
								</tr>
								<tr>
									<th><span class="requiredField">*</span>验证码:</th>
									<td><span class="fieldSet"> 
										<input type="text"
											id="checkcode" name="checkcode" class="text captcha"
											maxlength="4" autocomplete="off"/>
										<img
												id="checkImg" class="captchaImage"
												src="${ pageContext.request.contextPath }/checkImg.action"
												title="点击更换验证码" onclick="change()"/>
									</span></td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td><input type="submit" class="submit" value="注册"/>
									</td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td>注册代表您同意我们的<a href=" ">用户协议</a></td>
								</tr>
								<tr>
									<th>&nbsp;</th>
									<td>
									
										</div></td>
								</tr>
							</tbody>
						</table>
  </div>
						<div class="login">
							<img src="${pageContext.request.contextPath}/images/model.png" width="350px"  height="637px" />
							<div class="ad1">
						
							
							</div>
						
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container footer">
		<div class="span24">
			<div class="footerAd">
				<div align="center">	<img src="${pageContext.request.contextPath}/images/footer.jpg" width="1100" height="162" alt="我们的优势" title="我们的优势"></div>
			</div>
		</div>
		<div class="span24">
		
		</div>
		<div class="span24">
			<div class="copyright">Copyright © 2017 摩尔商城 版权所有</div>
		</div>
	</div>
	
</body>
</html>