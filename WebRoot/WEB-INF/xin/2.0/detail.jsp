<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信融财富 - 上市公司战略投资，P2P网贷专业互联网投资理财平台 - 投资理财</title>
<meta name="Description" content="信融财富官网是一个在线融资理财,专业P2P网络借贷,安全网上投资理财平台,在线投资理财者可通过信融财富获得安全的网络投资理财服务,该服务以投资理财者利益为出发点,100%本息保障,力争为网络投资理财者提供一款有安全保障、省时省心、且收益可观的服务旗舰品,享受安全放心的p2p网络借贷尽在信融财富.">
<meta name="Keywords" content="网贷,p2p理财,p2p网贷,网贷平台,p2p网络借贷,理财,投资,投资网,理财网,投资理财,网络投资,网上理财,安全理财,在线理财,信融财富官网">
<link href="css/dialog.css" tppabs="https://xin/2.0/css/dialog.css" rel="stylesheet" type="text/css" />
<link href="css/global.css" tppabs="https://xin/2.0/css/global.css" rel="stylesheet" type="text/css" />
<link href="css/basic.css" tppabs="https://xin/2.0/css/basic.css" rel="stylesheet" type="text/css" />
<link href="css/css.css" tppabs="https://xin/2.0/css/css.css" rel="stylesheet" type="text/css" />
<link href="css/tip.css" tppabs="https://xin/2.0/css/tip.css" rel="stylesheet" type="text/css" />
<link href="css/invest-window.css" tppabs="https://xin/2.0/css/invest-window.css" rel="stylesheet" type="text/css" />
<link href="css/invest/investpic.css" tppabs="https://xin/2.0/css/invest/investpic.css" rel="stylesheet" type="text/css" />
<link href="css/invest/left.css" tppabs="https://xin/2.0/css/invest/left.css" rel="stylesheet" type="text/css" />
<link href="css/invest/invest.css" tppabs="https://xin/2.0/css/invest/invest.css" rel="stylesheet" type="text/css" />
<link href="css/jslider/jslider.css" tppabs="https://xin/2.0/css/jslider/jslider.css" rel="stylesheet" type="text/css">
<link href="css/jslider/jslider.blue.css" tppabs="https://xin/2.0/css/jslider/jslider.blue.css" rel="stylesheet" type="text/css">
<link href="css/jslider/jslider.plastic.css" tppabs="https://xin/2.0/css/jslider/jslider.plastic.css" rel="stylesheet" type="text/css">
<link href="css/jslider/jslider.round.css" tppabs="https://xin/2.0/css/jslider/jslider.round.css" rel="stylesheet" type="text/css">
<link href="css/jslider/jslider.round.plastic.css" tppabs="https://xin/2.0/css/jslider/jslider.round.plastic.css" rel="stylesheet" type="text/css">
<link href="css/jquery-ui/jquery.ui.all.css" tppabs="https://xin/2.0/css/jquery-ui/jquery.ui.all.css" rel="stylesheet" type="text/css">
<link href="css/jquery-ui/demos.css" tppabs="https://xin/2.0/css/jquery-ui/demos.css" rel="stylesheet" type="text/css">
<!--<script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->
<!-- <script type="text/javascript" src="/2.0/js/jquery-1.10.2.min.js"></script> -->
<!-- <script type="text/javascript" src="js/jquery-1.4.2.js" tppabs="https://xin/2.0/js/jquery-1.4.2.js"></script> -->
<script type="text/javascript" src="js/jquery-1.10.2.js" tppabs="https://xin/2.0/js/jquery-1.10.2.js"></script>
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
<style type="text/css">
.invest_double {
	position: fixed;
	left: 50%;
	margin-left: -690px;
	top: 30%;
}
.invest_double {
	-webkit-animation: double 2.4s .5s ease both infinite;
	-moz-animation: double 2.4s .5s ease both infinite;
	-ms-animation: double 2.4s .5s ease both infinite;
	-o-animation: double 2.4s .5s ease both infinite;
	animation: double 2.4s .5s ease both infinite;
}
@-webkit-keyframes double {
0% {
top:30%;
}
50% {
top:28%;
}
100% {
top:30%;
}
}
@-moz-keyframes double {
0% {
top:30%;
}
50% {
top:28%;
}
100% {
top:30%;
}
}
@-ms-keyframes double {
0% {
top:30%;
}
50% {
top:28%;
}
100% {
top:30%;
}
}
@-o-keyframes double {
0% {
top:30%;
}
50% {
top:28%;
}
100% {
top:30%;
}
}
@keyframes double {
0% {
top:30%;
}
50% {
top:28%;
}
100% {
top:30%;
}
}
</style>
</head>
<body>
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
    <div class="logo left PositionR"><a href="../index.htm" tppabs="https://xin/index.shtml"><img src="images/logo.gif" tppabs="https://xin/2.0/images/logo.gif" /></a><a href="views/about/shareholder.shtml.htm" tppabs="https://xin/2.0/views/about/shareholder.shtml" class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="views/account/account_index.shtml.htm" tppabs="https://xin/2.0/views/account/account_index.shtml" class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="login2.0.html" tppabs="https://xin/2.0/login2.0.html" class="flogin">登录</a><a href="views/account/register4.0.shtml.htm" tppabs="https://xin/2.0/views/account/register4.0.shtml" class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="../index.htm" tppabs="https://xin/index.shtml" id="nav_index">首页</a></li>
        <li><a href="../invest.shtml.htm" tppabs="https://xin/invest.shtml" id="nav_invest">投资<i class="arrow"></i></a>
        <ul>
        <li><a href="calculator.html#finvest" tppabs="https://xin/2.0/calculator.html#finvest" target="_blank">投资计算器</a></li>
        </ul>
        </li>
        <li><a href="action/xr_huahua/huahua.shtml.htm" tppabs="https://xin/2.0/action/xr_huahua/huahua.shtml" id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="images/hh_icon.png" tppabs="https://xin/2.0/images/hh_icon.png" /></b></a>
          <ul>
          	<li><a href="action/xr_huahua/huahua.shtml.htm" tppabs="https://xin/2.0/action/xr_huahua/huahua.shtml" target="_blank">我要借款</a></li>
            <li><a href="calculator.html" tppabs="https://xin/2.0/calculator.html" target="_blank">借款计算器</a></li>
          </ul>
        </li>
        <li><a href="views/about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="views/about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" target="_blank">投资帮助</a></li>
          	<li><a href="views/about/risk.shtml.htm" tppabs="https://xin/2.0/views/about/risk.shtml" target="_blank">风险控制</a></li>
            <li><a href="views/about/laws_regulations.shtml.htm#navLaws" tppabs="https://xin/2.0/views/about/laws_regulations.shtml#navLaws" target="_blank">法律法规</a></li>
          </ul>
        </li>
        <li><a href="views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about_index">公司简介</a></li>
            <li><a href="views/about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml">团队介绍</a></li>
            <li><a href="views/about/service_data.shtml.htm" tppabs="https://xin/2.0/views/about/service_data.shtml">运营数据</a></li>
            <li><a href="views/about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml">合作机构</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="vip.html" tppabs="https://xin/2.0/vip.html" id="nav_vip">VIP特权</a></div>
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
<script type="text/javascript" src="js/wbox.js" tppabs="https://xin/2.0/js/wbox.js"></script>
<link rel="stylesheet" href="css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css">
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
				url:'https://xin/v2/login/in_session_data.jso',
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
<div class="black10"></div>
<span class="invest_double" style="display: none;"><a href="action/xr_double/xr_depository.shtml.htm" tppabs="https://xin/2.0/action/xr_double/xr_depository.shtml" target="_blank" style="display: inline-block;"><img src="images/double01.png" tppabs="https://xin/2.0/images/double01.png" /></a></span>
<div class="main"> 
  <style type="text/css">
.explain-icon{
	vertical-align: middle;
	margin: -2px 0 0 5px;
}
.explain-icon:hover+.explain{
	display: block;
}
.explain-icon+.explain{
	display: none;
	position: absolute;
	left: 5px;
	top: 35px;
	width: 300px;
	padding: 5px;
	line-height: 18px;
	font-size: 12px;
	color: #666;
	border: 1px solid #aaa;
	background-color: #fff;
	white-space: normal;
	z-index: 99;
}
.explain-icon+.explain .tri{
	position: absolute;
	right: 122px;
	top: -10px;
	display: block;
	width: 0;
	height: 0;
	z-index: 110;
	border-top: 0;
	border-bottom: 10px solid #999;
	border-left: 10px solid transparent;
	border-right: 10px solid transparent;
}
.explain-icon+.explain .tri i{
	position: absolute;
	left: -10px;
	top: 1px;
	display: block;
	width: 0;
	height: 0;
	z-index: 110;
	border-top: 0;
	border-bottom: 10px solid #fff;
	border-left: 10px solid transparent;
	border-right: 10px solid transparent;
}
</style>
<div class="investtopbor">
	<div class="topborleft left">
	      <h2>
	      	<span class="left">
		      	<i class="AllIcon icon02" id="loan_type_icon"></i><font id="loan_title" attr="${project.id }">${project.projectname }</font>
		    </span>
	      </h2>
	      <div class="clear"></div>
	      <ul class="topboxfont">
		      <li class="w01">融资期限：<font id="deadline_show"></font>${project.projectfinancingtime }个月 </li>
			  <li class="w02" style="width:405px"><font style="font-size:14px;color:red;">*VIP会员持有一个月即可转让&nbsp;<a href="views/about/help.shtml-tab=tab8&&href=m2.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab8&&href=m2" class="blue" target="_blank">转让规则</a></font></li>
		     <li class="w01" >预期年化收益率：<b class="orange" id="rate_show">${project.expectedannualized*100 }%</b></li>
			<li class="w02">额外收益：<font id="extraneous_show"></font></li>		     
			  <li>回款方式：<font id="refund_type_show">${project.receivablewayName }</font></li>
			  <li>项目进程：<font id="refund_type_show">${project.projectProgressName }</font></li>
			<li class="w01">剩余可投：<font id="amount_money_show">${project.expectedfinancingamount-project.actualfinancingamount }</font>元</li>			
			<li class="w02">融资金额：<font id="money_show">${project.expectedfinancingamount }</font>元</li>
		      <li>起 息 日 ：<font id="begin_data_value_show">1个工作日</font></li>
		      <li class="w01" style="position: relative;z-index: 1;">募集时间：不超过20工作日<i class='AllIcon iconI explain-icon'></i>
		      	<div class="explain"><i class="tri"><i></i></i>根据相关法律法规、监管规定，自项目发布至项目投满期间募集时间不得超过20个工作日。</div>
		      </li>
		      <li class="w02" id="li_danbao_show" style="position: relative;z-index: 1;"></li>
			<li><span id="jiang_view" style="display:none;">额外奖励：<b class="orange" id="jiang_show">0</b><span class="gray t-font"><i class="AllIcon iconI"></i><b>礼金即时到账</b></span></span></li>
		     
	      </ul>
	      <div class="clear"></div>
	</div>
	<div id="div_quick_invest" class="lefttopbox right PositionR" >


		<dl>
			<dt>投资金额：</dt>
			<dd>
		    <input id="slider_amount" type="text" class="inputtext" value="0.00" /><span class="font01">元</span>
		   	<div id="slider-range-max"></div>
			</dd>
			<div class="clear"></div>
		
		</dl>
		<dl>
			<dt>到期收益：</dt>
			<dd><span class="orange" id="totalInterest"></span>
			<span class="red" style="float: right;padding-right: 1px;font-size: 70%;" id="quick_invest_error_view"></span>
			</dd>
			<div class="clear"></div>
		    <span class="gray transfer_tip"  id="transfer_tip" style="display: none;"><i class="AllIcon iconI"></i>等额本息转让项目需一次性投完</span>
		</dl>
		<dl>
			<dt>回款时间：</dt>
			<dd id="ptime"></dd>
			<div class="clear"></div>
		    <span class="boxfont"><a href="javascript:DETAIL_BS.InitData.ToggleRefundPlan(1)" class="blue">查看回款计划&gt;</a></span>
		</dl>
		<div id="investBtn" class="boxsub"></div>
		<div class="boxsub" ><a href="#" class="sub02">立即投资</a></div>
		<div class="boxsub" style="display:none"><a href="#" class="sub04" >未开始</a></div>
		<div class="boxsub" style="display:none"><a href="#" class="sub01" >已投满</a></div>
 
	</div>
	<!-- end -->
	
	
	<div id="div_quick_refund" class="lefttopbox right" style="display:none;">
	 	 <div class="topfont"><a href="javascript:DETAIL_BS.InitData.ToggleRefundPlan(0)" class="blue">&lt;返回</a></div>
    <div class="boxtable PositionR">
		 <table width="100%" border="0" cellspacing="0" cellpadding="0">
				<thead>
					  <tr>
					    <th width="99" align="left">回款时间</th>
					    <th width="98" align="right">金额（元）</th>
					    <th>期数</th>
					  </tr>
				</thead>
				
		 </table>
		 
		 <div class="content mCustomScrollbar">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody id="refundPlanList">
				
				 </tbody>
				</table>
		</div>
	</div>
	</div>
	<div class="clear"></div>
</div> 
</div>
<div class="black25"></div>
<div class="main">
  <div class="pageleft left">
    <div id="tabsholder">
      <ul class="tabbtn navtabs">
        <li id="tab1"><a href="javascript:void(0);">项目信息</a></li>
        <li id="tab2"><a href="javascript:void(0);">风控手段</a></li>
        <li id="tab3" style="display: none"><a href="javascript:void(0);">资质文件</a></li>
        <li id="tab4"><a href="javascript:void(0);">项目进程</a></li>
      </ul>
      <div class="contents tabcon"> 
        <div id="content1" class="tabscontent sublist investdetailfont">
      <span class="detailfont">
      <ul class="detaillist">
	      <li><strong>债务人</strong>：<span id="debtor">${financingUser.name }</span></li>
	      <li id="usageField" ><strong>资金用途</strong>：<span id="usage">个人消费</span></li>
	      <li1 id="showCertificate" ><strong>债务人证件号</strong>：<span id="showCert">${financingUser.identifyno }</span></li1>
      </ul>
      
      <div class="clear"></div>
      
     
      
      <div id="debtorQualificationField" >
      <p><strong>资质介绍</strong>：</p>
	      <div id="debtorQualification">
	      该融资方信用等级良好
	      </div>
	  </div>
	  
	  <div id="repaymentGuaranteeField" >
      <p><strong>债务人还款保障</strong>：</p>
     	 <div id="repaymentGuarantee">
			 --
		 </div>
	  </div>
	
	  <div id="personalInfoField" >
		  <p><b>债务人信息</b>：</p>
	      <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabledetail">
			  <tr>
			    <td>性别：<span id="sex">--</span></td>
			    <td>年龄：<span id="age">--</span></td>
			    <td>行业：<span id="industry">--</span></td>
			  </tr>
			  <tr>
			    <td>学历：<span id="education">--</span></td>
			    <td>婚姻状况：<span id="marriage">--</span></td>
			    <td>年收入范围：<span id="yearIncome">--</span></td>
			  </tr>
			  <tr>
			    <td>职位：<span id="position">--</span></td>
			    <td>是否购房：<span id="house">--</span></td>
			    <td>是否购车： <span id="car">--</span></td>
			  </tr>
			  <tr>
			    <td>户籍城市：<span id="city">--</span></td>
			    <td>&nbsp;</td>
			    <td>&nbsp;</td>
			  </tr>
		  </table>
      </div>
      
      <div id="loanDescriptionField" style="display:none">
	      <p><b>债务人对本次借款的详细说明</b>：</p>
	      <p id="loanDescription">--</p>
	  </div>
      
      <div id="transferorIntroductionField" style="display:none">
	      <p><b>出让人简介</b>：</p>
	      <p id="transferorIntroduction">--</p>
      </div>
      
	 </span>
      <div class="borderbottom"></div>
      
      
      <div id="enterInfo" style="display:none">
	      <h2 class="titleh2">项目担保信息：</h2>
	      <span class="detailfont">
	      <p>担保方：<span id="enterName">华圳融资担保有限公司 </span>  <a href="" target="_blank" class="blue">详细介绍</a></p>
	      <p>违约代偿方式：<a href="views/about/help.shtml-tab=tab3&href=c5.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab3&href=c5" target="_blank" class="blue">查看细则</a></p>
	      </span>
	      
	      <div id="huazhenQualification" style="display:none">
		      <h2 class="titleh2">担保方资质及证书：</h2>
		      <span class="detailfont">
		      <p>• 2004年12月成立，注册资本1.16亿元，深圳市信用担保同业公会第一届理事单位</p>
		      <p>• 2011年5月25日获《融资性担保机构经营许可证》</p>
		      <ul class="fontpic">
		      <li><img src="images/pic/6.jpg" tppabs="https://xin/2.0/images/pic/6.jpg" width="94" height="54" /><p>第一届理事单位</p></li>
		      <li><img src="images/pic/7.jpg" tppabs="https://xin/2.0/images/pic/7.jpg" width="94" height="54" /><p>融资性担保许可证</p></li>
		      </ul>
		      <div class="clear"></div>
		      </span>
	      </div>
	      
	     <div id="guoxingQualification" style="display:none">
		      <h2 class="titleh2">担保方资质</h2>
		      <span class="detailfont">
		      <ul class="fontpic">
		      <li><img src="images/pic/Scan0001.jpg" tppabs="https://xin/2.0/images/pic/Scan0001.jpg" width="94" height="54" /><p>机构代码</p></li>
		      <li><img src="images/pic/Scan0002.jpg" tppabs="https://xin/2.0/images/pic/Scan0002.jpg" width="94" height="54" /><p>税务登记</p></li>
		      <li><img src="images/pic/Scan0003.jpg" tppabs="https://xin/2.0/images/pic/Scan0003.jpg" width="94" height="54" /><p>营业执照</p></li>
		      </ul>
		      <div class="clear"></div>
		      </span>
	      </div>
	      
      </div>
     
     
      <h2 class="titleh2">投资人投资权益措施：</h2>
      <span id="safeguard" class="detailfont01">

      </span>
      <h2 class="titleh2">风险提示：</h2>
      <span class="detailfont01">网贷有风险，投资需谨慎。投资人应根据平台提供的信息进行独立判断，具有独自承担风险的能力，项目存在一定风险，包括但不限于宏观经济风险、政策风险、违约风险、利率风险、项目募集失败风险、不可抗力因素导致的风险等。</span>
</div>
 
        <div id="content2" class="tabscontent sublist FengXian">

<div class="black10"></div>
      <h2>风控概述</h2>
      <p>信·系列项目、品·系列项目（品牌合作项目）以保障投资人利益不受损失为重中之重，从融资方筛选、担保代偿、电子合同、账户安全、隐私保护等多个方面同步发力，并通过第三方公司（有明显担保标识）或风险准备金，确保在为投资人创造收益的同时将安全最大化、风险最小化。</p>
      <div class="black15"></div>
      <h3>严密的多重风控机制</h3>
      <span class="FXlist">
      <!-- 
      <dl>
      <dt><i class="AllIcon Icon01"></i></dt>
      <dd><h4>资金分离</h4>为切实确保投资人在信融财富的账户资金安全，我们已与腾讯旗下支付平台财付通达成合作，平台的充值、提现、融资款等均通过财付通接收、划转，与平台自有资金分离，不再存放于信融财富银行账户。<a href="https://xin/about/security#fund" target='_blank'>了解详情</a></dd>
      </dl>
       --> 
      <dl>
      <dt><i class="AllIcon Icon02"></i></dt>
      <dd>
        <h4>融资方筛选</h4>
        信·系列项目的目标融资方主要为既具备强偿还能力、又有较频繁资金周转需求的企业/个人。平台将联合第三方公司对融资方资质和偿还能力进行严格的审查，确保融资方均达到或超过平台的准入标准。</dd>
      </dl>
      <dl>
      <dt><i class="AllIcon Icon03"></i></dt>
      <dd><h4>强实力第三方公司（有明显担保字样标识）</h4>经信融财富及第三方公司评估通过而准入信融财富平台的融资方，在提交融资申请的同时一般还需向平台和担保公司提供足额的反担保措施以切实保障偿还能力，并获得第三方公司的担保；无担保项目则由风险准备金保障。</dd>
      </dl>
      <dl>
      <dt><i class="AllIcon Icon04"></i></dt>
      <dd><h4>担保代偿</h4>如融资方因故无法偿还，第三方公司将负责向投资人代偿（详见<a href="views/about/help.shtml-tab=tab3&href=c5.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab3&href=c5" target='_blank'>代偿规则</a>），同时获得债权及相应处理权限。</dd>
      </dl>
      <dl>
      <dt><i class="AllIcon Icon08"></i></dt>
      <dd><h4>风险准备金</h4>开立专项风险准备金账户，针对每笔信贷无担保项目计提风险准备金，专款用于待收项目资金的风险垫付。</dd>
      </dl>
      <dl>
      <dt><i class="AllIcon Icon05"></i></dt>
      <dd><h4>电子合同</h4>在确认项目投资后，信融财富将向投资人发送电子合同，明确投资人、融资方以及担保公司的权利、责任和义务，确保投资人的利益受到法律保护。</dd>
      </dl>
      <dl>
      <dt><i class="AllIcon Icon06"></i></dt>
      <dd><h4>账户安全</h4>信融财富设立登录密码和交易密码双重保障，同时账户需要经过实名认证、银行卡认证方可提现，确保资金流出的安全性。认证后投资人随时可对其信融财富账户进行查询、充值和提现操作，资金提现效率高（详见<a href="javascript:if(confirm('https://xin/help/faq/1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://xin/help/faq/1#19'" tppabs="https://xin/help/faq/1#19" target='_blank'>提现规则</a>）。 </dd>
      </dl>
      <dl>
      <dt><i class="AllIcon Icon07"></i></dt>
      <dd><h4>隐私保护</h4>信融财富采用权威的VeriSign SSL 256位个人信息加密保护技术进行投资人信息保护，确保投资人提交的个人信息的安全。同时信融财富保证不在任何场合和任何时间擅自披露、删除或修改投资人信息。投资人在信融财富的任何敏感操作都将被视为隐私进行加密传送和处理。</dd>
      </dl>
      </span>

</div> 


      <div id="content3" class="tabscontent sublist">
 	
 	  <div class="nologinfont" style="display:none;">
      	<span class="font02">只有<a href="#" class="blue">注册用户</a>才能看到，现在<a href="#" class="blue">登录</a></span>
      </div>
 
 	  <div class="black5"></div>
 	  
 	  <div id="preview">
 	   	<div id="spec-n1">
			<div class="o-img">
				<span><img src="" /></span>
			</div>
			<div class="switch">
				<a id="foward">&nbsp;</a>
				<a id="next">&nbsp;</a>
			</div>													
		</div>
		
		
		<div id="spec-n5">

			<div id="spec-list">
				<ul id="pictureList">
                   	<li class="curr"><img name="" alt=""  title="" src=""/><span>--</span></li>
					<li><img name="" alt=""  title="" src=""/><span>--</span></li>
				</ul>
			</div>

		</div>
		
 	  </div>
 	  
 </div> 
 
 
        <div id="content4" class="tabscontent">
      <div class="contentbg">
      <span class="fontbg"><span></span></span>
      <dl>
      <dt>项目上线</dt>
      <dd class="font01" id="ctimePic"><i class="AllIcon icon01"></i></dd>
      <dd><span class="fontbox" id="ctime"></span></dd>
      <div class="clear"></div>
      </dl>
      <dl>
      <dt id="beginAndEndtimeFont">项目融资</dt>
      <dd class="font01 boxbg01" id="beginAndEndtimePic"><i class="AllIcon icon02"></i></dd>
      <dd><span class="fontbox" id="beginAndEndtime"></span></dd>
      <div class="clear"></div>
      </dl>
      <dl>
      <dt>项目打款</dt>
      <dd class="font01 boxbg01" id="endtimePic"><i class="AllIcon icon03"></i></dd>
      <dd><span class="fontbox" id="endtime"></span></dd>
      <div class="clear"></div>
      </dl>
      <dl>
      <dt id="refundProgressFont">项目还款</dt>
      <dd class="font01 boxbg01" id="refundProgressPic"><i class="AllIcon icon04"></i></dd>
      <dd><span class="fontbox" id="refundProgress"></span></dd>
      <div class="clear"></div>
      </dl>
      </div>
</div> 
      </div>
    </div>
    <div class="black20"></div>
    <div id="tabsholder01">
      <ul class="tabbtn navtabs">
        <li id="tab5"><a href="javascript:void(0)">收益测算</a></li>
        <!--
		      <li id="tab6"><a href="#">还款计划</a></li>
		      -->
        <li id="tab6"><a href="javascript:void(0)">投资记录</a></li>
      </ul>
      <div class="contents tabcon">
        <div id="content5" class="tabscontent invest_cs">
          <h2>以下以投资1万元、账户等级VIP1进行测算</h2>
          <div class="cs_table">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <thead>
                <tr>
                  <th align="center">期限</th>
                  <th align="center">预期年化收益率</th>
                  <th width="80" align="center" class="tdbg01">月利率</th>
                  <th width="80" align="center" class="tdbg01">月收益</th>
                  <th align="center">总收益</th>
                  <th align="center">可获得信融积分</th>
                  <th align="center">总成长值/按日发(点)</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td align="center">12个月 </td>
                  <td align="center">13.5% </td>
                  <td align="center" class="tdbg02">1.12% </td>
                  <td align="center" class="tdbg02">￥112 </td>
                  <td align="center">￥1,344 </td>
                  <td align="center">33000 </td>
                  <td align="center">33000/91</td>
                </tr>
                <tr>
                  <td align="center">6个月 <br /></td>
                  <td align="center">12.9% </td>
                  <td align="center" class="tdbg03">1.07% </td>
                  <td align="center" class="tdbg03">￥107 </td>
                  <td align="center">￥642</td>
                  <td align="center">16500</td>
                  <td align="center">16500/91</td>
                </tr>
                <tr>
                  <td align="center">1个月 <br /></td>
                  <td align="center">9.0% </td>
                  <td align="center" class="tdbg04">0.75% </td>
                  <td align="center" class="tdbg04">￥75</td>
                  <td align="center">￥75</td>
                  <td align="center">2750</td>
                  <td align="center">2750/91</td>
                </tr>
              </tbody>
            </table>
            <p class="t-tips">* 测算收益未计算服务费</p>
          </div>
          <div class="cs_qa">
            <div class="cs_qafont left">
              <dl>
                <dt><i>Q</i>想投短期1个月，如何实现？</dt>
                <dd><i>A</i>图1-1中，一位<span class="c8f5426">VIP1</span>用户，投资1万元到6个月项目，持有1个月之后进行<span class="c8f5426"><a href="views/about/help.shtml-tab=tab8&href=m2.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab8&href=m2" class="orange" target="_blank" style="text-decoration:underline;">转让</a>，最终总收益更高，流动性好。</span></dd>
              </dl>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <thead>
                  <tr>
                    <th colspan="2" align="center">1个月项目</th>
                    <th colspan="2" align="center">6个月项目</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td align="center">月收益</td>
                    <td align="center">￥75</td>
                    <td align="center">月收益<br /></td>
                    <td align="center">￥107</td>
                  </tr>
                  <tr>
                    <td align="center">预期年化收益率</td>
                    <td align="center">9.0%</td>
                    <td align="center">预期年化收益率</td>
                    <td align="center">12.9%</td>
                  </tr>
                  <tr>
                    <td align="center">获积分</td>
                    <td align="center">2750</td>
                    <td align="center">获积分</td>
                    <td align="center">16500</td>
                  </tr>
                  <tr>
                    <td align="center">积分价值</td>
                    <td align="center">￥7</td>
                    <td align="center">积分价值</td>
                    <td align="center">￥42.24</td>
                  </tr>
                  <tr>
                    <td align="center">—</td>
                    <td align="center">—</td>
                    <td align="center">积分补偿金</td>
                    <td align="center">￥41.25</td>
                  </tr>
                  <tr>
                    <td align="center">—</td>
                    <td align="center">—</td>
                    <td align="center">转让服务费</td>
                    <td align="center">￥10.7</td>
                  </tr>
                  <tr class="bg">
                    <td align="center" class="bgfc">总收益</td>
                    <td align="center" class="bgfc">￥82</td>
                    <td align="center" class="bgfc">总收益</td>
                    <td align="center" class="bgfc">￥97.29</td>
                  </tr>
                </tbody>
              </table>
              <p class="t-tips">图1-1 * 测算收益未计算服务费</p>
            </div>
            <!--end-->
            <div class="cs_qafont left">
              <dl>
                <dt><i>Q</i>直投与转让两种投资方式有何差异？</dt>
                <dd><i>A</i>张女士是<span class="c8f5426">VIP3</span>用户，投资1万元3个月项目，与投6个月项目持有3个月2天后进行转让；<span class="c8f5426">投资6个月项目的总收益更高，流动性好，满足条件即可<a href="views/about/help.shtml-tab=tab8&href=m2.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab8&href=m2" class="orange" target="_blank" style="text-decoration:underline;">转让</a></span>。</dd>
              </dl>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <thead>
                  <tr>
                    <th colspan="2" align="center">3个月</th>
                    <th colspan="2" align="center">6个月</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td align="center">持有期限</td>
                    <td align="center">3个月</td>
                    <td align="center">持有期限<br /></td>
                    <td align="center">3个月2天</td>
                  </tr>
                  <tr>
                    <td align="center">持有收益</td>
                    <td align="center">￥277.5</td>
                    <td align="center">持有收益</td>
                    <td align="center">￥329.56</td>
                  </tr>
                  <tr>
                    <td align="center">获积分</td>
                    <td align="center">9000</td>
                    <td align="center">获积分</td>
                    <td align="center">18000</td>
                  </tr>
                  <tr>
                    <td align="center">积分价值</td>
                    <td align="center">￥23.68</td>
                    <td align="center">积分价值</td>
                    <td align="center">￥47.36</td>
                  </tr>
                  <tr>
                    <td align="center">—</td>
                    <td align="center">—</td>
                    <td align="center">积分补偿金</td>
                    <td align="center">￥27</td>
                  </tr>
                  <tr>
                    <td align="center">—</td>
                    <td align="center">—</td>
                    <td align="center">转让服务费</td>
                    <td align="center">￥32.95</td>
                  </tr>
                  <tr class="bg">
                    <td align="center" class="bgfc">总收益</td>
                    <td align="center" class="bgfc">￥301.18</td>
                    <td align="center" class="bgfc">总收益</td>
                    <td align="center" class="bgfc">￥316.97</td>
                  </tr>
                </tbody>
              </table>
              <p class="t-tips">图1-2 * 测算收益未计算服务费</p>
            </div>
            <!--end-->
            <div class="clear"></div>
          </div>
          <p class="con-tips"><span class="red">注：测算收益不代表实际收益</span><br> &nbsp; &nbsp; &nbsp; 信融财富对以上测算保留最终解释权。</p>
        </div>
        <div id="content6" class="tabscontent investjilu">
<div class="jilulist">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<thead>
		<tr>
			<th>投资人</th>
			<th>投资总额</th>
			<th>预期年化收益率</th>
			<th>预期收益</th>
			<th>投资时间</th>
			<th>状态</th>
		</tr>
	</thead>
	<tbody id="investRecordList">

	</tbody>
</table>
	<div id="investRecordBtn" class="pagefont"></div>
</div>

</div> 
      </div>
    </div>
  </div>
  <div class="pageright right"> 
    
    <!--<div class="leftlistfont">
    <h1 class="titlefont"><span class="left">常见问题</span><a href="views/about/help.shtml.htm" tppabs="https://xin/2.0/views/about/help.shtml" target='_blank' class="right blue">更多></a></h1>
    <ul>
    <li><span>·</span><a href="views/about/help.shtml-tab=tab3&href=c18.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab3&href=c18" target='_blank'>如何使用礼金？</a></li>
    <li><span>·</span><a href="views/about/help.shtml-tab=tab2&href=b8.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab2&href=b8" target='_blank'>提现多长时间可以到账？</a></li>
    <li><span>·</span><a href="views/about/help.shtml-tab=tab3&href=c4.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab3&href=c4" target='_blank'>如何才可以在信融财富投资？</a></li>
    <li><span>·</span><a href="views/about/help.shtml-tab=tab1&href=a5.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab1&href=a5" target='_blank'>忘记登录账号了怎么办？</a></li>
    <li><span>·</span><a href="views/about/help.shtml-tab=tab3&href=c1.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab3&href=c1" target='_blank'>投资人是否需要收取费用？</a></li>
    </ul>
    </div>--><!--end-->
    <!--<div class="black15"></div>
    <div><a href="javascript:if(confirm('https://xin/action/reg_invite  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://xin/action/reg_invite'" tppabs="https://xin/action/reg_invite" target='_blank'><img src="images/pic/9.jpg" tppabs="https://xin/2.0/images/pic/9.jpg" width="304" height="57" /></a></div>
    <div class="black15"></div>
    <div class="leftlistfont">
    <h1 class="titlefont"><span class="left">投资攻略</span><a href="views/about/help.shtml-tab=tab10.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10" target='_blank' class="right blue">更多></a></h1>
    <ul>
    <li><span>·</span><a href="views/about/help.shtml-tab=tab10&href=j4.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10&href=j4" target='_blank'>先买VIP再投资还是直接投资送VIP？</a></li>
    <li><span>·</span><a href="views/about/help.shtml-tab=tab10&href=j7.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10&href=j7" target='_blank'>项目发布时间？</a></li>
    <li><span>·</span><a href="views/about/help.shtml-tab=tab10&href=j2.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10&href=j2" target='_blank'>如何获得投资礼金奖励？</a></li>
    <li><span>·</span><a href="views/about/help.shtml-tab=tab10&href=j9.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10&href=j9" target='_blank'>怎样降低投资服务费收取比例？</a></li>
    <li><span>·</span><a href="views/about/help.shtml-tab=tab10&href=j8.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10&href=j8" target='_blank'>推荐朋友投资怎样获得更多奖励？</a></li>
    </ul>
    </div>--><!--end-->
    <div class="black15"></div>
    <div><!--<a href="views/about/partner/huazhen.html" tppabs="https://xin/2.0/views/about/partner/huazhen.html" target='_blank'>--><img src="images/pic/8.jpg" tppabs="https://xin/2.0/images/pic/8.jpg" width="304" height="80" /><!--</a>--></div>
    <div class="black15"></div>
    
    
    
    <div class="recentlylist">
    <ul class="tabbtn lefttab" id="normaltab01">
      <li class="current tabbor" onmousemove="DETAIL_BS.InitData.ScrollInvestList()"><a href="javascript:void(0)">最近投资</a></li>
      <li><a href="javascript:void(0)" onmousemove="DETAIL_BS.InitData.ScrollRefundList()">最近回款</a></li>
    </ul>
    <!--tabbtn end-->
    <div class="clear"></div>
   <!-- <div class="tabcon" id="normalcon01">
      <div  class="scrollDiv" id="s1">
   		 <ul class="recentlyfont">
	  		</ul>
      </div>--><!--tabcon end-->
     <!-- </div>-->
     <div class="tabcon" id="normalcon01">
      <div class="scrollDiv" id="s1" style="display: block; visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; height: 192px;"><ul class="recentlyfont" style="margin: 0px; padding: 0px; position: relative; list-style-type: none; z-index: 1; height: 1536px; top: -384px;"><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:06</span><span class="liname">x**20</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:04</span><span class="liname">x**16</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:02</span><span class="liname">x**21</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:01</span><span class="liname">x**86</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 11:57</span><span class="liname">x**26</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 11:56</span><span class="liname">x**65</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 11:55</span><span class="liname">x**65</span><span class="xmname">品·明特</span><span class="money">500元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 11:52</span><span class="liname">x**40</span><span class="xmname">信·优资贷</span><span class="money">1.03万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:46</span><span class="liname">s**11</span><span class="xmname">信·优企贷</span><span class="money">2万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:45</span><span class="liname">F**06</span><span class="xmname">信·优企贷</span><span class="money">1.02万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:45</span><span class="liname">x**10</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:45</span><span class="liname">x**05</span><span class="xmname">信·优企贷</span><span class="money">2000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:44</span><span class="liname">x**98</span><span class="xmname">品·分期X</span><span class="money">4000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:43</span><span class="liname">g**44</span><span class="xmname">信·优企贷</span><span class="money">4.8万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:43</span><span class="liname">x**98</span><span class="xmname">品·分期X</span><span class="money">4000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:38</span><span class="liname">x**19</span><span class="xmname">品·分期X</span><span class="money">2000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:36</span><span class="liname">x**19</span><span class="xmname">品·分期X</span><span class="money">4000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:36</span><span class="liname">x**01</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:35</span><span class="liname">x**63</span><span class="xmname">信·优企贷</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:35</span><span class="liname">x**19</span><span class="xmname">品·分期X</span><span class="money">2400元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:35</span><span class="liname">x**56</span><span class="xmname">品·明特</span><span class="money">800元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:35</span><span class="liname">x**56</span><span class="xmname">品·明特</span><span class="money">1200元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:32</span><span class="liname">x**29</span><span class="xmname">信·优企贷</span><span class="money">5万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:32</span><span class="liname">g**11</span><span class="xmname">信·优企贷</span><span class="money">1800元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:32</span><span class="liname">x**38</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:29</span><span class="liname">g**nx</span><span class="xmname">信·优企贷</span><span class="money">10万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:28</span><span class="liname">x**52</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:25</span><span class="liname">x**01</span><span class="xmname">信·消费贷</span><span class="money">600元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:23</span><span class="liname">x**43</span><span class="xmname">品·分期X</span><span class="money">2000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:23</span><span class="liname">x**16</span><span class="xmname">品·明特</span><span class="money">1000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:22</span><span class="liname">x**92</span><span class="xmname">信·消费贷</span><span class="money">200元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:22</span><span class="liname">F**rz</span><span class="xmname">信·优企贷</span><span class="money">200元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:22</span><span class="liname">x**16</span><span class="xmname">品·明特</span><span class="money">3000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:21</span><span class="liname">t**ng</span><span class="xmname">信·优企贷</span><span class="money">5700元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:20</span><span class="liname">x**16</span><span class="xmname">品·明特</span><span class="money">3000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:18</span><span class="liname">F**20</span><span class="xmname">品·分期X</span><span class="money">200元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:18</span><span class="liname">x**16</span><span class="xmname">品·明特</span><span class="money">3000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:16</span><span class="liname">x**88</span><span class="xmname">品·分期X</span><span class="money">1800元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:16</span><span class="liname">x**12</span><span class="xmname">信·优企贷</span><span class="money">3100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:14</span><span class="liname">m**15</span><span class="xmname">信·优企贷</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:14</span><span class="liname">F**49</span><span class="xmname">信·优企贷</span><span class="money">2200元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:14</span><span class="liname">j**38</span><span class="xmname">信·优企贷</span><span class="money">300元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:13</span><span class="liname">x**82</span><span class="xmname">信·优企贷</span><span class="money">1万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:11</span><span class="liname">l**13</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:09</span><span class="liname">l**03</span><span class="xmname">品·明特</span><span class="money">200元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:08</span><span class="liname">j**38</span><span class="xmname">信·优企贷</span><span class="money">5.01万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:08</span><span class="liname">x**32</span><span class="xmname">信·优企贷</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:07</span><span class="liname">a**ur</span><span class="xmname">信·消费贷</span><span class="money">3800元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:06</span><span class="liname">x**20</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:04</span><span class="liname">x**16</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:02</span><span class="liname">x**21</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:01</span><span class="liname">x**86</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 11:57</span><span class="liname">x**26</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 11:56</span><span class="liname">x**65</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 11:55</span><span class="liname">x**65</span><span class="xmname">品·明特</span><span class="money">500元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 11:52</span><span class="liname">x**40</span><span class="xmname">信·优资贷</span><span class="money">1.03万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:46</span><span class="liname">s**11</span><span class="xmname">信·优企贷</span><span class="money">2万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:45</span><span class="liname">F**06</span><span class="xmname">信·优企贷</span><span class="money">1.02万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:45</span><span class="liname">x**10</span><span class="xmname">品·明特</span><span class="money">100元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:45</span><span class="liname">x**05</span><span class="xmname">信·优企贷</span><span class="money">2000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:44</span><span class="liname">x**98</span><span class="xmname">品·分期X</span><span class="money">4000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:43</span><span class="liname">g**44</span><span class="xmname">信·优企贷</span><span class="money">4.8万元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:43</span><span class="liname">x**98</span><span class="xmname">品·分期X</span><span class="money">4000元</span></li><li style="overflow: hidden; float: none; width: 305px; height: 24px;"><span class="litime">09-22 12:38</span><span class="liname">x**19</span><span class="xmname">品·分期X</span><span class="money">2000元</span></li></ul></div><!--tabcon end-->
      </div>
     
     
    </div><!--end-->
    <div class="black15"></div>
    <div><!--<a href="javascript:if(confirm('https://xin/action/jf  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://xin/action/jf'" tppabs="https://xin/action/jf" target='_blank'><img src="images/pic/10.jpg" tppabs="https://xin/2.0/images/pic/10.jpg" width="304" height="80" /></a>--></div>
  </div>
  <!--right end-->
  <div class="clear"></div>
</div>
<div  id="sidebar-login-box" style="display: none; ">
<div class="wgt-dialog wgt-dialog-login" >
    <fieldset class="ui-form">
        <form id="rapid-login-form" method="post" action="https://xin/v2/login/login.jso">
            <h3 class="wgt-dialog-title">信融财富用户登录</h3>
            <div class="ui-form-line">
                <label for="username" class="ui-form-label">账　号：</label>
                <input type="text" name="username" id="rapid-userName" class="ui-form-input" maxlength="50" tabindex="1" placeholder="账户名 / Email / 手机号"/>
                <a href="views/account/register4.0.shtml.htm" tppabs="https://xin/2.0/views/account/register4.0.shtml" class="blue" target="_blank">注册账号</a>
            </div>
            <div class="ui-form-line">
                <label for="password" class="ui-form-label">密　码：</label>
                <input type="password" name="password" id="rapid-userPw" class="ui-form-input" maxlength="16" tabindex="2" placeholder="登录密码"/>
                <a href="views/account/back_password.shtml.htm" tppabs="https://xin/2.0/views/account/back_password.shtml" class="blue" target="_blank">忘记账号/密码？</a>
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
                <img src="images/Connect_logo_7.png" tppabs="https://xin/2.0/images/Connect_logo_7.png" onclick=" AA.RapidLogin.qqClick();" style="cursor:pointer; margin-left:8px;"></img>
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
            <h1><img src="images/c-login1.gif" tppabs="https://xin/2.0/images/c-login1.gif" width="68" height="93" /><span><i class="icondagou"></i>登录成功</span></h1>
            </div>
            </div>
        </form>
    </fieldset>
</div> 

</div>
<script type="text/javascript" src="js/rsa.js" tppabs="https://xin/2.0/js/rsa.js"></script>
<script type="text/javascript" src="../webapp2.0/js/wbox.js" tppabs="https://xin/webapp2.0/js/wbox.js"></script>
<link rel="stylesheet" href="css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css"> 
<div id="dlg_do_invest_step_one" style="display: none;">
<div class="dialogmain" style="width: 494px;background: none;" >
<div class="mainbox" style="border: none;">

<div class="dialogline">
<h2 style="padding-bottom:15px;margin-top:-10px;" id="show_vip_tip"><span class="red" ><b>提示：vip会员持有1个月后即可转让</b></span></h2>
<h2><font id="do_invest_dlg_title"></font><span id='do_invest_dlg_title_icons'></span></h2>
<ul>
<li>预期年化收益率：<span id="do_invest_dlg_rate"></span></li>
<li class="w01">融资期限：<span id="do_invest_dlg_deadline"></span></li>
<li>项目余额：<b class="red" id="do_invest_dlg_section_amount"></b> 元</li>
<li id="get_reward_li" style="display:none;">额外奖励：<span class="f-raise red" id="get_reward">X%</span></li>
<li class="w01">可用余额(含礼金)：<b><font id="do_invest_dlg_total_money" class="red"></font></b> 元<a href="javascript:if(confirm('https://xin/my/recharge  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://xin/my/recharge'" tppabs="https://xin/my/recharge" class="blue" style="margin-left:6px" id="invest_recharge1"> 充值</a></li>
<div class="clear"></div>
</ul>
<dl>
	<dd>输入投资金额：<input id="do_invest_dlg_invest_money" name="" type="text" class="text01" tabindex="100" placeholder="100元起投，需100元整数倍" /> <a href="javascript:auto_fill()" id="btn_auto_fill"
		class="blue">自动填写</a>
		<!-- modify sundy zhou 2016-5-12 -->

	</dd>
	<div class="clear"></div>
</dl>
<dl>
<dd>自动抵扣礼金：<font id="do_invest_dlg_reward">0</font><span id='do_invest_dlg_reward_unit'>元</span></dd>
<input id="do_invest_dlg_reward_total"  type="hidden" />
<div class="clear"></div>
</dl>
<!-- <dl>
<dd>预期收益：<span id="do_invest_dlg_total_interest"></dd>
<div class="clear"></div>
</dl> -->
<p class="font01" style="display: none;"><i class="AllIcon iconI" id = "allicon_iconI"></i><font id="do_invest_dlg_invest_tip"></font></p>

<dl class="do_sub">
	<dd>
	<p class="red" style="display: none;" id="invest_so_error_tip">
	<i class="AllIcon icon01">
	</i>
	<font id="invest_so_error_msg" >请输入正确金额数</font>
	</p>
	<p class="gray" style="display: none;" id="transfer_tip">
	<i class="AllIcon iconI"></i><font >等额本息转让项目需一次性投完</font>
	</p>
	<a tabindex="101" id="do_invest_dlg_sub_next" href="javascript:void(0)" class="sub03">下一步</a></dd>
	<div class="clear"></div>
</dl>

<div>
<input type="hidden" id="hl_section" value="0">
<input type="hidden" id="hl_auto" value="1">
</div>
<div class="black25"></div>
<div class="black15"></div>
</div>
</div>
</div>
</div>
 
<div id="wgt-dialog-invest-two-wrapper" style="display: none;">
	<div class="dialogmain" style="width:494px;background: none;">
		<div class="mainbox" style="border: none;">
			<div class="dialogline">
			<h2 style="padding-bottom:15px;margin-top:-10px;" id="show_vip_tip"><span class="red" ><b>提示：vip会员持有1个月后即可转让</b></span></h2>
				<h2><font id="do_invest_two_title"></font> <span id='do_invest_dlg_title_icons'> </span></h2>
				<ul>
				<li>预期年化收益率：<span id="do_invest_dlg_rate"></span></li>
				<li>融资期限：<span id="do_invest_two_deadline"></span></li>
				<li>投资金额：<b class="red" id="do_invest_two_money"></b> 元</li>
                <li id="get_reward_li" style="display:none;">额外奖励：<span class="f-raise red" id="get_reward">X%</span></li>
				<div class="clear"></div>
				</ul>
				<dl>
				<dd>已抵扣礼金：<span id="do_invest_two_reward"></span> <span id='do_invest_two_reward_unit'>元</span></dd>
				<div class="clear"></div>
				</dl>
				<dl>
				<dd>预期收益：<font class="red" id="do_invest_dlg_total_interest">...</font> 元 <span class="gray font02" style="color:#999;">(含<a href="javascript:if(confirm('https://xin/help/faq/2  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://xin/help/faq/2#1'" tppabs="https://xin/help/faq/2#1" target="_blank" title="投资服务费在回款时扣除，按投资收益的0%-10%收取，具体比例由投资时VIP等级决定" class="blue">投资服务费</a><font id="do_invest_manage_fee">...</font>元)</span></dd>
				<div class="clear"></div>
				</dl>
				<dl class="tradepass">
				<dt>交易密码：</dt>
				<dd>
					<input id="do_invest_two_tradepass" name="" tabindex="102" type="password" class="text01" />
					<span class="d_eye  d_eye_close">
						<img id="do_invest_two_tradepass_eyeclose" src="images/eye_close.png" tppabs="https://xin/2.0/images/eye_close.png" height="27"  />
					</span>
				  	<input id="do_invest_two_tradepass_plain" name="" tabindex="102" type="text" class="text01" style="display:none"/>
					<span class="d_eye d_eye_open" style="display:none">
						<img id="do_invest_two_tradepass_eyeopen"  src="images/eye_open.png" tppabs="https://xin/2.0/images/eye_open.png" height="27" />
					</span>
				   	<a href="views/account/back_password.shtml-tab=2.htm" tppabs="https://xin/2.0/views/account/back_password.shtml?tab=2" class="blue">忘记交易密码？</a>
					<p class="red" style="display: none;"><i class="AllIcon icon01"></i>交易密码必须为6-16个字符</p>
				</dd>
				<div class="clear"></div>
				</dl>
				<div class="clear"></div>
				<dl>
				<dt>验证码：</dt>
				<dd><input id="do_invest_two_cap_input" tabindex="103" name="" type="text" class="text01" /><input type="hidden" id="do_invest_two_seed" value="0" /> <span class="pic" id="do_invest_two_cap"><img id="img-captcha" src="" width="90" height="28" title="看不清楚？换一个" ></span><p class="red" id="do_invest_two_error_tip" style="display: none;"><i class="AllIcon icon01"></i><font id="do_invest_two_error_msg"></font></p></dd>
				<div class="clear"></div>
				</dl>
				<div class="clear"></div>
				<dl class="do_sub">
				<dt>&nbsp;</dt>
				<dd class="PositionR"><a  id="do_invest_two_sub" href="javascript:void(0)" tabindex="104" class="sub03">确认投资</a><em class="ui-tip01" style="display: none;"><img src="images/load.gif" tppabs="https://xin/2.0/images/load.gif" width="28" height="28" /></em></dd>
				<div class="clear"></div>
				</dl>
				<div class="black25"></div>
				<div class="black15"></div>
			</div>
		</div>
	</div>
</div>
 

<script type="text/javascript" src="../s/js/AA.base-min.js" tppabs="https://xin/s/js/AA.base-min.js"></script> 
<script type="text/javascript" src="../s/vendor/artDialog/jquery.artDialog.js" tppabs="https://xin/s/vendor/artDialog/jquery.artDialog.js"></script> 
<!-- <script type="text/javascript" src="/2.0/js/vendor/animateNumber/jquery.animateNumber.js"></script> --> 
<script type="text/javascript" src="js/mod/login.js" tppabs="https://xin/2.0/js/mod/login.js"></script> 
<script type="text/javascript" src="js/mod/do_invest.js" tppabs="https://xin/2.0/js/mod/do_invest.js"></script> 
<!-- <script type="text/javascript" src="/2.0/js/mod/invest.js"></script> --> 
<script type="text/javascript" src="js/jquery.tabso_yeso.js" tppabs="https://xin/2.0/js/jquery.tabso_yeso.js"></script> 
<script type="text/javascript" src="js/tytabs.jquery.min.js" tppabs="https://xin/2.0/js/tytabs.jquery.min.js"></script> 
<script type="text/javascript" src="js/jquery.mCustomScrollbar.js" tppabs="https://xin/2.0/js/jquery.mCustomScrollbar.js"></script> 
<script type="text/javascript" src="js/investpic.js" tppabs="https://xin/2.0/js/investpic.js"></script> 
<script type="text/javascript" src="js/XR.base.js" tppabs="https://xin/2.0/js/XR.base.js"></script> 
<script type="text/javascript" src="js/www/invest/_detail_init.js" tppabs="https://xin/2.0/js/www/invest/_detail_init.js"></script> 
<script type="text/javascript" src="js/www/invest/_detail_bs.js" tppabs="https://xin/2.0/js/www/invest/_detail_bs.js"></script> 
<script type="text/javascript" src="js/jquery.dependClass.js" tppabs="https://xin/2.0/js/jquery.dependClass.js"></script> 
<script type="text/javascript" src="js/jquery.slider.js" tppabs="https://xin/2.0/js/jquery.slider.js"></script> 
<script type="text/javascript" src="js/jquery-ui/jquery.ui.core.js" tppabs="https://xin/2.0/js/jquery-ui/jquery.ui.core.js"></script> 
<script type="text/javascript" src="js/jquery-ui/jquery.ui.widget.js" tppabs="https://xin/2.0/js/jquery-ui/jquery.ui.widget.js"></script> 
<script type="text/javascript" src="js/jquery-ui/jquery.ui.mouse.js" tppabs="https://xin/2.0/js/jquery-ui/jquery.ui.mouse.js"></script> 
<script type="text/javascript" src="js/jquery-ui/jquery.ui.slider.js" tppabs="https://xin/2.0/js/jquery-ui/jquery.ui.slider.js"></script> 
<script type="text/javascript" src="../misc/js/p/jcarousellite-last.min.js" tppabs="https://xin/misc/js/p/jcarousellite-last.min.js"></script> 
<script type="text/javascript" src="../webapp2.0/js/api/escrow.jx.js" tppabs="https://xin/webapp2.0/js/api/escrow.jx.js"></script>
<script>
$(document).ready(function($){
	$("#normaltab,#normaltab01").tabso({
		cntSelect:"#normalcon,#normalcon01",
		tabEvent:"mouseover",
		tabStyle:"normal"
	});
	$("#tabsholder").tytabs({
		tabinit:"1",
		fadespeed:"fast"
	});
	$("#tabsholder01").tytabs({
		tabinit:"5",
		fadespeed:"fast"
	});
	init();
});
</script> 
<script>
function initInvestList(){
	DETAIL_BS.InitData.Title();
}
</script> 
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" target="_blank">关于我们</a></h2><p><a href="views/about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml" target="_blank">团队介绍</a></p><p><a href="views/about/xr_history.shtml.htm" tppabs="https://xin/2.0/views/about/xr_history.shtml" target="_blank">发展历程</a></p><p><a href="views/about/xr_credit.shtml.htm" tppabs="https://xin/2.0/views/about/xr_credit.shtml" target="_blank">资质荣誉</a></p><p><a href="views/about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml" target="_blank">合作机构</a></p></li>
<li><h2><a href="views/about/help.shtml.htm" tppabs="https://xin/2.0/views/about/help.shtml" target="_blank">帮助中心</a></h2><p><a href="views/about/guide/guide1.shtml.htm" tppabs="https://xin/2.0/views/about/guide/guide1.shtml" target="_blank">新手指引</a></p><p><a href="views/about/help.shtml-tab=tab1.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab1" target="_blank">问题答疑</a></p><p><a href="views/about/help.shtml-tab=tab10.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10" target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum-49-1.html'" tppabs="http://bbs.xinrong.com/forum-49-1.html" target="_blank">意见反馈</a></p></li>
<li><h2><a href="views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" target="_blank">信息中心</a></h2><p><a href="views/about/xr_announcement.shtml.htm" tppabs="https://xin/2.0/views/about/xr_announcement.shtml" target="_blank">平台公告</a></p><p><a href="views/about/media_report.shtml.htm" tppabs="https://xin/2.0/views/about/media_report.shtml" target="_blank">媒体报道</a></p><p><a href="views/about/activitysum.shtml.htm" tppabs="https://xin/2.0/views/about/activitysum.shtml" target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum.php'" tppabs="http://bbs.xinrong.com/forum.php" target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="vip.html" tppabs="https://xin/2.0/vip.html" target="_blank">VIP特权</a></p><p><a href="javascript:if(confirm('https://xin/gift  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://xin/gift'" tppabs="https://xin/gift" target="_blank">积品汇</a></p><p><a href="javascript:if(confirm('https://xin/action/jf  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://xin/action/jf'" tppabs="https://xin/action/jf" target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="../s/img/w02.jpg" tppabs="https://xin/s/img/w02.jpg" width="100"><h4>关注服务号</h4></li><li><img src="../s/img/w05.jpg" tppabs="https://xin/s/img/w05.jpg" width="100"><h4>关注订阅号</h4></li><li><img src="../s/img/w06.jpg" tppabs="https://xin/s/img/w06.jpg" width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'" tppabs="http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5" title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="images/qq.png" tppabs="https://xin/2.0/images/qq.png" width="120"><h4>QQ号：4007779888</h4></li>
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
<li><a target="_blank" href="javascript:if(confirm('https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN'" tppabs="https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN" title="信融财富是中国首批引入VeriSign 256位SSL加密的融资理财平台。您的隐私及个人资料安全已受最高级别的保护。"><i class="icon03"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401'" tppabs="http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401" title="中国信用企业"><i class="icon02"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://search.szfw.org/cert/l/CX20140805008628008716  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://search.szfw.org/cert/l/CX20140805008628008716'" tppabs="https://search.szfw.org/cert/l/CX20140805008628008716" title="诚信网站"><i class="icon04"></i></a></li>
<li><a title="腾讯云安全认证"><i class="icon05"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business'" tppabs="http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business" title="安全联盟认证网站"><i class="icon06"></i></a></li>
</ul>
</div>
<div class="clear"></div>
<div class="footer_font main"><p> <a href="javascript:if(confirm('https://xin/about/privacy  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://xin/about/privacy'" tppabs="https://xin/about/privacy" target="_blank">隐私保护申明</a> 　|　 <a href="javascript:if(confirm('https://xin/about/agreement  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://xin/about/agreement'" tppabs="https://xin/about/agreement" target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright Xinrong.com All Rights Reserved   信融财富投资管理有限公司</div>
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
						url:'https://xin/v2/communication/free_consulation.jso',
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

<script type="text/javascript" src="js/channel.js" tppabs="https://xin/2.0/js/channel.js"></script>
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
		url:'https://xin/v2/login/in_session_data.jso',
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

<style>
.eswd_open{ width:559px; background:#fff;}
.eswd_open .f-detail{ display:block; font-size:17px; color:#0cb0d9; position:absolute; bottom:40px; left:43%;}
.eswd_open ul{ width:100%; height:63px;}
.eswd_open ul li{ width:50%; float:left;}
.eswd_open ul li a{ line-height:63px; font-size:22px; text-align:center; color:#0d2bb4; text-decoration:none; display:block;}
.eswd_open ul li a.f-close{ border-right:1px solid #c2c2c3; color:#919191;}
</style>
<div id="eswd_open_dialog" style="display: none;">
<div class="eswd_open">
  <p class="PositionR"><img src="images/esw12.png" tppabs="https://xin/2.0/images/esw12.png" width="559" height="335"><a href="action/xr_esw/esw_zt.shtml.htm" tppabs="https://xin/2.0/action/xr_esw/esw_zt.shtml" class="f-detail">了解详情&gt;</a></p>
  <ul>
    <li><a href="javascript:void(0)" class="f-close wBox_close">取消</a></li>
    <li><a href="views/account/bank_account.html" tppabs="https://xin/2.0/views/account/bank_account.html">去开户</a></li>
  </ul>
  <div class="clear"></div>
</div>
</div>
<script>
var	EswDialog;
(function(){
	var $this = {
		checkEswCreateStatus:function(escrowFlag,callBack){
			if(escrowFlag == 1){
				$.ajax({
					url:'https://xin/v2/escrow/get_base_info.jso',
					type:'post',
					dataType:'json',
					success:function (result) {
						if(result.state  == '0'){
							if(result.eswAccountId == null || result.eswAccountId == ''){
								$this.showEswCreateTip();
							}else{
								if(typeof callBack == 'function'){
									callBack();
								}
							}
						}
					}
				});
			}else{
				if(typeof callBack == 'function'){
					callBack();
				}
			}
		},
		showEswCreateTip:function(){
			var wBox = $('#eswd_open_dialog').wBox({
	            noTitle: true,
	            top: 5,
	            html: $('#eswd_open_dialog').html()
	        });
			wBox.showBox();
		}
	};
	EswDialog = $this;
})();
</script>
<script type="text/javascript" src="myjs/detail.js"></script>
</body>
</html>