<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信融财富</title>
<link href="css/basic.css"  rel="stylesheet" type="text/css" />
<link href="css/dialog.css"  rel="stylesheet" type="text/css" />
<link href="css/global.css"  rel="stylesheet" type="text/css" />
<!--<script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->
<!-- <script type="text/javascript" src="/2.0/js/jquery-1.10.2.min.js"></script> -->
<!-- <script type="text/javascript" src="js/jquery-1.4.2.js" ></script> -->
<script type="text/javascript" src="js/jquery-1.10.2.js" ></script>
<script type="text/javascript">
var G_ENV_VAR = {
	WWW:'',
	STATIC:'',
	BBS:'',
	UID:'',
	UNAME:'',
	MSG_NUM:'',
	VIP: '0',
	IS_CHECKED_EMAIL:'false',
	IS_CHECKED_MOBILE: 'false',
	HAS_TRADE_PASSWORD: 'false',
	IS_CHECKED_IDENTIFICATION: 'false',
	IS_CHECKED_BANKCARD: 'false'
};
</script>
<script type="text/javascript" src="js/jquery-1.10.2.min.js" ></script> 
<script type="text/javascript" src="../s/js/AA.base-min.js" ></script>
<script type="text/javascript" src="../s/vendor/artDialog/jquery.artDialog.js" ></script>
<script type="text/javascript" src="js/mod/login.js" ></script>
<script type="text/javascript" src="js/tytabs.jquery.new.js" ></script>
<script type="text/javascript" src="js/XR.base.js" ></script>
<script type="text/javascript" src="js/GetInfoFromIdcard.js" ></script>
<script type="text/javascript" src="js/pagination-min2.js" ></script>
<script type="text/javascript" src="js/www/blacklist.js" ></script>
<script src="js/jquery-webox.js"  type="text/jscript"></script>
</head>

<style>
.tel{ width:287px; text-align:right; position:absolute; top:-53px; right:0px; font-size:32px; color:#ec1900;}
.tel img{ vertical-align:middle; padding-right:10px; margin-bottom:5px;}

.blackbanner{ width:100%; min-width:1000px; background:#f3f3f3; height:245px;}
.blackbanner .main{ text-align:center; padding-top:60px;}
.blackbanner .main p{ padding-bottom:30px;}
.blackbanner .searchbox{ width:345px; height:35px; line-height:35px; border:1px solid #dddddd; border-radius:3px; background:#fff url("images/y02.png"/*tpa=https://xin/2.0/images/y02.png*/) 10px center no-repeat; padding-left:45px; font-size:16px;}
.blackbanner .sub01{ width:102px; height:37px; line-height:37px; background:#da251d; font-size:16px; border-radius:3px; margin-left:6px;}

.blacktable table{ line-height:44px; border-top:2px solid #9d9d9d;}
.blacktable table th{ border-bottom:1px solid #dddddd; font-size:16px;}
.blacktable table td{ border-bottom:1px solid #dddddd; font-size:14px;}
.blacktable .pagefont{ padding:40px 0; text-align:center;}
.blacktable .pagefont a{ width:40px; height:36px; line-height:36px; text-align:center; background:#c5c5c5; display:inline-block; margin-left:1px; font-size:14px; color:#fff; vertical-align:middle; text-decoration:none;}
.blacktable .pagefont a.arrowleft{ height:26px; line-height:26px; border-top-left-radius:3px; border-bottom-left-radius:3px; padding-top:10px;}
.blacktable .pagefont a.arrowright{ height:26px; line-height:26px; border-top-right-radius:3px; border-bottom-right-radius:3px; padding-top:10px;}
.blacktable .pagefont a:hover{ background:#da251d;}
.blacktable .pagefont span{ width:40px; height:36px; line-height:36px; text-align:center; background:#da251d; display:inline-block; margin-left:1px; font-size:14px; color:#fff; vertical-align:middle;}

.blackfont{ font-size:14px; line-height:24px;}
.blackfont h1{ background:#e9e9e9; height:40px; line-height:40px; padding-left:20px;}
.blackfont p{ padding:20px;}

.jilu-no{ border:1px solid #dddddd; margin-bottom:40px; padding:50px 0; text-align:center;}
.jilu-no img{ vertical-align:middle;}
.jilu-no span{ display:inline-block; vertical-align:middle; text-align:left; font-size:26px; padding-left:40px; color:#bebebe;}
.jilu-no span h1{ font-weight:normal; font-size:36px;}
</style>

<body>

<!--<div class="headertop">
  <div class="main top-menu">
    <ul class="left">
    	<li id="global_top_login"><a href="javascript:AA.RapidLogin.popup();">登录</a></li>
     <li id="global_top_register" ><a href="/2.0/views/account/register3.0.shtml" target='_blank'>注册</a></li>
      
      <li>关注我们</li>
      <li class="picicon"><a href="http://weibo.com/u/2719695463" target="_blank"><i class="AllIcon iconweibo"></i></a>&nbsp;</li>
      <li class="picicon"><a href="javascript:void(0)" id='index_weixin'><i class="AllIcon iconweixin"></i></a>&nbsp;</li>
      <li style=" display:none;"><a href="/index/index_old" target="_blank">返回旧版</a></li>
      <li class="picicon PositionR"><a href="javascript:;" rel="nofollow">工具箱<i class="arrow"></i></a>
                <ul class="menu-bd">
                    <li><a target="_blank" href="/toolbox/caculator">收益计算器</a></li>
                    <li><a target="_blank" href="/2.0/loan_calculator.shtml">借款计算器</a></li>
                </ul>
            </li>
    </ul>
    <ul class="right">
      <li class="topfont"><a id="top_user_name" href="/my"></a> <a href="javascript:AA.RapidLogin.loginout();" id="top_show_login_out" style="display: none;">退出</a> <span class="gray">|</span></li>
      <li><a href="javascript:void(0)" id='index_phone'>手机端</a></li>
      <li><a href="/vip" target='_blank'>VIP特权</a></li>
      <li style="display:none;"><a href="/action/jf" target='_blank'>积分抽奖</a></li>
      <li><a href="/gift" target='_blank'>积品汇</a></li>
      <li><a href="/help/index" target='_blank'>帮助</a></li>
      <li><a href="/action/xr_monthly" target='_blank'>月刊</a></li>
      <li><a href="http://bbs.xin.com" target='_blank'>社区</a></li>
      <li><a href="http://bbs.xin.com/forum-49-1.html" target='_blank'>反馈</a></li>
    </ul>
    <div class="clear"></div>
  </div>
</div>
<div class="clear"></div>
<div class="main headerNav">
  <div class="logo left"><img src="images/logo.png"></div>
  <div class="logofont left"></div>
</div>
-->
<script type="text/javascript">
$(function(){
    // 固定导航
	$(document).scroll(function(){
		t=$(document).scrollTop();
		if(t>=0){
			$("#hmenu_nav").removeClass("h_por").css("top","78px;");
			}
		if(t>78){
			$("#hmenu_nav").addClass("h_por").css("top","0px;");
			}
		});
});
</script>
<div class="hmenu_nav">
  <div class="main PositionR">
    <div class="logo left PositionR"><a href="../index.shtml.htm" ><img src="images/logo.gif"  /></a><a href="views/about/shareholder.shtml.htm"  class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="views/account/account_index.shtml.htm"  class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="login2.0.html"  class="flogin">登录</a><a href="views/account/register4.0.shtml.htm"  class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="../index.shtml.htm"  id="nav_index">首页</a></li>
        <li><a href="../invest.shtml.htm"  id="nav_invest">投资<i class="arrow"></i></a>
        <ul>
        <li><a href="calculator.html#finvest"  target="_blank">投资计算器</a></li>
        </ul>
        </li>
        <li><a href="action/xr_huahua/huahua.shtml.htm"  id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="images/hh_icon.png"  /></b></a>
          <ul>
          	<li><a href="action/xr_huahua/huahua.shtml.htm"  target="_blank">我要借款</a></li>
            <li><a href="calculator.html"  target="_blank">借款计算器</a></li>
          </ul>
        </li>
        <li><a href="action/zt_call/xr_call.shtml.htm"  id="nav_duoduo">朵朵来电</a></li>
        <li><a href="views/about/invest_help.shtml.htm"  id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="views/about/invest_help.shtml.htm"  target="_blank">投资帮助</a></li>
          	<li><a href="views/about/risk.shtml.htm"  target="_blank">风险控制</a></li>
            <li><a href="views/about/laws_regulations.shtml.htm#navLaws"  target="_blank">法律法规</a></li>
            <li><a href="views/about/help.shtml.htm"  id="nav_help" target="_blank">问题答疑</a></li>
          </ul>
        </li>
        <li><a href="views/about/about.shtml.htm"  id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="views/about/about.shtml.htm" id="nav_about_index">公司简介</a></li>
            <li><a href="views/about/team.shtml.htm" >团队介绍</a></li>
            <li><a href="views/about/service_data.shtml.htm" >运营数据</a></li>
            <li><a href="views/about/xr_announcement.shtml.htm" >平台公告</a></li>
            <li><a href="views/about/partner.shtml.htm" >合作机构</a></li>
            <li><a href="views/about/contact.shtml.htm" >联系我们</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="vip.html" >VIP特权</a> | <a href="../gift.htm"  id="nav_gift">积品汇</a></div>
    </div>
  </div>
</div>
<!--nav-->
<style type="text/css">
.fengxian_dialog{ width:469px; height:315px; background:#ffffff; -webkit-border-radius:5px; -moz-border-radius:5px; border-radius:5px;}
.fengxian_dialog h1{ height:50px; line-height:50px; background:#ececec; color:#2c2c2c; font-size:18px; font-weight:normal; padding:0 10px; border-top-left-radius:5px; border-top-right-radius:5px; position:relative;}
.fengxian_dialog h1 .close{ position:absolute; right:10px; top:0px; font-family:"宋体"; font-size:30px; color:#aeaeae; font-weight:normal; text-decoration:none;}
.fengxian_dialog .fx_font{ padding:20px 30px; font-size:18px; line-height:30px;}
.fengxian_dialog .fx_sub{ text-align:center; line-height:36px;}
.fengxian_dialog .fx_sub .sub02{ font-size:18px; width:166px; height:45px; line-height:45px;}
.fengxian_dialog .fx_sub p a{ color:#a1a1a1; font-size:15px;}
</style>
<script type="text/javascript" src="js/wbox.js" ></script>
<link rel="stylesheet" href="css/dialog-wbox.css" >
<!--风险测评-->
<div id="fxpc_dialog" style="display: none;">
  <div class="fengxian_dialog">
    <h1>温馨提示<a href="javascript:void(0)" class="close" id="close">×</a></h1>
    <div class="fx_font"> 尊敬的用户，为了帮助您更好的了解自己的风险承受能力，请您花30秒的时间完成10道风险测试题。 网贷非存款，投资需谨慎，是否立即进行风险测评？ </div>
    <div class="fx_sub"><a href="javascript:void(0)" class="sub02" id="goToAnswer">立即测评</a>
      <p><a href="javascript:void(0)" id="afterAnswer">稍后再说</a></p>
    </div>
  </div>
</div>
<script>
	
	(function() {
	
	var channel=location.href;

	var index=channel.lastIndexOf("/");
	
	var index1=channel.lastIndexOf(".");

	if(index>0){
		channel=channel.substring(index+1,index1);

		if(channel==".com/"||channel==".com"){
			$('#nav_index').parent().attr("class","cur");
		}else if(channel=="xincunbao"){
			$('#nav_my').addClass("cur");
		}else if(channel=="invest_help"||channel=="risk"||channel=="security"){
			$('#nav_invest_help').parent().attr("class","cur");			
		}else if(channel=="help"||channel=="guide1"||channel=="guide2"||channel=="guide3"||channel=="guide4"){
			$('#nav_invest_help').parent().attr("class","cur");
			$('#nav_help').attr("class","cur");		
		}else if(channel=="xr_call"){
			$('#nav_duoduo').parent().attr("class","cur");
		}else if(channel=="vip"){
			$('#nav_vip').attr("class","cur");
		}else{
			$('#nav_'+channel).parent().attr("class","cur");	
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
	var isAnswered=sessionStorage.getItem('afterAnswer')||null;
	if (location.href.indexOf('goAnswer=true') < 0) {
		if (isAnswered =='null') {
			$.ajax({
				url:'../v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,
			    type:'GET' ,
			    dataType:'json',
			    success:function (result) {
					if(result.state==0){
						if (document.cookie.substring(document.cookie.indexOf("isAnswer=")+9,document.cookie.indexOf("isAnswer=")+10) =="N") {
							showFXPCdialog();
							
							if (location.href.indexOf("account_settings.shtml")>-1) {
								$('#wBox #goToAnswer').unbind('click').bind('click',function(){
						        	$('#tp2').click();
						        })
							}
						}
					}
				}
			});
		}
	}
	

	function showFXPCdialog(){
		wBox = $('#fxpc_dialog').wBox({
                noTitle:true,
                top:5,
                html: $('#fxpc_dialog').html()
            });
        wBox.showBox(); 
        $('#wBox #afterAnswer').bind('click',function(){
        	sessionStorage.setItem('afterAnswer',true);
        	wBox.close();
        });
        $('#wBox #goToAnswer').unbind('click').bind('click',function(){
        	location.href="views/account/account_settings.shtml-goAnswer=true.htm"/*tpa=https://xin/2.0/views/account/account_settings.shtml?goAnswer=true*/;
        });
        $('#wBox #close').unbind('click').bind('click',function(){
        	sessionStorage.setItem('afterAnswer',true);
        	wBox.close();
        })

	}
});

</script> 

<div class="LineBorder"></div>
<!--<div class="PositionR main">
  <div class="tel"><img src="images/tel.jpg" width="35" height="29" />400-777-9888</div>
</div>
-->
<div class="blackbanner">
<div class="main"><p><a href="blacklist.html" ><img src="images/y01.png"  width="308" height="87" /></a></p>
<input id="userQuery" type="text" class="searchbox" placeholder="请输入要查询的姓名或身份证号" /> <a id="query" href="javascript:void(0)" class="sub01">搜 索</a>
<p id="error_view" class="red"></p>
</div>
</div>
<!--center-->
<div class="black20"></div>
<div class="black20"></div>
<div id="list_view" class="main blacktable">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<thead>
  <tr>
    <th align="center">姓名</th>
    <th align="center">借款金额</th>
    <th align="center">借款日期</th>
    <th align="center">逾期本息</th>
    <th align="center">性别</th>
    <th align="center">户籍地址</th>
    <th align="center">身份证</th>
    <th align="center">手机号</th>
    <th align="center">邮箱</th>
  </tr>
  </thead>
  <tbody id="result_view">
  </tbody>
</table>
<div class="pagefont"></div>
</div><!--end-->
<div id="no_list_view" class="main jilu-no" style="display: none;"><img src="images/y05.jpg" ><span><h1>抱歉！</h1>
暂无相关记录</span>
</div>
<div class="blackfont main">
<h1>提示：</h1>
 <p> 1、借款人在平台借款逾期90天不还,平台会将其个人及借款信息公布在该逾期黑名单页面。为避免因逾期给日常生活带来不便，请珍重自己的信用记录；<br />
  2、如果借款人发现自己在黑名单中，请尽快还清欠款，并通过客服热线或QQ联系平台，平台在核实后对黑名单信息进行删除、修改处理；<br />
  3、必要情况下平台会将借款人的逾期信息共享给合作方，且平台保留起诉借款人并要求赔偿的权利，这可能会对借款人的人民银行信用记录、银行（及其他渠道）贷款申请等造成影响；<br />
4、如有其他问题咨询请联系平台客服QQ。</p> </div>
<!--center end-->
<div class="black20"></div>
<div class="black20"></div>
<div  id="sidebar-login-box" style="display: none; ">
<div class="wgt-dialog wgt-dialog-login" >
    <fieldset class="ui-form">
        <form id="rapid-login-form" method="post" action="https://xin/v2/login/login.jso">
            <h3 class="wgt-dialog-title">信融财富用户登录</h3>
            <div class="ui-form-line">
                <label for="username" class="ui-form-label">账　号：</label>
                <input type="text" name="username" id="rapid-userName" class="ui-form-input" maxlength="50" tabindex="1" placeholder="账户名 / Email / 手机号"/>
                <a href="views/account/register4.0.shtml.htm"  class="blue" target="_blank">注册账号</a>
            </div>
            <div class="ui-form-line">
                <label for="password" class="ui-form-label">密　码：</label>
                <input type="password" name="password" id="rapid-userPw" class="ui-form-input" maxlength="16" tabindex="2" placeholder="登录密码"/>
                <a href="views/account/back_password.shtml.htm"  class="blue" target="_blank">忘记账号/密码？</a>
            </div>
            <div class="ui-form-line ui-form-captcha" id="captcha_view" style="display:none">
                <label for="rapid-captcha" class="ui-form-label">验证码：</label>
                <input type="text" id="rapid-captcha" name="captcha" class="ui-form-input" autocomplete="off" maxlength="4" tabindex="3" placeholder="验证码"/>
                <span id="rapid-captcha-placeholder" class="captcha-placeholder"><img src="" width='101' height='31' id='img-captcha' title='看不清楚？换一个' /></span>
                <input type="hidden" id="rapid-seed" name="seed" value=""/>
            </div>
            <div class="ui-form-line ui-form-action">
                <input  type="submit" class="ui-button ui-button-orange" style="width: 234px;height: 36px;line-height: 36px;" tabindex="4" value="登 录" />
                
                <em class="ui-tip"></em>
                <img src="images/Connect_logo_7.png"  onclick=" AA.RapidLogin.qqClick();" style="cursor:pointer; margin-left:8px;"></img>
            </div>
            <style>
            .login-succ{ margin:auto; width:290px; height:210px; position:fixed; left:0; right:0px; top:0px; bottom:0px; z-index:999; filter:progid:DXImageTransform.Microsoft.gradient(enabled='true',startColorstr='#CC000000', endColorstr='#CC000000'); border-radius:8px; text-align:center;}
            :root .login-succ{ filter:none; background-color:rgba(0,0,0,0.5);}
            .login-succ h1{ font-size:24px; color:#fff; padding-top:60px; font-weight:normal; position:relative;}
            .login-succ img{ vertical-align:middle;padding:0px 10px 0 0;}
            .login-succ span{ vertical-align:middle; padding: 26px 0 0 0;  display: inline-block;}
            </style>
            <div id="login_suc_dialog" style="display: none;">
            <div class="login-succ">
            <h1><img src="images/c-login1.gif"  width="68" height="93" /><span><i class="icondagou"></i>登录成功</span></h1>
            </div>
            </div>
        </form>
    </fieldset>
</div> 

</div>
<script type="text/javascript" src="js/rsa.js" ></script>
<script type="text/javascript" src="../webapp2.0/js/wbox.js" ></script>
<link rel="stylesheet" href="css/dialog-wbox.css" >
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="views/about/about.shtml.htm"  target="_blank">关于我们</a></h2><p><a href="views/about/team.shtml.htm"  target="_blank">团队介绍</a></p><p><a href="views/about/xr_history.shtml.htm"  target="_blank">发展历程</a></p><p><a href="views/about/xr_credit.shtml.htm"  target="_blank">资质荣誉</a></p><p><a href="views/about/partner.shtml.htm"  target="_blank">合作机构</a></p></li>
<li><h2><a href="views/about/help.shtml.htm"  target="_blank">帮助中心</a></h2><p><a href="views/about/guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="views/about/help.shtml-tab=tab1.htm"  target="_blank">问题答疑</a></p><p><a href="views/about/help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum-49-1.html'" target="_blank">意见反馈</a></p></li>
<li><h2><a href="views/about/about.shtml.htm"  target="_blank">信息中心</a></h2><p><a href="views/about/xr_announcement.shtml.htm"  target="_blank">平台公告</a></p><p><a href="views/about/media_report.shtml.htm"  target="_blank">媒体报道</a></p><p><a href="views/about/activitysum.shtml.htm"  target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum.php'"  target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="vip.html"  target="_blank">VIP特权</a></p><p><a href="../gift.htm"  target="_blank">积品汇</a></p><p><a href="../action/jf.htm" target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="../s/img/w02.jpg"  width="100"><h4>关注服务号</h4></li><li><img src="../s/img/w05.jpg"  width="100"><h4>关注订阅号</h4></li><li><img src="../s/img/w06.jpg"  width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'"  title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="images/qq.png"  width="120"><h4>QQ号：4007779888</h4></li>
</ul></li>
<li class="fb03"><a href="javascript:if(confirm('http://weibo.com/u/2719695463?profile_ftype=1&is_all=1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0'"  target="_blank" title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="../s/img/w07.jpg"  width="122" class="bimg" /><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
<div class="black10"></div>
</div>
</div><!--end-->
<div class="clear"></div>
<div class="footer_pic">
<ul>
<li><a target="_blank" href="javascript:if(confirm('http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86'"  title="深圳市市场监督管理局企业主体身份公示"><i class="icon01"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN'"  title="信融财富是中国首批引入VeriSign 256位SSL加密的融资理财平台。您的隐私及个人资料安全已受最高级别的保护。"><i class="icon03"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401'"  title="中国信用企业"><i class="icon02"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://search.szfw.org/cert/l/CX20140805008628008716  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://search.szfw.org/cert/l/CX20140805008628008716'"  title="诚信网站"><i class="icon04"></i></a></li>
<li><a title="腾讯云安全认证"><i class="icon05"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business'"  title="安全联盟认证网站"><i class="icon06"></i></a></li>
</ul>
</div>
<div class="clear"></div>
<div class="footer_font main"><p> <a href="../about/privacy.htm"  target="_blank">隐私保护申明</a> 　|　 <a href="../about/agreement.htm"  target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright xin.com All Rights Reserved   信融财富投资管理有限公司</div>
</div>

<style>
.d-dialog{ border: 1px solid #0078b5; background:#fff;}
.d-dialog h1{ height: 30px; line-height: 30px; padding: 0 28px 0 10px; color: #fff; background: #74b4e2; background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #74b4e2), color-stop(100%, #3d8fca) ); background-image: -webkit-linear-gradient(#74b4e2, #3d8fca); background-image: -moz-linear-gradient(#74b4e2, #3d8fca); background-image: -o-linear-gradient(#74b4e2, #3d8fca); background-image: linear-gradient(#74b4e2, #3d8fca); position:relative; font-size:14px;}
.d-dialog h1 .d-close { padding: 0; position:absolute; top: 4px; right: 4px; width: 21px; height: 21px; line-height: 21px; font-size: 25px; _font-size: 20px; color: #fff; text-align: center; font-family: Helvetica, STHeiti; _font-family: Tahoma, '\u9ed1\u4f53', 'Book Antiqua', Palatino;text-decoration: none; display:block;outline: none;}

.d-dialog .call_font{ padding:50px 40px 20px 40px; line-height:24px; font-size:16px;width:350px}
.d-dialog .call_sub{ padding:20px 0 0 0; text-align:center;}
.d-dialog .call_sub .sub01{ width:156px; height:45px; line-height:43px; text-align:center; background:#15a32c; font-size:20px;}
.d-dialog .call_sub .sub02{ width:156px; height:45px; line-height:43px; text-align:center; background:#c8c8c8; font-size:20px;}
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

<script type="text/javascript" src="js/channel.js" ></script>
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
<script>
(function() {
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
	    			$('#top_exit').show();
					
	    		}

	    	}else if(result.state == 1009){
				$('.h-login-reg').show();
				}

	    }
	});

})();
</script>
<!--footer end-->



</body>