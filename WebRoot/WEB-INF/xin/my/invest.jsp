<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>信融财富 - 上市公司战略投资，P2P网贷专业互联网投资理财平台 - 我的账户</title>
    <script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<!--<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->    <link rel="stylesheet" href="../s/css/global.css-v=1591.css" tppabs="https://xin/s/css/global.css?v=1591" />
<link rel="stylesheet" href="../s/css/www/user.css-v=1591.css" tppabs="https://xin/s/css/www/user.css?v=1591" />
<link rel="stylesheet" href="../s/css/v2/Basic.css-v=1591.css" tppabs="https://xin/s/css/v2/Basic.css?v=1591" />
    <script>var G_ENV_VAR = {WWW:'https://xin/',STATIC:'http://s.xinrong.com/',BBS:'http://bbs.xinrong.com/',UID:'',UNAME:'',MSG_NUM:'',VIP: '',IS_CHECKED_EMAIL: false,IS_CHECKED_MOBILE: false,HAS_TRADE_PASSWORD: false,IS_CHECKED_IDENTIFICATION: false,IS_CHECKED_BANKCARD: false}</script>
<script src="../s/js/lib/jquery.min.js-v=1591" tppabs="https://xin/s/js/lib/jquery.min.js?v=1591"></script>
<script src="../s/js/AA.base-min.js-v=1591" tppabs="https://xin/s/js/AA.base-min.js?v=1591"></script>
<script type="text/javascript" src="../2.0/js/rsa.js" tppabs="https://xin/2.0/js/rsa.js"></script>
</head>
<style>
.invest_msg{ position:relative;}
.invest_msg img{ vertical-align:middle; margin:0 0 4px 5px;}
.invest_msg .i-title{ display:none;}
.invest_msg:hover .i-title{ width:160px; color:#444; display:block; position:absolute; right:-188px; top:-10px; background: #f6f9fd; border: 1px solid #999999; border-radius:3px; line-height:20px; z-index:8; line-height:30px; font-weight:normal; padding:0 10px; color:#999;}
.invest_msg:hover b{ display: inline-block; position: absolute; left:-6px; top:0px;}
.invest_msg:hover b img{ margin:0px;}

</style>
<body class="channel-my">
<input type="hidden" id="order_time" value="1">
<style>
.FontBg{}
.FontN{ display:block; width:9px; height:11px; position:absolute; right:3px; top:-7px;}
.FontLi{ padding-left:10px;}
.FontLi img{ vertical-align:top; position:relative; margin-top:-2px;}
.FontLi a{ padding-left:3px; color:red}

.top-links{ width:75%;}
.top-links a.Tpor, .top-menu a.Tpor{ position:relative; padding-right:15px; padding-left:9px;}
.top-links a.FontMar, .top-menu a.FontMar{ margin-left:10px;}
.top-menu a.weibo01{ margin:0px 0 0 -2px; padding-top:1px; display:inline-block;}
.top-menu a.weixing{ padding: 0 6px 0 0; margin-left: -5px; display:inline-block;}

.g-topnav .g-grid{ font-family:"microsoft yahei";}

.weixingbox{ width:642px; text-align: left; }
.weixingbox .boxbg{ background:#fff; padding:10px 20px; position:relative;}
.weixingbox .boxbg h1{ text-align:center; height:32px; line-height:32px; font-size:14px; color:#000; font-weight:bold; padding-left:10px;}
.weixingbox .boxbg h2{ text-align:center; padding:4px 0 0px 0; height:28px; line-height:28px; font-size:16px; color:#323230; font-family:"黑体"; font-weight:bold;}
.weixingbox .boxbg h2 img{ vertical-align:top; padding-right:6px; margin-top:2px;}
.weixingbox .boxbg h2 span{ font-family:Arial;}
.weixingbox .boxbg .boxpic{ width:301px; padding:15px 0 0 0px; text-align:center; float:left;}
.weixingbox .boxbg .boxfont{ line-height:18px; color:#666; font-size:14px; padding:5px 0 20px 15px;}
.weixingbox .boxbg .boxApp{ padding:5px 0 8px 0; text-align:center;}
.weixingbox .boxbg .boxfont span{ color:#f60;}
.weixingbox .boxbg .BoxClose{ position:absolute; top:4px; right:4px;}

.appbox{ width:682px;}
.appbox .boxbg{ width:301px; float:left;}

.hetong .i-title{ display:none;}
.hetong:hover .i-title{ width:280px; color:#444; display:block; position:absolute; left:-140px; bottom:-28px; background: #f6f9fd; border: 1px solid #999999; border-radius:3px; line-height:20px; z-index:8;}
.hetong:hover b{ display: inline-block; position: absolute; left: 50%; top: -14px; margin-left:2px;}
</style>
<!--<div id="g-topnav" class="g-topnav">
    <div class="g-grid">
        <ul class="top-menu g-fix">
            
			<li><a href="javascript:AA.RapidLogin.popup();" rel="nofollow">登录</a></li>

            <li><a href="/2.0/views/account/register3.0.shtml" rel="nofollow" target="_blank">注册</a></li>
            
                        <li><a style="text-decoration:none;color: #666; padding-right:0px;">关注我们</a></li>
            <li class="menu-item">
                <a href="http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0" target="_blank" class="weibo01" title="官方微博"><img src="/s/img/weibo.png" /></a>
            </li>
            <li><a href="javascript:show_weixin();" class="weixing" title="官方微信"><img src="/s/img/w01.png" /></a></li>
            <li>|</li>
            <li class="menu-item toolbox"><a href="javascript:;" class="menu-hd" rel="nofollow">计算器<i class="arrow"></i></a>
                <ul class="menu-bd g-hide">
                    <li><a target="_blank" href="https://xin/toolbox/caculator">利息计算器</a></li>
                </ul>
            </li>
        </ul>

        <div class="top-links">
                       |<a href="javascript:show_App();"><span class="FontBg">手机端</span></a><a href="/vip" target="_blank" rel="nofollow"><span class="FontBg">VIP特权</span></a><a href="/action/jf" target="_blank" rel="nofollow" style="display:none;"><span class="FontBg">积分抽奖</span></a> <a class="Tpor" href="/gift" target="_blank" rel="nofollow"><span class="FontBg">积品汇</span><span class="FontN"><img src="/s/images/N.gif" width="9" height="11" /></span></a><a href="http://bbs.xinrong.com" target="_blank">社区</a><a href="/2.0/views/about/help.shtml" target="_blank">帮助</a><a href="/2.0/views/about/xr_monthly.shtml" target='_blank' style="display:none;">月刊</a><a href="http://bbs.xinrong.com/forum-49-1.html" target="_blank" class="last">反馈</a> <a href="https://xin/webapp2.0/" target='_blank'>触屏版</a>
        </div>
    </div>
</div>-->

<script>

	var dd=null,dd1=null;

	function show_weixin(){
		
		if(dd!=null&&dd!=undefined){
			dd.visible();
			return;
		}
		
		var drd= $.popup1({
           title:'' ,
           width:'341',
           padding:'0',
           content:'<div class="weixingbox" >\
               <div class="boxbg"><h2>信融财富微信公众平台</h2>\
               <div class="BoxClose"><a href="javascript:close_weixin();"><img src="../s/img/close.jpg"/*tpa=https://xin/s/img/close.jpg*/ /></a></div>\
               <div class="boxpic"><img src="../s/img/w02.jpg"/*tpa=https://xin/s/img/w02.jpg*/ /><div class="boxfont"><span style="color:#0078b6;">服务号：</span>扫描或在微信添加公众号<br/>搜索<span>信融财富</span>关注</div>\</div>\
               <div class="boxpic"><img src="../s/img/w05.jpg"/*tpa=https://xin/s/img/w05.jpg*/ width="232" /><div class="boxfont"><span style="color:#0078b6;">订阅号：</span>扫描或在微信添加公众号搜<br/>索<span>信融财富投融资平台</span>关注</div>\</div>\
               </div>\
               </div>',
          
           init:function (d ) {
        	   
           }
			 
		 });

		 dd=drd;
	}

	function close_weixin(){
		
		dd.hidden();
	}
	
	
	function show_App(){
		
		if(dd1!=null&&dd1!=undefined){
			dd1.visible();
			return;
		}
		
		var drd= $.popup1({
           title:'' ,
           width:'682',
           padding:'0',
           content:'<div class="weixingbox appbox">\
               <div class="boxbg"><h2><img src="../s/img/App.jpg"/*tpa=https://xin/s/img/App.jpg*/ /><span>iPhone</span>版客户端</h2>\
               <div class="BoxClose" style="display: none"><a href="javascript:close_App();"><img src="../s/img/close.jpg"/*tpa=https://xin/s/img/close.jpg*/ /></a></div>\
               <div class="boxpic"><img src="../s/img/w03.jpg"/*tpa=https://xin/s/img/w03.jpg*/ /></div>\
               <div class="boxfont boxApp">扫描或在AppStore搜索"<span>信融财富</span>"下载</div>\
               </div>\
			   <div class="boxbg"><h2><img src="../s/img/android.jpg"/*tpa=https://xin/s/img/android.jpg*/ /><span>Android</span>版客户端</h2>\
               <div class="BoxClose"><a href="javascript:close_App();"><img src="../s/img/close.jpg"/*tpa=https://xin/s/img/close.jpg*/ /></a></div>\
               <div class="boxpic"><img src="../s/img/w04.jpg"/*tpa=https://xin/s/img/w04.jpg*/ /></div>\
               <div class="boxfont boxApp" style="text-align: left;padding-left: 35px;">扫描或<a href="../s/apk/Xinrong_V2.06_16.4.5.apk"/*tpa=https://xin/s/apk/Xinrong_V2.06_16.4.5.apk*/ style="color: #0078b6;text-decoration: underline;">本地下载</a>。<br/>在豌豆荚等应用市场搜索“<span>信融财富</span>”下载。</div>\
               </div>\
               </div>',
          
           init:function (d ) {
        	   
           }
			 
		 });

		 dd1=drd;
	}

	function close_App(){
		
		dd1.hidden();
	}
	
</script>







<style>


.g-nav1 li {

	width:99px; 
	
	text-align:center; 
	
	height:54px; 
	
	line-height:54px; 
	
	
	float:left;
}

.g-nav1{
	
	width:665px; 
	
	padding:10px 0 0 0;


	
}
.g-header{ border:none;}
.g-header .g-grid{ padding-top: 0px; padding-bottom:0px;}
.g-logo{ padding: 10px 0 10px 0; height:auto; background:none; line-height:0px;}
.PositionR{ position:relative;}
.main{ width:1100px; margin:0 auto;}
.h-navhe{ width:100%; min-width:1100px; background:#fff; height:49px;}
.hmenu_nav{ width:100%; min-width:1100px; background:#fff; position:relative; z-index:99; font-family:"微软雅黑";}
.hmenu_nav .logo{ padding:5px 0 10px 0;}
.hmenu_nav .logo .logo_font{ display:block; position:absolute; left:48px; top:0px; background:#ee8f07; line-height:18px; font-size:12px; color:#fff; -webkit-border-bottom-left-radius:4px; -moz-border-bottom-left-radius:4px; border-bottom-left-radius:4px; -webkit-border-bottom-right-radius:4px; -moz-border-bottom-right-radius:4px; border-bottom-right-radius:4px; padding:0 8px; text-decoration:none;}

.h_por{ position:fixed; left:0px; top:0px;}
.hmenu_nav .h_nav{ width:100%; height:49px; background:#fefdfd; border:solid #f5f3f3;border-width: 1px 0 0; box-shadow: 0px 3px 5px rgba(0,0,0,0.1);}
.hmenu_nav ul{ list-style:none;}
.hmenu_nav ul li{ padding:0 10px; float:left; position:relative;}
.hmenu_nav ul li a{ width:106px; height:49px; line-height:49px; text-align:center; font-size:16px; color:#444; display:block;}
.hmenu_nav ul li a .iconhot{ width:26px; height:16px; display:inline-block; background:url("../2.0/images/hot.png"/*tpa=https://xin/2.0/images/hot.png*//*tpa=https://xin/2.0/images/hot.png*/) no-repeat; position:absolute; right:10px; top:5px;}
.hmenu_nav ul li a .hh_icon{ width:34px; height:21px; display:inline-block; position:absolute; right:3px; top:-2px;}
.hmenu_nav ul li a .arrow{ width:13px; height:8px; display:inline-block; vertical-align:middle; background:url("../2.0/images/t-n.png"/*tpa=https://xin/2.0/images/t-n.png*//*tpa=https://xin/2.0/images/t-n.png*/) no-repeat; margin-left:5px;}
.hmenu_nav ul li:hover a{ color:#f60; text-decoration:none;}
.hmenu_nav ul li:hover a .arrow{ background:url("../2.0/images/t-n.png"/*tpa=https://xin/2.0/images/t-n.png*//*tpa=https://xin/2.0/images/t-n.png*/) no-repeat; transform:rotate(180deg); -ms-transform:rotate(180deg); -moz-transform:rotate(180deg); -webkit-transform:rotate(180deg); -o-transform:rotate(180deg);}
.hmenu_nav ul li.cur a{ color:#fff; background:#f60;}
.hmenu_nav ul li.cur a .arrow{ background:url("../2.0/images/t-n01.png"/*tpa=https://xin/2.0/images/t-n01.png*//*tpa=https://xin/2.0/images/t-n01.png*/) no-repeat; transform:rotate(180deg); -ms-transform:rotate(180deg); -moz-transform:rotate(180deg); -webkit-transform:rotate(180deg); -o-transform:rotate(180deg);}
.hmenu_nav ul li ul{ display:none;}
.hmenu_nav ul li:hover ul{ width:106px; background:#fff; border-bottom-left-radius:10px; border-bottom-right-radius:10px; position:absolute; left:10px; top:49px; display:block; padding:0 0 10px 0px;}
.hmenu_nav ul li:hover ul li{ width:100%; padding:0px;}
.hmenu_nav ul li:hover ul li a{ width:100%; padding:0px; border:0px; color:#444; font-size:14px; height:38px; line-height:38px; background:#fff;}
.hmenu_nav ul li:hover ul li a:hover{ border:0px; color:#f60;}
.hmenu_nav ul li:hover ul li a.cur{ border:0px; color:#f60;}

.hmenu_nav .h_nav .nav_r{ position:absolute; right:0px; top:0px; font-size:16px; color:#d8d8d8; line-height:49px;}
.hmenu_nav .h_nav .nav_r a{ text-decoration:none; padding:0 13px;}
.hmenu_nav .h_nav .nav_r a:hover{ color:#f60;}
.hmenu_nav .h_nav .nav_r a.cur{ color:#f60;}

.hmenu_nav .top_my{ padding-top:30px;}
.hmenu_nav .top_my .f-my{ display:inline-block; line-height:27px; margin-right:15px; font-size:14px; float:left;}

.hmenu_nav .f_exit{ font-size:13px; line-height:30px; color:#f60; float:left;}
.hmenu_nav .f_exit:hover{ color:#f60; text-decoration:none;}
.hmenu_nav .h-login-reg{ position:relative; width:100px; height:26px; line-height:26px; border:1px solid #f60; -webkit-border-radius:15px; -moz-border-radius:15px; border-radius:15px; display:none; float:left;}
.hmenu_nav .h-login-reg i{ width:50px; height:26px; display:block; position:absolute; left:0px; top:0px; background:#f60; color:#fff; -webkit-border-radius:15px; -moz-border-radius:15px; border-radius:15px; -webkit-transition: all .5s ease-in; -moz-transition: all .5s ease-in; transition: all .5s ease-in;}
.hmenu_nav .h-login-reg a{ display:inline-block; width:50px; text-align:center; text-decoration:none; position:relative; z-index:0; color:#444; -webkit-transition: all .5s ease-in; -moz-transition: all .5s ease-in; transition: all .5s ease-in;}
.hmenu_nav .h-login i{ left:0px;}
.hmenu_nav .h-login .flogin{ color:#fff;}
.hmenu_nav .h-reg i{ left:50px;}
.hmenu_nav .h-reg .freg{ color:#fff;}

</style>

<!--<div class="g-header" >
    <div class="g-grid">
        <div class="happynewyear"></div>
        <a class="g-logo" href="http://xin/" hidefocus="true" style=" position: relative;"><img src="/2.0/images/logo.gif" title="信融财富 - 安全融资理财平台"></a>
                <!--<ul class="g-nav">
            <li><a href="/" class="channel g-home" hidefocus="true">首页</a></li>
            <li><a href="/invest.shtml" class="channel g-invest" hidefocus="true">投资理财</a></li>
            <li><a href="https://xin/about/introduction" class="channel g-service" hidefocus="true">服务介绍</a></li>
            <li><a href="https://xin/about/security" class="channel g-security" hidefocus="true">安全保障</a></li>
            <li><a href="https://xin/about/index" class="channel g-about" hidefocus="true">关于信融财富</a></li>
            <li><a href="javascript:AA.RapidLogin.popup('https://xin/my');" class="channel g-my" hidefocus="true">我的账户</a></li>
        </ul>-->
        <!--    </div>
</div>-->

<div class="hmenu_nav">
  <div class="main PositionR">
    <div class="logo left PositionR"><a href="../index.htm" tppabs="https://xin/index.shtml"><img src="../2.0/images/logo.gif" tppabs="https://xin/2.0/images/logo.gif" /></a><a href="../2.0/views/about/shareholder.shtml.htm" tppabs="https://xin/2.0/views/about/shareholder.shtml" class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="../2.0/views/account/account_index.htm" tppabs="https://xin/2.0/views/account/account_index.shtml" class="f-my" id="nav_my">我的账户</a> <a id="j-logout" href="../index.shtml.htm" tppabs="https://xin/logout" class="f_exit" style="display:none;">退出</a><span class="h-login-reg h-login"><i></i><a href="../2.0/login2.0.html" tppabs="https://xin/2.0/login2.0.html" class="flogin">登录</a><a href="../2.0/views/account/register4.0.shtml.htm" tppabs="https://xin/2.0/views/account/register4.0.shtml" class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="../index.htm" tppabs="https://xin/index.shtml" id="nav_index">首页</a></li>
        <li><a href="../invest.shtml.htm" tppabs="https://xin/invest.shtml" id="nav_invest">投资<i class="arrow"></i></a>
        <ul>
        <li><a href="../2.0/calculator.html#finvest" tppabs="https://xin/2.0/calculator.html#finvest" target="_blank">投资计算器</a></li>
        </ul>
        </li>
        <li><a href="../2.0/action/xr_huahua/huahua.shtml.htm" tppabs="https://xin/2.0/action/xr_huahua/huahua.shtml" id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="../2.0/images/hh_icon.png" tppabs="https://xin/2.0/images/hh_icon.png" /></b></a>
          <ul>
            <li><a href="../2.0/action/xr_huahua/huahua.shtml.htm" tppabs="https://xin/2.0/action/xr_huahua/huahua.shtml" target="_blank">我要借款</a></li>
            <li><a href="../2.0/calculator.html" tppabs="https://xin/2.0/calculator.html" target="_blank">借款计算器</a></li>
          </ul>
        </li>
        <li><a href="../2.0/views/about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
            <li><a href="../2.0/views/about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" target="_blank">投资帮助</a></li>
          	<li><a href="../2.0/views/about/risk.shtml.htm" tppabs="https://xin/2.0/views/about/risk.shtml" target="_blank">风险控制</a></li>
            <li><a href="../2.0/views/about/laws_regulations.shtml.htm#navLaws" tppabs="https://xin/2.0/views/about/laws_regulations.shtml#navLaws" target="_blank">法律法规</a></li>
          </ul>
        </li>
        <li><a href="../2.0/views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="../2.0/views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about_index">公司简介</a></li>
            <li><a href="../2.0/views/about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml">团队介绍</a></li>
            <li><a href="../2.0/views/about/service_data.shtml.htm" tppabs="https://xin/2.0/views/about/service_data.shtml">运营数据</a></li>
            <li><a href="../2.0/views/about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml">合作机构</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="../2.0/vip.html" tppabs="https://xin/2.0/vip.html" id="nav_vip">VIP特权</a></div>
    </div>
  </div>
</div>



<script>

(function() {
	
	var channel=location.href;

	var index=channel.lastIndexOf("/");

	if(index>0){
		channel=channel.substring(index+1,channel.length);
		
		if(location.href.indexOf("/my/")>0){
			$('#nav_my').css("color","#ea5511");
		}else if(location.href.indexOf("/about/")>0){
			$('#nav_index').css("color","#ea5511");
		}else if(location.href.indexOf("/gift/")>0){
			$('#nav_gift').css("color","#ea5511");
		}else{
			$('#nav_'+channel).css("color","#ea5511");
		}
		
		
	}
})();
$(document).ready(function(){
	$(".h-login-reg a").mouseenter(function(){
		if($(this).is(".flogin"))
			{
				$(".h-login-reg").addClass("h-login");
				$(".h-login-reg").removeClass("h-reg");
			}
			else{
				$(".h-login-reg").addClass("h-reg");
				$(".h-login-reg").removeClass("h-login");
				}
		});
});

$(function(){
    // 固定导航
	$(window).scroll(function(){
		t=$(document).scrollTop();
		if(t>=0){
			$("#hmenu_nav").removeClass("h_por").css("top","78px;");
			}
		if(t>=60){
			$("#hmenu_nav").addClass("h_por").css("top","0px;");
			}
		});
})
</script><div class="black15"></div>
<div class="main">
    <div class="g-grid">
        

<style type="text/css">.side-nav #side-nav-zz b.iconReward{ width:26px; height:18px; 	background-image: url("../2.0/images/account/reward/prise.png"/*tpa=https://xin/2.0/images/account/reward/prise.png*//*tpa=https://xin/2.0/images/account/reward/prise.png*/);display:inline-block; margin:0 0 5px 5px;}</style>
<div class="side-nav g-well g-left">
    <h3><a id="side-nav-index" class="item" href="../2.0/views/account/account_index.shtml.htm" tppabs="https://xin/2.0/views/account/account_index.shtml">账户首页</a></h3>
    <h3><a id="side-nav-xcb" class="item xcb" href="../2.0/xincunbao.shtml.htm" tppabs="https://xin/2.0/xincunbao.shtml">信 存 宝<i>R</i></a></h3>
    <h3><a id="side-nav-invest" class="item current" href="invest.htm" tppabs="https://xin/my/invest">投资管理</a></h3>
    <h3><a id="side-nav-borrowing"  class="item borrowing" href="../2.0/views/huahua/huahua.html" tppabs="https://xin/2.0/views/huahua/huahua.html">信融花花</a></h3>
    <h3 style="display:none"><a id="side-nav-cash" class="item" href="recharge.htm" tppabs="https://xin/my/recharge">充值提现</a></h3>
    <h3><a id="side-nav-consume" class="item" href="consume.htm" tppabs="https://xin/my/consume">收支查询</a></h3>
    <h3><a id="side-nav-setting" class="item" href="../2.0/views/account/account_settings.shtml.htm" tppabs="https://xin/2.0/views/account/account_settings.shtml">账户设置</a></h3>
    <h3 ><a id="side-nav-msg" class="item" href="msg.htm" tppabs="https://xin/my/msg">我的消息</a></h3>
</div>        <div class="main-section g-right">
            <div class="g-mod g-well income-stats" style="background-color: #fff;">
    <h3 class="greet" style="padding-left: 0px;padding-top: 0px;padding-bottom: 10px;font-family: arial;">
        下午好，！
    </h3>
    
    <div class="ui-tip info" style="color:#999;">实收收益中已扣除投资服务费 <a href="../2.0/views/about/help.shtml-tab=tab3&href=c1.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab3&href=c1" class="blue" target="_blank">细则</a></div>
   
   	<div style="margin-left: 15px;">
   		<div style="margin-top: 15px;">
	   		您累计投资
	   		<font color="red" style="font-weight: bold;" id="invest_num">10</font> 笔，
	   		共计 <font color="red" style="font-weight: bold;" id="invest_all_money"> 10000</font> 元
	   	</div>
	   	
	   	<!--<div style="margin-top: 15px;">
	   		待回款总额：<font style="font-weight: bold;" id="refund_all"> </font> 元 
	   		（本金：<font id="refund_money"></font>  元 ，收益：<font id="refund_retain"></font> 元）
	   	</div>-->
   	</div>
   
    <div style="background-color: #ECF5FD;margin-top: 20px;height: 25px;">
    	<p style="font-size: 12px;font-weight: 700;padding-top: 3px;margin-left: 12px;float: left;">投资收益统计</p>
    </div>
    
    <div style="margin-left: 15px;">
    	<div style="margin-top: 15px;">
	   		收益中总额：  <font id="earning_all"> 150元</font><font style="font-weight: bold;"> （</font>
        	<font id="earning_ct"></font>1 笔，本金 
        	<font id="earning_money">1000</font> 元，待收收益 <font id="earning_retain">500</font> 元<font style="font-weight: bold;">）</font>
	   	</div>
	   	<div style="margin-top: 15px;">
	   		已回款总额： <font id="earn_all">100</font>  元<font style="font-weight: bold;"> （</font><font id="earn_ct">1</font> 笔，本金 <font id="earn_money">2000</font> 元，
	   		收益 <font id="earn_retain">150</font> 元<font style="font-weight: bold;">）</font>
	   	</div>
	   	<div style="margin-top: 15px;">
	   		逾期中总额： <font id="overdue_all">0</font>  元<font style="font-weight: bold;"> （</font> <font id="overdue_ct">0</font> 笔，本金 <font id="overdue_money">1000</font> 元，收益 <font id="overdue_retain">100</font> 元<font style="font-weight: bold;">）</font>
	   	</div>
    </div>
   
   	<div style="border-bottom: dotted 1px #ccc;width: 600px;margin-top: 12px;margin-left: 10px;"></div>
   	
   	<div style="margin-left: 15px;">
   		<div style="margin-top: 15px;">
	   		<span>已回款实收收益：  <font id="all_retain">100</font>  元</span>
	   		<span style="margin-left: 60px;">信存宝累计收益：  <font id="xcb_total_income">120</font>  元</span>
	   		<span style="margin-left: 60px;">抵扣礼金合计：<font id="reward_use">200</font> 元 </span>
	   		<!--<a href="#" class="blue">礼金明细</a> -->
	   		<span style="margin-left: 10px;color: #666">（过期回收礼金：<font id="reward_out">105</font> 元）</span>
	   	</div>
	   	
	   	<div style="margin-top: 20px;">
	   		<span style="font-weight: bold;">您在信融财富已累计获得 <font color="red" id="all">500</font> 元收益 !<span class="invest_msg"><img src="../s/images/info.png" tppabs="https://xin/s/images/info.png" /><span class="i-title"><b><img src="../2.0/images/bicon.png" tppabs="https://xin/2.0/images/bicon.png"></b>不包含投资未回款收益</span></span></span>
	   	</div>
   	</div>
</div>            <div class="g-mod all-invests">
    <h3 class="no-border">已投资项目列表</h3>
    <div class="search">
        <label for="sl-time" class="first">投资时间：</label>
        <select name="sl-time" id="sl-time">
            <option value="0">最近一周</option>
<option value="1" >最近一月</option>
<option value="2" >最近三月</option>
<option value="4" selected="selected">全部</option>
<option value="3">指定日期</option>        </select>
        <input type="hidden" id="time" name="time" value="4"/>
        <label for="state">回款方式：</label>
        <select name="refundType" id="refundType">
            <option value="0">全部</option>
            <option value="4">按月付息</option>
            <option value="2">等额本息</option>
            <option value="1">到期一次性</option>
        </select>
        <label for="state">状态：</label>
        <select name="state" id="state">
            <option value="0">不限</option>
            <option value="1">收益中</option>
            <option value="2">逾期中</option>
            <option value="3">正常回款</option>
            <option value="4">提前回款</option>
            <option value="5">逾期回款</option>
        </select>
        
        <div class="pk-time g-hide">
    <label for="s-time">开始时间：</label>
    <input type="text" id="s-time" class="Wdate" readonly="readonly" onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'e-time\')||\'2017-09-18\'}'});"/>
    <label for="e-time" class="e-time">结束时间：</label>
    <input type="text" id="e-time" class="Wdate" readonly="readonly" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'s-time\')}',maxDate:'2017-09-18'});"/>
    <a class="ui-button ui-button-white ui-button1" href="javascript:;">查询</a>
</div>
<input type="hidden" id="stime" name="stime" value=""/>
<input type="hidden" id="etime" name="etime" value=""/>    </div>
   
    <table class="wgt-datagrid">
    <thead class="wgt-datagrid-header">
    <tr><th class="title first">投资项目</th><th class="odate">投资时间</th><th class="money g-money">投资金额</th><th class="deadline">期限</th><th class="rate">预期年化收益率</th><th class="gains g-money">到期实收收益</th><th class="idate">回款日期</th><th class="refund_type">回款方式</th><th class="state">状态</th><th class="contract last"> &nbsp;&nbsp;操作   </th></tr>
    </thead>
    <tbody class="wgt-datagrid-container"><th style="margin-left:5px">亚投宝</th><th class="odate">2015-08-09</th><th class="money g-money">5000</th><th class="deadline">3个月</th><th class="rate">1.7%</th><th class="gains g-money">300</th><th class="idate">2015-10-22</th><th class="refund_type">支付宝</th><th class="state">已回款</th><th class="contract last"> &nbsp;&nbsp;操作   </th></tr></td></tr></tbody>
</table>
    <div class="wgt-pagination"></div>    
<div id="show_stat">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当页统计：共 <strong class="g-out">10</strong> 笔投资记录，投资总额合计<strong class="g-out">10000</strong> 元，到期实收收益合计 <strong class="g-out">350</strong> 元</div>
</div>            <div class="g-mod ad">
<a href="https://xin/action/reg_invite" target="_blank"><img src="https://xin/s/img/a/201301191036_814x90.jpg?v=1591"  alt="信融财富火热上线三重礼！" title="信融财富火热上线三重礼！"  /></a>
</div>        </div>
    </div>
</div>

<div class="black25"></div>
<div id="wgt-dialog-loan-info-wrapper" class="g-hide">
    <div class="wgt-dialog wgt-dialog-loan-info">
        <div class="loan-info">
            <h3 class="loan-name">
               <span class="loan-sn"></span>
            </h3>
            <table class="loan-summary">
                <tr>
                    <td>投资金额：<span class="invest-money">100</span> 元</td>
                    <td>年化收益率：<strong class="invest-rate"></strong>%</td>
                    <td>投资期限：<strong class="invest-deadline"></strong>个月</td>
                    <td rowspan="2" class="btn-invest"><a href="javascript:;" class="ui-button ui-button-orange">立即投资</a></td>
                </tr>
                <tr>
                    <td>到期收益：<span class="expect-money"></span> 元</td>
                    <td>收益方式：到期收取本息</td>
                    <td>起 息 日：<label class="value-date"></label></td>
                </tr>
            </table>
            <div class="section">
                <p>担保方：<span class="company-name"></span> <a href="#" class="blue company-intro" target="_blank">公司介绍</a></p>
                <p>违约代偿方式：VIP会员逾期下一工作日全额本息代偿，普通用户逾期30日后全额本息代偿。 <a href="../help/faq/2.htm#8" tppabs="https://xin/help/faq/2#8" class="blue" target="_blank">查看细则</a></p>
            </div>
        </div>
        <div class="serve-intro">
            <h4>服务简介</h4>
            <p class="ti bk">信<i class="g-dian">·</i>无忧贷是信融财富为投资人和融资方打造的投融资中介服务。该服务以投资人利益为出发点，力争为投资人提供一款有安全保障、省时省心、且收益可观的服务旗舰品。信<span class="g-dian">·</span>无忧贷作为服务提供方，负责协调融资方、投资人以及担保方，并作为见证方见证以上各方的投融资和担保行为。  <a href="../about/introduction.htm" tppabs="https://xin/about/introduction" class="more blue" target="_blank">了解更多></a></p>
        </div>
    </div>
</div>
<div id="wgt-dialog-loan-contract-error-wrapper" class="g-hide">
    <div class="wgt-dialog wgt-dialog-loan-info" style="width:250px;height:70px">
        <div class="serve-intro">
            <h4 id="contract-error-msg" style="text-align: center;">合同尚未完成保全！</h4>
        </div>

    </div>
</div>
<div id="wgt-dialog-income-detail-wrapper" class="g-hide">
    <div class="wgt-dialog wgt-dialog-income-detail" style="width:700px;height:347px;">
        <table class="income-detail">
            <thead>
            <tr>
                <th colspan="4">
                    <strong class="sn"></strong> 状态： <span class="rStatus">逾期回款</span><span class="days"></span>
                    <br/>
                    <span class="g-in">总收益： <span class="total g-out"></span> 元</span> 常规收益 <span class="interest"></span> 元，罚息收益 <span class="binterest"></span> 元，违约金 <span class="breach"></span> 元
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td colspan="3" style="height: 64px;">
                    到期实收收益：<span class="earnTotal g-out"></span> 元
                </td>
                <td rowspan="2" style="padding-top:30px;">
                    投资服务费：<span class="pay g-out"></span> 元
                    <p>（收益的<span class="rate"></span>%）</p>
                                        <span class="ui-tip info">
                        开通VIP可降至<span class="hl">0%~<span class="vipRate"></span>%</span>
                        <a href="../2.0/vip.html" tppabs="https://xin/2.0/vip.html" class="blue" target="_blank">详情</a>
                    </span>
                                    </td>
            </tr>
            <tr>
                <td style="width: 154px;height: 62px;">常规净收益：<span class="earnInte"></span> 元</td>
                <td style="width: 149px">罚息净收益：<span class="earnBinte"></span> 元</td>
                <td style="width: 119px">违约金：<span class="breach"></span> 元</td>
            </tr>
            </tbody>
        </table>
        <a class="ui-button ui-button-orange" href="javascript:;">关 闭</a>
    </div>
</div><div id="wgt-dialog-trans-wrapper" class="g-hide">
	<fieldset id="f_trans" class="ui-form" style="width: 330px;padding-left: 75px;height: 255px;margin-top: 12px;">
		<h3 class="wgt-dialog-title" style="font-size:14px;" id="show_title"></h3>
	   
		<div class="ui-form-line" style="margin-top:10px;">
			<label class="ui-form-label">积分补偿金总额：</label>
			<font>不超过 </font><strong class="g-out gift-money" id="b_money"></strong> 元
        </div>
	   
		<div class="ui-form-line" style="margin-top:6px;">
	   		<label class="ui-form-label">转让服务费总额：</label>
	        <label >收益的10%</label> 
        </div>
	   
        <div class="ui-form-line" style="margin-top:6px;">
        	<label class="ui-form-label" >剩余期限：</label>
        	<label class="g-out" style="color:#000;" id="b_deadline"> （总期限<font id="s_deadline"></font>个月）</label> 
    	</div>
	   
    	<div class="ui-form-line" style="margin-top:6px;">
    		<label for="safepass" class="ui-form-label" >交易密码：</label>
    		<input type="password" name="safepass" id="ip_trade_pass" class="ui-form-input" style="width: 120px;" maxlength="16"  autocomplete="off"/>
	        <a href="../2.0/views/account/back_password.shtml-tab=2.htm" tppabs="https://xin/2.0/views/account/back_password.shtml?tab=2" class="blue" target="_blank">忘记交易密码？</a>
	        <div class="ui-tip" id="error_tip" style="margin-left:75px;"></div>
        </div>
	   
        <div class="ui-form-line" style="margin-top:8px;">
        	<span style="padding-right:10px;"><span style="width:14px; height:14px; background:url(/2.0/images/tip-s5a01e083c6.png) no-repeat; background-position:-1px -247px; display:inline-block; vertical-align:middle; margin:0 5px 3px 3px;"></span>确认转让后不可撤消</span>
        	<span id="div_auto_invest">
	   			<input type="checkbox" id="auto_close_invest" checked="checked" style="vertical-align: middle;">
	   			<label>关闭自动投资</label>
            </span>
        </div>
	   
        <div class="ui-form-line ui-form-action" style="margin-top:20px;" >
        	<input type="text" class="g-hide" id="iefix"/>
	        <input id="btn_sub" type="submit" class="ui-button ui-button-orange" tabindex="3" value="确认转让"/>
	        <input id="btn_cancal" type="submit" class="ui-button ui-button-white" style="margin-left: 5px;" tabindex="3" value="取消"/>
	        <em class="ui-loading">正在处理,请稍等...</em>
        </div>
	</fieldset>
</div><style>
.DocBox{ margin:0 15px;}
.DocBox h2{ height:40px; line-height:40px; border-bottom:1px solid #dcdcdc; font-weight:bold; font-size:14px;}
.DocBox h2 span{ display:inline-block; padding-left:15px; /*color:#999;*/ font-weight:normal; font-size:12px;}
.DocBox ul{ border-bottom:1px solid #dcdcdc; margin:0 10px; padding:10px 0;}
.DocBox ul li{ width:48%; float:left; line-height:28px;}
.DocBox .Dotable{ line-height:28px; margin:10px;}
.DocBox .Dotable table tbody tr:hover{ background:#F5F5F5;}
.DocBox .Dotable table td,.DocBox .Dotable table th{ padding:0 10px; text-align:left;}
.DocBox .Coflip{ text-align:right; line-height:35px;}
.DocBox .Coflip a{ padding:0 4px;}
</style>


<div id="refund_plan_dlg" class="g-hide">
<div class="DocBox">
<h2><font id="loan_type"></font>-<font id="rd_sn"></font>回款计划<span>回款方式：<font id="refund_type"></font></span>
  <span>预期年化：<font id="refund_rate"></font>%</span><span>融资期限：<font id="deadline"></font></span>
</h2>
<ul>
<li>本金总额：<span class="red" id="rd_total_money"></span> 元</li>
<li>到期收益总额：<span class="red" id="rd_total_interest"></span> 元</li>
<li>到期服务费总额：<span class="red" id="rd_total_manage"></span> 元</li>
<li>到期实收收益总额：<span class="red" id="rd_total_real_interest"></span> 元</li>
<li>已回款：<span class="red" id="rd_refund_money"></span> 元（<font id="rd_back_num"></font>期）</li>
<li>待回款：<span class="red" id="rd_plan_money"></span> 元（<font id="rd_plan_num"></font>期）</li>
<div class="clear"></div>
</ul>
<div class="Dotable">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<thead>
  <tr>
    <th>期数</th>
    <th>时间</th>
    <th>本金</th>
    <th>收益</th>
    <th>本金+收益</th>
    <th>服务费</th>
    <th>回款金额</th>
  </tr>
  </thead>
  <tbody id="rd_tbody">
 
  </tbody>
</table>
<div class="Coflip"><a href="javascript:Xinrong_RefundPlan.prePage();" id="rd_pre">上一页</a> <a href="javascript:Xinrong_RefundPlan.nextPage();" href="#" id="rd_next">下一页</a></div>
</div>

</div>

</div>
<style>
.zrdetails {
	padding: 10px 0px;
}

.d-dialog .zrdetails h1 {
	height: 35px;
	line-height: 35px;
	border-bottom: 1px solid #e3e3e3;
	font-size: 14px;
	margin-bottom: 10px;
	padding:0px;
	background:none;
	color:#000;
}

.zrdetails h1 span {
	display: inline-block;
	padding-left: 30px;
	color: #999;
	font-size: 12px;
	font-weight: normal;
}

.zrdetails .bor {
	border-bottom: 1px solid #e3e3e3;
	color: #999;
	margin-bottom: 10px;
}

.zrdetails ul {
	margin: 0px;
	margin: 0px 0 0px 0px;
	padding: 5px 0 5px 0;
	list-style: none;
}

.zrdetails ul li {
	width: 195px;
	height: 30px;
	line-height: 30px;
	float: left;
	font-size: 12px;
}

.zrdetails ul li.w01 {
	width: 186px;
}
.zrdetails ul li.w02{
	width:268px;
}
.zrdetails ul li.w03{
	width:100%;
}
.zrdetails ul li.gray{
	color:#999;
}
</style>

<div id="wgt-dialog-trans-detail-wrapper" class="g-hide" >

<div class="zrdetails" >
<h1><font id="trans_detail_loan_type"></font>-<font id="trans_detail_rd_sn"></font>转让详情<span>状态：<font id="trans_detail_status">转让成功</font></span></h1>
<ul>
	<li>原期限：<font class="red" id="trans_detail_deadline"></font>个月</li>
	<li>最长持有期限：<font id="trans_detail_leftDays" style="color: #999;">出让成功后查看</font></li>
    <li class="w02">投资时获得积分：<span id="loanScore">-</span>分</li>
	<li>本金总额：<font  class="red" id="trans_detail_all_money"></font> 元</li>
	<li>已收回本金额：<font class="red" id="trans_detail_back_money" style="color: #999;">全部到账后查看</font></li>
    <li class="w02 gray">vip等级越高，积分价值越高 <a href="../gift-flag=vipChangeInfo.htm#gift_type_4" tppabs="https://xin/gift?flag=vipChangeInfo#gift_type_4" class="red">兑换礼金></a></li>
	<div class="clear"></div>
</ul>
<ul class="bor">
	<li>申请时间：<font id="trans_detail_apliy_time"></font></li>
	<li>开始时间：<font id="trans_detail_start_time">出让成功后查看</font></li>
	<li class="w02">结束时间：<font id="trans_detail_end_time">出让成功后查看</font></li>
	<div class="clear"></div>
</ul>
<ul>
	<li>原收益：<font id="trans_detail_interest"></font></li>
	<li>已获收益：<font id="trans_detail_refund_interest" style="color: #999;">全部到账后查看</font></li>
	<li class="w02">转让收益：<font id="trans_detail_transfer_interest" style="color: #999;">全部到账后查看</font></li>
	<li>投资服务费：<font id="trans_detail_invest_manage" style="color: #999;">出让成功后查看</font></li>
	<li>转让服务费：<font id="trans_detail_transfer_manage" style="color: #999;">出让成功后查看</font></li>
	<li class="w02">积分补偿金：<font id="trans_detail_socre_dis" style="color: #999;">出让成功后查看</font></li>
	<li class="w03"><b>最终收益：</b><span class="red"><font id="trans_detail_retain" style="color: #999;">出让成功后查看</font></span><span><font style="color: #999;">【最终收益=已获收益-投资服务费-转让服务费-积分补偿金】</font></span></li>
	<div class="clear"></div>
</ul>
<p>
	<center><a  class="ui-button ui-button-orange" href="javascript:;" id="btn_trans_detail_close">确定</a></center> 
</p>
</div>



</div>
<div class="clear"></div>
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="../2.0/views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" target="_blank">关于我们</a></h2><p><a href="../2.0/views/about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml" target="_blank">团队介绍</a></p><p><a href="../2.0/views/about/xr_history.shtml.htm" tppabs="https://xin/2.0/views/about/xr_history.shtml" target="_blank">发展历程</a></p><p><a href="../2.0/views/about/xr_credit.shtml.htm" tppabs="https://xin/2.0/views/about/xr_credit.shtml" target="_blank">资质荣誉</a></p><p><a href="../2.0/views/about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml" target="_blank">合作机构</a></p></li>
<li><h2><a href="../2.0/views/about/help.shtml.htm" tppabs="https://xin/2.0/views/about/help.shtml" target="_blank">帮助中心</a></h2><p><a href="../2.0/views/about/guide/guide1.shtml.htm" tppabs="https://xin/2.0/views/about/guide/guide1.shtml" target="_blank">新手指引</a></p><p><a href="../2.0/views/about/help.shtml-tab=tab1.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab1" target="_blank">问题答疑</a></p><p><a href="../2.0/views/about/help.shtml-tab=tab10.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10" target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum-49-1.html'" tppabs="http://bbs.xinrong.com/forum-49-1.html" target="_blank">意见反馈</a></p></li>
<li><h2><a href="../2.0/views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" target="_blank">信息中心</a></h2><p><a href="../2.0/views/about/xr_announcement.shtml.htm" tppabs="https://xin/2.0/views/about/xr_announcement.shtml" target="_blank">平台公告</a></p><p><a href="../2.0/views/about/media_report.shtml.htm" tppabs="https://xin/2.0/views/about/media_report.shtml" target="_blank">媒体报道</a></p><p><a href="../2.0/views/about/activitysum.shtml.htm" tppabs="https://xin/2.0/views/about/activitysum.shtml" target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum.php'" tppabs="http://bbs.xinrong.com/forum.php" target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="../2.0/vip.html" tppabs="https://xin/2.0/vip.html" target="_blank">VIP特权</a></p></p><p><a href="../action/jf.htm" tppabs="https://xin/action/jf" target="_blank">抽奖</a></p></li>
</ul>
</div>
<div class="footer_contact left">
<h2>网贷有风险    投资需谨慎</h2>
<h3><span ><i class="AllIcon"></i>400-777-9888</span></h3>
<p>周一至周五9:00 - 18:30</p>
<p class="gray">官方QQ群：167877489</p>
<div class="con_pic">
<ul>
<li class="fb01"><a href="javascript:void(0)"><i class="AllIcon icon01"></i></a>
<ul class="weix_box"><b></b><li><p><img src="../s/img/w02.jpg" tppabs="https://xin/s/img/w02.jpg" width="100"></p><h4>关注服务号</h4></li><li><p><img src="../s/img/w05.jpg" tppabs="https://xin/s/img/w05.jpg" width="100"></p><h4>关注订阅号</h4></li><li><p><img src="../s/img/w06.jpg" tppabs="https://xin/s/img/w06.jpg" width="100"></p><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'" tppabs="http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5" title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><p><img src="../2.0/images/qq.png" tppabs="https://xin/2.0/images/qq.png" width="120"></p><h4>QQ号：4007779888</h4></li>
</ul></li>
<li class="fb03"><a href="javascript:if(confirm('http://weibo.com/u/2719695463?profile_ftype=1&is_all=1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0'" tppabs="http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0" target="_blank" title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="../s/img/w07.jpg" tppabs="https://xin/s/img/w07.jpg" width="122" class="bimg" /><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
<div class="black10"></div>
</div>
</div><!--end-->
<div class="clear"></div>
<div class="footer_pic">
<ul>
<li><a target="_blank" href="javascript:if(confirm('http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86'" tppabs="http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86" title="深圳市市场监督管理局企业主体身份公示"><i class="icon01"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN'" tppabs="https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN" title="信融财富是中国第一家引入VeriSign 256位SSL加密的融资理财平台。您的隐私及个人资料安全已受最高级别的保护。"><i class="icon03"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401'" tppabs="http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401" title="中国信用企业"><i class="icon02"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://search.szfw.org/cert/l/CX20140805008628008716  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://search.szfw.org/cert/l/CX20140805008628008716'" tppabs="https://search.szfw.org/cert/l/CX20140805008628008716" title="诚信网站"><i class="icon04"></i></a></li>
<li><a title="腾讯云安全认证"><i class="icon05"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business'" tppabs="http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business" title="安全联盟认证网站"><i class="icon06"></i></a></li>
</ul>
</div>
<div class="clear"></div>
<div class="footer_font main"><p> <a href="../about/privacy.htm" tppabs="https://xin/about/privacy" target="_blank">隐私保护申明</a> 　|　 <a href="../about/agreement.htm" tppabs="https://xin/about/agreement" target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright Xinrong.com All Rights Reserved   信融财富投资管理有限公司</div>
</div>

<style>
.d-dialog{ border: 1px solid #0078b5; background:#fff;}
.d-dialog h1{ height: 30px; line-height: 30px; padding: 0 28px 0 10px; color: #fff; background: #74b4e2; background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #74b4e2), color-stop(100%, #3d8fca) ); background-image: -webkit-linear-gradient(#74b4e2, #3d8fca); background-image: -moz-linear-gradient(#74b4e2, #3d8fca); background-image: -o-linear-gradient(#74b4e2, #3d8fca); background-image: linear-gradient(#74b4e2, #3d8fca); position:relative; font-size:14px;}
.d-dialog h1 .d-close { padding: 0; position:absolute; top: 4px; right: 4px; width: 21px; height: 21px; line-height: 21px; font-size: 25px; _font-size: 20px; color: #fff; text-align: center; font-family: Helvetica, STHeiti; _font-family: Tahoma, '\u9ed1\u4f53', 'Book Antiqua', Palatino;text-decoration: none; display:block;outline: none;}

.d-dialog .call_font{ padding:50px 40px 20px 40px; line-height:24px; font-size:16px;width:350px}
.d-dialog .call_sub{ padding:20px 0 0 0; text-align:center;}
.d-dialog .call_sub .sub01{ width:156px; height:45px; line-height:43px; text-align:center; background:#15a32c; font-size:20px; display: inline-block; color: #fff;}
.d-dialog .call_sub .sub02{ width:156px; height:45px; line-height:43px; text-align:center; background:#c8c8c8; font-size:20px; display: inline-block; color: #fff;}
.d-dialog .c_font{ text-align:center; padding-left:0px; padding-right: 0px;}
</style>
<script>
$(function(){
	//免费咨询电话
	/*$('.ftel').click(function(){
		$.dialog({
			id:'tel',
			content:$('#free_tel_box').html(),
			initialize:function(){
				var _dialog = this;
				$('.d-dialog #free_tel_btn').click(function(){
					$.ajax({
						url:'../v2/communication/free_consulation.jso'/*tpa=https://xin/v2/communication/free_consulation.jso*/,
						type:'post',
						dataType:'json',
						success:function(result){
							if(result.state == 0){
								$('.d-dialog #free_tel_btn').removeClass().addClass('sub02').html('请接听');
								$('.d-dialog #free_tel_btn').unbind('click').click(function(){
									_dialog.close();
								});
							}else if(result.state == 1009){
								_dialog.close();
								AA.RapidLogin.popup();
							}else if(result.state==300){
								_dialog.close();
								$.dialog({
									id:'tel_msg',
									content:$('#free_tel_msg_box').html(),
									initialize:function(){
										var _dialog = this;
										$('.d-dialog #msg_view').html('当日400免费呼入次数已超出限制，请自行联系客服4007779888');
										$('.d-dialog #free_tel_msg_btn').click(function(){
											_dialog.close();
										});
									}
								});
							}else{
								_dialog.close();
								$.dialog({
									id:'tel_msg',
									content:$('#free_tel_msg_box').html(),
									initialize:function(){
										var _dialog = this;
										$('.d-dialog #msg_view').html(result.msg);
										$('.d-dialog #free_tel_msg_btn').click(function(){
											_dialog.close();
										});
									}
								});
							}
						}
					});
				});
			}
		});
	});*/
	
	
	$.ajax({
		url:'../v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,
	    type:'GET' ,
	    dataType:'json',
	    success:function (result) {
	    	if(result.state==0){
	    		G_ENV_VAR.IS_CHECKED_EMAIL=result.isAuthEmail==0?false:true;
	    		G_ENV_VAR.IS_CHECKED_MOBILE=result.isAuthMobile==0?false:true;
	    		G_ENV_VAR.IS_CHECKED_IDENTIFICATION=result.isAuthIden==0?false:true;
	    		G_ENV_VAR.IS_CHECKED_BANKCARD=result.isAuthBankCard==0?false:true;
	    		G_ENV_VAR.UNAME=result.uname;
	    		G_ENV_VAR.UID=result.uid;
	    		G_ENV_VAR.VIP=result.vip;

	    		if(G_ENV_VAR.UID!=''&&G_ENV_VAR.UID>0){
	    			$('#j-logout').show();
					
	    		}

	    	}else if(result.state == 1009){
			    		$('.h-login-reg').show();
			    	}

	    }
	});
});
</script>
<div id="free_tel_box" style="display:none;">
<div class="call_font" >
点击通话，<font  >致电给信融财富</font>，
稍后您将接到回拨电话，此次通话对您<span class="blue">完全免费</span>，请放心接听！
</div>
<div class="call_sub"><a id="free_tel_btn" href="javascript:void(0)" class="sub01">通话</a></div>
<div class="black20"></div>
</div>
<div id="free_tel_msg_box" style="display:none;">
<div class="call_font c_font" id="msg_view">
</div>
<div class="call_sub"><a id="free_tel_msg_btn" href="javascript:void(0)" class="sub01">确定</a></div>
<div class="black20"></div>
</div>



<script src="../s/vendor/artDialog/jquery.artDialog-min.js-v=1591" tppabs="https://xin/s/vendor/artDialog/jquery.artDialog-min.js?v=1591"></script>
<script src="../s/vendor/artDialog/dialog_ex.js-v=1591" tppabs="https://xin/s/vendor/artDialog/dialog_ex.js?v=1591"></script>
<script src="../s/js/biz/dlg_login-min.js-v=1591" tppabs="https://xin/s/js/biz/dlg_login-min.js?v=1591"></script>
<input type="hidden" id="login_redirect" value=""/>
<script>AA.View.TopNav.init();</script>


<script type="text/javascript" src="../2.0/js/channel.js" tppabs="https://xin/2.0/js/channel.js"></script> 

<script>
var _hmt = _hmt || [];
(function() {
	
	var agent=navigator.userAgent;
	
	if(agent.indexOf('android')==-1&&agent.indexOf('Android')==-1){
		var hm = document.createElement("script");
		hm.src = "../../hm.baidu.com/hm.js-a5ef11ea1e672f6b504ec7fe5a92cf30"/*tpa=https://hm.baidu.com/hm.js?a5ef11ea1e672f6b504ec7fe5a92cf30*/;
		 var s = document.getElementsByTagName("script")[0]; 
		s.parentNode.insertBefore(hm, s);
	}
	
  
})();
</script>



<script src="../s/vendor/datepicker/WdatePicker.js-v=1591" tppabs="https://xin/s/vendor/datepicker/WdatePicker.js?v=1591"></script>
<script src="../s/js/widget/datagrid-min.js-v=1591" tppabs="https://xin/s/js/widget/datagrid-min.js?v=1591"></script>
<script src="../s/js/widget/pagination-min.js-v=1591" tppabs="https://xin/s/js/widget/pagination-min.js?v=1591"></script>
<script src="../s/js/www/user-min.js-v=1591" tppabs="https://xin/s/js/www/user-min.js?v=1591"></script>
<script src="../s/js/v2/user/trans.js-v=1591" tppabs="https://xin/s/js/v2/user/trans.js?v=1591"></script>
<script src="../s/js/v2/user/refund_plan.js-v=1591" tppabs="https://xin/s/js/v2/user/refund_plan.js?v=1591"></script>
<script src="../s/js/v2/user/trans_detail.js-v=1591" tppabs="https://xin/s/js/v2/user/trans_detail.js?v=1591"></script>
<script>AA.User.Invest.init();</script>
</body>
</html>
  </body>
</html>