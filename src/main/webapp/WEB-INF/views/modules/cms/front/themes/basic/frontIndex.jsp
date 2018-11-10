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
			<li class="slide"><div class="banner-bg" style="background-image:url(${webName}/userfiles/1/images/banner1.jpg);"></div></li>
			<li class="slide"><div class="banner-bg" style="background-image:url(${webName}/userfiles/1/images/banner2.jpg);"></div></li>
			<li class="slide"><div class="banner-bg" style="background-image:url(${webName}/userfiles/1/images/banner3.jpg);"></div></li>	
		</ul>
	</div>
	
	<!-- 新闻轮换 -->
	<div class="gd-news">
		<div class="wd1200 fn-clear">
			<div class="srollwrap fl">
				<ul class="word2">
				<c:forEach items="${fnc:getArticleList(site.id, 2, 10, '')}" var="article">
					<li class="lb-icon"><a href="${article.url}" target="_blank">${fns:abbr(article.title,28)}</a></li>
				</c:forEach>
				
				</ul>
			</div>
		</div>
	</div>
<!-- 链接 -->
	<div class="wd1200 fn-clear">
		<div class="fl" style="padding:140px 0 150px 0;">
			<a href="../产品与服务/大数据征信.html" class="sylink1 fl mg-l78" style="background:url(${webName}/userfiles/1/images/sylink.png) ;">企业征信报告</a>
			<a href="../产品与服务/大数据征信.html" class="sylink2 fl mg-l78" style="background:url(${webName}/userfiles/1/images/sylink.png) ;">反欺诈</a>
			<a href="../产品与服务/大数据征信.html" class="sylink3 fl mg-l78" style="background:url(${webName}/userfiles/1/images/sylink.png) ;">信用体系建设</a>
			<a href="../服务案例/小微金融企业服务案例.html" class="sylink4 fl mg-l78" style="background:url(${webName}/userfiles/1/images/sylink.png) ;">服务案例</a>
			<a href="../产品与服务/大数据征信.html" class="sylink5 fl mg-l78" style="background:url(${webName}/userfiles/1/images/sylink.png) ;">信贷业务管理</a>
			<a href="../产品与服务/大数据征信.html" class="sylink6 fl mg-l78" style="background:url(${webName}/userfiles/1/images/sylink.png) ;">数据挖掘分析</a>
		</div>
	</div>

	<!-- 产品与服务 -->
	<div class="title1">
		<p class="tit1"></p>
	</div>
	
	<!-- 信用管理咨询服务 -->
	<div class="banner-bg2"></div>

	<!-- 项目服务 -->
	<div class="hui-bg">
		<h2>项目服务</h2>
		<div class="wd1200 fn-clear">
			<ul class="fl mg-t50">
				<li class="sytb1"></li>
				<li class="pd40 mg-t35">
					<p class="txt-c fz24">一、数据分析挖掘</p>
					<p class="fz14 chui3 mg-t20">拥有多位资深数据挖掘人员，可利用客户的各种历史信用资料和背景资料及专家经验，研发一定的信用评分模型，得到不同等级的信用分数，从而评估客户违约的风险大小......</p>
				</li>
				<li class="txt-c mg-t30"><a href="../产品与服务/大数据征信.html" class="more">更多</a></li>
			</ul>
			<ul class="fl mg-t50">
				<li class="sytb2"></li>
				<li class="pd40 mg-t35">
					<p class="txt-c fz24">二、信用体系建设</p>
					<p class="fz14 chui3 mg-t20">2014年6月国务院印发《社会信用体系建设规划纲要（2014-2020）》，为我国的社会信用体系建设完成了“顶层设计。《纲要》中明确提出要构建“政务诚信......</p>
				</li>
				<li class="txt-c mg-t30"><a href="../产品与服务/大数据征信.html" class="more">更多</a></li>
			</ul>
			<ul class="fl mg-t50">
				<li class="sytb3"></li>
				<li class="pd40 mg-t35">
					<p class="txt-c fz24">三、行业研究</p>
					<p class="fz14 chui3 mg-t20">汇诚行业研究部，拥有多位专业行业研究人员，依托信和汇诚对现有海量客户进行行业细分与剖析的研究成果，及合作行业协会、主管单位等社会资源......</p>
				</li>
				<li class="txt-c mg-t30"><a href="../产品与服务/大数据征信.html" class="more">更多</a></li>
			</ul>
		</div>
	</div>

	<!-- 服务案例 -->
	<div class="title1" style="background:#fff;">
		<p class="tit2"></p>
	</div>

	<div class="banner-bg3">
		<div class="wd1200">
			<ul class="pd-t25">
				<li>
					<p class="fz24">服务企业：</p>
					<p class="fz16 lh26 mg-t5">信和汇金信息咨询（北京）有限公司</p>
				</li>
				<li class="mg-t25">
					<p class="fz24">业务需求：</p>
					<p class="fz16 lh26 mg-t5">对内：贷前审核、贷中审查、贷后管理的全流程风险把控</p>
					<p class="fz16 lh26">对外：客户精准营销</p>
				</li>
				<li class="mg-t25" style="width:540px;">
					<p class="fz24">解决方案：</p>
					<p class="fz16 lh26 mg-t5">
凭借先进的CHP3.0审核系统及近600人的精英审批团队，对进件客户进行反欺诈排查、贷前资质审核和人工电话排查等措施，覆盖全国245个城市的约1500名实地调研人员......</p>
				</li>
				<li class="mg-t40"><a href="../服务案例/小微金融企业服务案例.html" class="more">查看更多</a></li>
			</ul>
		</div>
	</div>

	<!-- 广告banner -->
	<div class="banner-bg4"></div>
    
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