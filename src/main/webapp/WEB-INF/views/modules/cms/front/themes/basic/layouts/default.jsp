<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
	<title><sitemesh:title default="欢迎光临"/> - ${site.title} - Powered By JeeSite</title>
	<%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp" %>
	<!-- Baidu tongji analytics --><script>var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?82116c626a8d504a5c0675073362ef6f";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s);})();</script>
	<sitemesh:head/>
</head>
<body>
	<div class="header">
		<div class="wd1200 fn-clear">
			<a href="${ctx}/index-1${fns:getUrlSuffix()}" class="fl mg-t24"><img src="${myTheme}/images/logo.png"></a>
			<div class="fl menu">
				<a href="${ctx}/index-1${fns:getUrlSuffix()}" class="cur">首页</a>
				<c:forEach items="${fnc:getMainNavList(site.id)}" var="category" varStatus="status"><c:if test="${status.index lt 5}">
                    <c:set var="menuCategoryId" value=",${category.id},"/>
		    		<a href="${category.url}" target="${category.target}" class="mg-l50"><span>${category.name}</span></a>
		    	</c:if></c:forEach>
			</div>
			
				<div class="search-box fr mg-t30">
				 <form  action="${ctx}/search" method="get">
	              	<input type="text" name="q" class="srk1 fl" />
	               	 </form>
              	</div>
			
			
		</div>
	</div>
          
      
	
		<div class="content">
			<sitemesh:body/>
		</div>
		<!-- 侧边栏 -->
	<div class="sidebar">
		<!-- <a href="javascript:void(0);" class="bl1"></a> -->
		<a href="javascript:void(0);" class="bl2 mg-t5"></a>
		<a href="javascript:void(0);" class="bl3 mg-t5"></a>
		<a href="#" class="bl4 mg-t5"></a>
	</div>
		<footer>
			<!-- footer -->
			<div class="footer">
				<div class="wd1200 pd-t50 pd-b50 fn-clear">
					
					<ul class="fl lh30 mg-l100">
						<li class="fz16">关于我们</li>
						<li><a href="../关于我们/公司简介.html">公司简介</a></li>
						<li><a href="../关于我们/资质荣誉.html">资质荣誉</a></li>
						<li><a href="../关于我们/专业介绍.html">专业介绍</a></li>
						<li><a href="../关于我们/招贤纳士.html">招贤纳士</a></li>
					</ul>
					<ul class="fl mg-l165 lh30">
						<li class="fz16">资讯中心</li>
						<li><a href="../资讯中心/公司新闻.html">公司新闻</a></li>
						<li><a href="../资讯中心/汇诚观点.html">汇诚观点</a></li>
						<li><a href="../资讯中心/汇诚月刊.html">汇诚月刊</a></li>
						<li><a href="../资讯中心/行业动态.html">行业动态</a></li>
					</ul>
					<ul class="fl mg-l165 lh30 txt-c">
						<li class="fz16">关注汇诚</li>
						<li class="ew-code mg-t10" style="background:url(${webName}/userfiles/1/images/ew-code.png) no-repeat;"></li>
					</ul>
					<ul class="fl mg-l165">
						<dl class="fn-clear mg-t30">
							<dt class="rx-icon fl"></dt>
							<dd class="mg-l20 fz26 fl">
								<p><b>咨询热线：</b></p>
								<p class="mg-t10"><b>010-45775400</b></p>
							</dd>
						</dl>
					</ul>
				</div>
				<div class="foot-txt lh28 txt-c pd-t12 pd-b12">
					<div>友情链接：<a href="#">绿茶网</a>&nbsp;&nbsp;<a href="#">上容科技</a>&nbsp;&nbsp;<a href="#">中国人民银行</a>&nbsp;&nbsp;<a href="#">央行征信中心</a>&nbsp;&nbsp;<a href="#">中国市场协会信工网</a>&nbsp;&nbsp;<a href="#">北京信用协会</a>&nbsp;&nbsp;<a href="#">中国互联网金融协会</a></div>
					<p class="chui">copyright@2016 版权所有 汇诚信用 | 京ICP备16025031号 | 京公网安备 11010502031189号</p>
				</div>
			</div>
			<div class="footer_nav"><a href="${ctx}/guestbook" target="_blank">公共留言</a> | <a href="${ctx}/search" target="_blank">全站搜索</a> | <a href="${ctx}/map-${site.id}${fns:getUrlSuffix()}" target="_blank">站点地图</a> | <a href="mailto:thinkgem@163.com">技术支持</a> | <a href="${pageContext.request.contextPath}${fns:getAdminPath()}" target="_blank">后台管理</a></div>
			<div class="pull-right">${fns:getDate('yyyy年MM月dd日 E')}</div>
      	</footer>
   
</body>
</html>