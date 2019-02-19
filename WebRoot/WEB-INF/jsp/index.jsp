<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>摩尔商城</title>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>

<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/>
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

		<div class="banner-box">
	<div class="bd">
        <ul>          	    
            <li style="background:#F3E5D8;">
                <div class="m-width">
                <a href="javascript:void(0);"><img src="images/img1.jpg" /></a>
                </div>
            </li>
            <li style="background:#B01415">
                <div class="m-width">
                <a href="javascript:void(0);"><img src="images/img2.jpg" /></a>
                </div>
            </li>
            <li style="background:#C49803;">
                <div class="m-width">
                <a href="javascript:void(0);"><img src="images/img3.jpg" /></a>
                </div>
            </li>
            <li style="background:#FDFDF5">
                <div class="m-width">
                <a href="javascript:void(0);"><img src="images/img4.jpg" /></a>
                </div>
            </li>  
         
        </ul>
    </div>
    <div class="banner-btn">
        <a class="prev" href="javascript:void(0);"></a>
        <a class="next" href="javascript:void(0);"></a>
        <div class="hd"><ul></ul></div>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(){

	$(".prev,.next").hover(function(){
		$(this).stop(true,false).fadeTo("show",0.9);
	},function(){
		$(this).stop(true,false).fadeTo("show",0.4);
	});
	
	$(".banner-box").slide({
		titCell:".hd ul",
		mainCell:".bd ul",
		effect:"fold",
		interTime:3500,
		delayTime:500,
		autoPlay:true,
		autoPage:true, 
		trigger:"click" 
	});

});
</script>

<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>

 <div align="center"><img src="${pageContext.request.contextPath}/images/hot.jpg" width="300" height="100" alt="热门商品" title="热门商品"/></div>
<div class="container index">
		
		<div class="span24">
			<div id="hotProduct" class="hotProduct clearfix">
					<div class="title">
						
					</div>

						<ul class="tabContent" style="display: block;">
							<s:iterator value="hotList">
									<li>
										<a target="_blank" href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="pid"/>"><img src="${pageContext.request.contextPath}/<s:property value="image"/>"  style="display: block;"></a>
									</li>
							</s:iterator>		
						</ul>
				
			</div>
		</div>
	
		<div align="center"><img src="${pageContext.request.contextPath}/images/new.jpg" width="300" height="100"  alt="最新商品" title="最新商品"></div>
		<div class="span24">
			<div id="newProduct" class="newProduct clearfix">
					<div class="title">
						
					</div>
				
						 				
						 <ul class="tabContent" style="display: block;">
						 	<s:iterator value="newList">
								<li>
									<a  target="_blank" href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="pid"/>"><img src="${pageContext.request.contextPath}/<s:property value="image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg" style="display: block;"></a>
								</li>
							</s:iterator>		
						</ul>
						
						
			</div>
		</div>
		<div class="span24">
			<div class="friendLink">
			
			</div>
		</div>
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
				<div align="center">	<img src="${pageContext.request.contextPath}/images/footer.jpg" width="1100" height="162" alt="我们的优势" title="我们的优势"></div>
  
</div>	</div>
  
	<div class="span24">
	
	</div>
	<div class="span24">
		<!--  <div class="copyright">Copyright © 2017 摩尔商城 版权所有</div> -->
	</div>
</div>
 <img src="${pageContext.request.contextPath}/images/copyright.png" width="1245" height="52" alt="我们的优势" title="我们的优势">
</body></html>