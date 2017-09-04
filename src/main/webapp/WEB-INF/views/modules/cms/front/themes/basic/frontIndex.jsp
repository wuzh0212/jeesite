<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="JeeSite ${site.description}" />
	<meta name="keywords" content="JeeSite ${site.keywords}" />
	<!-- Slider Plugin -->
	<script type="text/javascript" src="${myTheme}/js/jquery.glide.js"></script>
	
	<script type="text/javascript" src="${myTheme}/js/jq_moveXY.js"></script>
	<script type="text/javascript">
		$(function(){
	        $(".word2").moveXY({effect:"yToTop"});
		});
	</script>
</head>
<body>
<!-- banner轮换 -->
	<div class="slider">
		<ul class="slides">
			<li class="slide"><div class="banner-bg" style="background-image:url(${myTheme}/images/banner/banner1.jpg);"></div></li>
			<li class="slide"><div class="banner-bg" style="background-image:url(${myTheme}/images/banner/banner2.jpg);"></div></li>
			<li class="slide"><div class="banner-bg" style="background-image:url(${myTheme}/images/banner/banner3.jpg);"></div></li>	
		</ul>
	</div>
	
	<!-- 新闻轮换 -->
	<div class="gd-news">
		<div class="wd1200 fn-clear">
			<div class="srollwrap fl">
				<ul class="word2">
				<c:forEach items="${fnc:getArticleList(site.id, 2, 8, '')}" var="article">
					<li class="lb-icon"><a href="${article.url}" target="_blank">${fns:abbr(article.title,28)}</a></li>
				</c:forEach>
				</ul>
			</div>
		</div>
	</div>


    
    <div class="row">
      <div class="span4">
        <h4><small><a href="${ctx}/list-2${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>组织dfdf机构</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 2, 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      <div class="span4">
        <h4> <small><a href="${ctx}/list-6${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>质量监督</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 6, 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      <div class="span4">
        <h4><small><a href="${ctx}/list-10${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>政策法规</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 10, 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
    </div>
    <script type="text/javascript">
		var glide = $('.slider').glide({

				//autoplay:true,//是否自动播放 默认值 true如果不需要就设置此值

				animationTime:500, //动画过度效果，只有当浏览器支持CSS3的时候生效

				arrows:true, //是否显示左右导航器
				arrowsWrapperClass: "arrowsWrapper",//滑块箭头导航器外部DIV类名
				arrowMainClass: "slider-arrow",//滑块箭头公共类名
				arrowRightClass:"slider-arrow--right",//滑块右箭头类名
				arrowLeftClass:"slider-arrow--left",//滑块左箭头类名
				arrowRightText:">",//定义左右导航器文字或者符号也可以是类
				arrowLeftText:"<",

				nav:true, //主导航器也就是本例中显示的小方块
				navCenter:true, //主导航器位置是否居中
				navClass:"slider-nav",//主导航器外部div类名
				navItemClass:"slider-nav__item", //本例中小方块的样式
				navCurrentItemClass:"slider-nav__item--current" //被选中后的样式
			});

			
	</script>
</body>
</html>