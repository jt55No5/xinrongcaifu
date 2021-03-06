<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信融财富</title>
<link href="2.0/css/basic.css"  rel="stylesheet" type="text/css" />
<link href="2.0/css/dialog.css"  rel="stylesheet" type="text/css" />
<link href="2.0/css/global.css"  rel="stylesheet" type="text/css" />
<link href="2.0/css/invest.css"  rel="stylesheet" type="text/css" />
<link href="2.0/css/invest-window.css"  rel="stylesheet" type="text/css" />
    <link href="2.0/css/esw_dialog.css"  rel="stylesheet" type="text/css" />
<!--<script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->
<!-- <script type="text/javascript" src="/2.0/js/jquery-1.10.2.min.js"></script> -->
<script type="text/javascript" src="2.0/js/jquery-1.10.2.js" ></script>

<script type="text/javascript" src="s/vendor/artDialog/jquery.artDialog.js" ></script>
<script type="text/javascript" src="s/vendor/artDialog/dialog_ex.js" ></script>
<script type="text/javascript" src="2.0/js/tytabs.jquery.new.js" ></script>
<script type="text/javascript" src="2.0/js/date.js" ></script>
<script type="text/javascript" src="2.0/js/pagination-min2.js" ></script>
<script type="text/javascript" src="2.0/js/vendor/animateNumber/jquery.animateNumber.js" ></script>
<script type="text/javascript" src="s/js/AA.base-min.js" ></script>
<script type="text/javascript" src="2.0/js/XR.base.js" ></script>
<script type="text/javascript" src="2.0/js/common.js" ></script>
<script type="text/javascript" src="2.0/js/mod/login.js" ></script>
<script type="text/javascript" src="webapp2.0/js/api/escrow.jx.js" ></script>
<script type="text/javascript" src="2.0/js/mod/do_invest.js" ></script>
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
    <div class="logo left PositionR"><a href="index.htm" ><img src="2.0/images/logo.gif"  /></a><a href="2.0/views/about/shareholder.shtml.htm"  class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="2.0/views/account/account_index.shtml.htm"  class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="2.0/login2.0.html"  class="flogin">登录</a><a href="2.0/views/account/register4.0.shtml.htm"  class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="index.htm"  id="nav_index">首页</a></li>
        <li><a href="invest.shtml.htm"  id="nav_invest">投资<i class="arrow"></i></a>
        <ul>
        <li><a href="2.0/calculator.html#finvest"  target="_blank">投资计算器</a></li>
        <li><a href="finacing.html" id="finacing" >我要融资</a></li>
        </ul>
        </li>
        <li><a href="2.0/action/xr_huahua/huahua.shtml.htm"  id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="2.0/images/hh_icon.png"  /></b></a>
          <ul>
          	<li><a href="2.0/action/xr_huahua/huahua.shtml.htm"  target="_blank">我要借款</a></li>
            <li><a href="2.0/calculator.html"  target="_blank">借款计算器</a></li>
          </ul>
        </li>
        <li><a href="2.0/views/about/invest_help.shtml.htm"  id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="2.0/views/about/invest_help.shtml.htm"  target="_blank">投资帮助</a></li>
          	<li><a href="2.0/views/about/risk.shtml.htm"  target="_blank">风险控制</a></li>
            <li><a href="2.0/views/about/laws_regulations.shtml.htm#navLaws"  target="_blank">法律法规</a></li>
          </ul>
        </li>
        <li><a href="2.0/views/about/about.shtml.htm"  id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="2.0/views/about/about.shtml.htm"  id="nav_about_index">公司简介</a></li>
            <li><a href="2.0/views/about/team.shtml.htm" >团队介绍</a></li>
            <li><a href="2.0/views/about/service_data.shtml.htm" >运营数据</a></li>
            <li><a href="2.0/views/about/partner.shtml.htm" >合作机构</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="2.0/vip.html"  id="nav_vip">VIP特权</a></div>
      </div>
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
<script type="text/javascript" src="2.0/js/wbox.js" ></script>
<link rel="stylesheet" href="2.0/css/dialog-wbox.css" >
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
        	location.href="2.0/views/account/account_settings.shtml-goAnswer=true.htm"/*tpa=https://xin/2.0/views/account/account_settings.shtml?goAnswer=true*/;
        });
        $('#wBox #close').unbind('click').bind('click',function(){
        	sessionStorage.setItem('afterAnswer',true);
        	wBox.close();
        })

	}
});

</script> 

<div class="black25"></div>
<span class="invest_double" style="display: none;"><a href="2.0/action/xr_double/xr_depository.shtml.htm"  target="_blank" style="display: inline-block;"><img src="2.0/images/double01.png" /></a></span>

<!--end-->
<div class="black5"></div>
<div class="black5"></div>
<!--<div class="main">
  <h1 class="invest_title"><span>旨在为投资人创造更多优质项目</span></h1>
  <div class="invest_xcb">
    <dl>
      <dt><img src="/2.0/images/in-02.jpg" /></dt>
      <dd>
        <p class="t-font"><a href="/action/xcb_zt" target="_blank" class="more">了解详情></a></p>
        <ul>
          <li class="wf01">
            <h2>昨日年化收益</h2>
            <font id="xcb_rate">0.00%</font>
          	<h2><font id="xcb_rateText"></font><font id="xcb_load"></font></h2>
          </li>
          <li><i class="AllIcon icon01"></i>智能复投</li>
          <li><i class="AllIcon icon02"></i>灵活存转</li>
          <li><i class="AllIcon icon03"></i>每日结息</li>
        </ul>
        <a id="invest_xcb_cr" href="javascript:void(0)" class="sub02">立即存入</a>
        <div class="black15"></div>
        <p class="t-msg">当日存入，D+2收益到账</p>
      </dd>
      <div class="clear"></div>
    </dl>
  </div>
</div>-->
<div class="black25"></div>
<div class="main invest_project">
	
	<div id="tabsholder" class="project_list">
		<input type="hidden" value="" id="server_time">
		<ul class="tabs">
	      	<li id="tab1">${seriesList[0].seriesname }</li>
	      	<li id="tab2">${seriesList[1].seriesname }</li>
	      	<li id="tab3">${seriesList[2].seriesname }</li>
	      	<a href="2.0/calculator.html#finvest"  target="_blank" class="f-calculator"><img src="2.0/images/calculator.png"  />收益计算器</a>
    	</ul>
    	<div class="clear"></div>
		<div class="contents">
		<div id="content1" class="tabscontent">
			
			<div id="loanList1">
			<c:forEach var="project" items="${list1 }">
				<dl onclick="window.open('2.0/detail.shtml.htm?projectid=${project.id}')">	
               	<dt>${project.projectname }&nbsp;<a href="/about/partner/2" target="_blank"><i class="danbao" title="第三方公司本息担保">担保</i></a>&nbsp;<i class="jiang">奖</i>&nbsp;</dt>
               	<dd>	
               		<ul>	
               			<li class="wf_text"><h2 class="orange"><span>${project.expectedannualized*100 }</span>%<span class="f-raise">+<b>1.20%</b></span></h2>预期年化收益率</li>
               			<li class="wf_text wf01"><h2><span>${project.projectfinancingtime }</span>个月</h2>融资期限</li>	
               			<li><h3>${project.expectedfinancingamount-project.actualfinancingamount }</h3>剩余可投</li>
               			<li><h3>${project.receivablewayName }</h3>回款方式</li>
               		</ul>	
               		<div class="clear"></div>
               		<span class="p_sub"><a href="javascript:void(0)" methodhref="do_invest_step_one(480631,'<span>1</span>个月','品·明特-170920系列之0474',0,1,'DJ','9','0.10','0')" class="sub02 invest_btn">立即投资</a><p>100元起投</p></span>
               	</dd>	
               </dl>
			</c:forEach>
			</div>
			
	      	<!--<div id="pageView1" class="pagefont">-->
	      		<div id="pageView1" class="pagefont"><a class="first c-font" href="javascript:;">首页</a><a class="prev c-font" href="javascript:;">上一页</a><span class="selected" href="javascript:;">1</span><a href="javascript:Invest.getSectionList1(2)">2</a><a href="javascript:Invest.getSectionList1(3)">3</a><a href="javascript:Invest.getSectionList1(4)">4</a><a href="javascript:Invest.getSectionList1(5)">5</a><a class="disabled" href="javascript:;">...</a><a class="next" href="javascript:Invest.getSectionList1(2)">下一页</a><a class="last" href="javascript:Invest.getSectionList1(200)">尾页</a></div>
	      	<!--</div>-->
	      	<div id="noneList1" class="t-tips" style="display: none;">
        		<img src="2.0/images/in-10.png"  width="71" height="95" /><p>项目筹集中...</p>
    		</div>
		</div>
		
		<div id="content2" class="tabscontent">
		
      		<div id="loanList2">
      		<c:forEach var="project" items="${list2 }">
				<dl onclick="window.open('2.0/detail.shtml.htm?projectid=${project.id}')">	
               	<dt>${project.projectname }&nbsp;<a href="/about/partner/2" target="_blank"><i class="danbao" title="第三方公司本息担保">担保</i></a>&nbsp;<i class="jiang">奖</i>&nbsp;</dt>
               	<dd>	
               		<ul>	
               			<li class="wf_text"><h2 class="orange"><span>${project.expectedannualized*100 }</span>%<span class="f-raise">+<b>1.20%</b></span></h2>预期年化收益率</li>
               			<li class="wf_text wf01"><h2><span>${project.projectfinancingtime }</span>个月</h2>融资期限</li>	
               			<li><h3>${project.expectedfinancingamount-project.actualfinancingamount }</h3>剩余可投</li>
               			<li><h3>${project.receivablewayName }</h3>回款方式</li>
               		</ul>	
               		<div class="clear"></div>
               		<span class="p_sub"><a href="javascript:void(0)" methodhref="do_invest_step_one(480631,'<span>1</span>个月','品·明特-170920系列之0474',0,1,'DJ','9','0.10','0')" class="sub02 invest_btn">立即投资</a><p>100元起投</p></span>
               	</dd>	
               </dl>
			</c:forEach>
      		</div>
      		
      		
      		<div id="pageView2" class="pagefont">
	      		<a class="first c-font" href="javascript:;">首页</a>
	      		<a class="prev c-font" href="javascript:;">上一页</a>
	      		<span class="selected" href="javascript:;">1</span>
	      		<a href="javascript:Invest.getSectionList2(2)">2</a>
	      		<a href="javascript:Invest.getSectionList2(3)">3</a>
	      		<a href="javascript:Invest.getSectionList2(4)">4</a>
	      		<a href="javascript:Invest.getSectionList2(5)">5</a>
	      		<a class="disabled" href="javascript:;">...</a>
	      		<a class="next" href="javascript:Invest.getSectionList2(2)">下一页</a>
	      		<a class="last" href="javascript:Invest.getSectionList2(200)">尾页</a>
      		</div>
	      	<div id="noneList2" class="t-tips" style="display: none;">
	        	<img src="2.0/images/in-10.png"  width="71" height="95" /><p>项目筹集中...</p>
	    	</div>
      	</div>
      	
		<div id="content3" class="tabscontent">
			
				<div id="loanList3">
					<c:forEach var="project" items="${list3 }">
					<dl onclick="window.open('2.0/detail.shtml.htm?projectid=${project.id}')">	
	               	<dt>${project.projectname }&nbsp;<a href="/about/partner/2" target="_blank"><i class="danbao" title="第三方公司本息担保">担保</i></a>&nbsp;<i class="jiang">奖</i>&nbsp;</dt>
	               	<dd>	
	               		<ul>	
	               			<li class="wf_text"><h2 class="orange"><span>${project.expectedannualized*100 }</span>%<span class="f-raise">+<b>1.20%</b></span></h2>预期年化收益率</li>
	               			<li class="wf_text wf01"><h2><span>${project.projectfinancingtime }</span>个月</h2>融资期限</li>	
	               			<li><h3>${project.expectedfinancingamount-project.actualfinancingamount }</h3>剩余可投</li>
	               			<li><h3>${project.receivablewayName }</h3>回款方式</li>
	               		</ul>	
	               		<div class="clear"></div>
	               		<span class="p_sub"><a href="javascript:void(0)" methodhref="do_invest_step_one(480631,'<span>1</span>个月','品·明特-170920系列之0474',0,1,'DJ','9','0.10','0')" class="sub02 invest_btn">立即投资</a><p>100元起投</p></span>
	               	</dd>	
	               </dl>
					</c:forEach>
				</div>
			
	
				<div id="pageView3" class="pagefont">
					<a class="first c-font" href="javascript:;">首页</a>
					<a class="prev c-font" href="javascript:;">上一页</a>
					<span class="selected" href="javascript:;">1</span>
					<a href="javascript:Invest.getSectionList3(2)">2</a>
					<a href="javascript:Invest.getSectionList3(3)">3</a>
					<a class="next" href="javascript:Invest.getSectionList3(2)">下一页</a>
					<a class="last" href="javascript:Invest.getSectionList3(3)">尾页</a>
				</div>
				
			
	      	
		</div>
    <!--一键投资-->
    <div id="content5" class="tabscontent">
      <div style="text-align:right;"><a href="2.0/views/about/help.shtml-tab=tab3&href=c12_new.htm"  target="_blank" style="margin-right:10px;color:#0078B6;line-height:40px;font-size:14px;">什么是一键投资？</a></div>
			<div id="loanList5"></div>
	      	<div id="pageView4" class="pagefont"></div>
	      	<div id="noneList4" class="t-tips" style="display: none;">
				<img src="2.0/images/in-10.png" width="71" height="95" /><p>项目筹集中...</p>
			</div>
		</div>
		</div>
	</div>
</div>
<!--产品 end-->
<div class="black25"></div>
<div class="main invest_data">
  <h1><i class="AllIcon"></i>数据概览<a href="2.0/views/about/service_data.shtml.htm"  target="_blank" class="more">更多数据></a></h1>
  <ul>
    <li>
      <h2>昨日成交总额</h2>
      <span id="yesTotal_money"><span class="orange">0</span>元</span></li>
    <li>
      <h2>昨日项目个数</h2>
      <span id="yesTotalSecLoanNumCount" class="orange">0</span>个</li>
    <li>
      <h2>对投资人逾期金额</h2>
      <span class="orange">0.00</span>元</li>
    <li>
      <h2>借款人逾期/坏账率</h2>
      <span class="orange" id="allOverDueMoneyRate_view">0</span>%/<span class="orange" id="allBadMoneyRate_view">0</span>%</li>
  </ul>
  <div class="black20"></div>
  <p class="f-msg">自2012年12月平台上线以来，未出现过对投资人的逾期</p>
  <div class="black20"></div>
</div>
<!--数据概览 end-->

<div class="main">
<h1 class="invest_title"><span>轻松投资，稳赚收益</span></h1>
</div>
<div class="invest_guide">
<div class="main">
<ul>
<li><h1>第1步</h1><img src="2.0/images/in-04.png"  /><h2>注册及认证</h2>账户注册、手机和实名认证</li>
<li class="wf01">></li>
<li><h1>第2步</h1><img src="2.0/images/in-05.png"  /><h2>账户充值</h2>通过网银进行账户充值</li>
<li class="wf01">></li>
<li><h1>第3步</h1><img src="2.0/images/in-06.png" /><h2>投资</h2>选择投资项目、坐享收益</li>
</ul>
</div>
</div><!--新手 end-->

<div class="main invest_help">
<h1 class="invest_title"><span>信融教你如何玩转投资，享高收益</span></h1>
<ul>
<li class="faq01"><a href="2.0/views/about/help.shtml-tab=tab10&href=j4.htm"  target="_blank"><span class="faqw">先买VIP再投资还是直接投资送VIP?</span><span class="faqd">
目前开通VIP的方式有两种：直接购买和投资满额赠送。以投资10万元、1月项目（预期年化收益率：9.0%，满5万元送VIP）为例进行对比：<br />1、先购买VIP，再投资10万元，支出为：100150元；实收收益：690元，积分：27500分 <span class="orange">详情</span></span></a></li>
<li class="faq02"><a href="2.0/views/about/help.shtml-tab=tab10&href=j3.htm" target="_blank"><span class="faqw">什么是投资礼金？</span><span class="faqd">
投资礼金可在信融财富抵用部分或全部投资金额（不可用于信存宝），投资者可通过参与相关活动获取。投资礼金有效期为45天，过期将被回收。</span></a></li>
<li class="faq03"><a href="2.0/views/about/help.shtml-tab=tab10&href=j5.htm"  target="_blank"><span class="faqw">如何提高抢投成功率？</span><span class="faqd">
投资前重新登录信融财富，提前计算好投资金额、核实交易密码，待开始投资后快速输入，从而提高抢投成功率。</span></a></li>
</ul>
<div class="clear"></div>
</div>

<div class="black15"></div>
<div class="main invest_ranking">
<ul>
<li class="current"><font id="last_month"></font>月投资风云榜</li>
</ul>
<div class="clear"></div>
<div class="ranking_table">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<thead>
  <tr>
    <th align="center">排名</th>
    <th align="center">用户名</th>
    <th align="center">投资总额</th>
    <th align="center">预期收益</th>
    <th width="212" align="center">已加入信融（天）&nbsp;</td>
  </tr>
  </thead>

  	
  	<tbody id="investRanking_view">
  		<tr>						  
  			<td align="center"><i class="AllIcon icon01">1</i></td>
  			<td align="center">d**98</td>						    
  			<td align="center">3,075,400.00元</td>	
  			<td align="center">399,219.68元</td>	
  			<td align="center">1年237天</td>		    
  		</tr><tr class="bg">						
  			<td align="center"><i class="AllIcon icon02">2</i></td>
  			<td align="center">t**99</td>
  			<td align="center">2,706,535.69元</td>
  			<td align="center">108,439.74元</td>
  			<td align="center">3年220天</td>		    
  		</tr><tr>						    	
  			<td align="center"><i class="AllIcon icon03">3</i></td>	
  			<td align="center">m**95</td>		
  			<td align="center">2,076,400.00元</td>		
  			<td align="center">15,573.00元</td>		
  			<td align="center">2年27天</td>		    		
  		</tr><tr class="bg">						    
  			<td align="center">4</td>				
  			<td align="center">x**14</td>			
  			<td align="center">2,009,900.00元</td>		
  			<td align="center">53,719.38元</td>				
  			<td align="center">241天</td>		    	
  		</tr><tr>						    		
  			<td align="center">5</td>					
  			<td align="center">a**le</td>				
  			<td align="center">1,882,700.00元</td>		
  			<td align="center">72,040.69元</td>			
  			<td align="center">3年186天</td>		    
  		</tr><tr class="bg">						    	
  			<td align="center">6</td>						    		<td align="center">h**an</td>						    		<td align="center">1,878,700.00元</td>					    			<td align="center">219,627.23元</td>				    				<td align="center">1年298天</td>		    					 </tr><tr>						    		<td align="center">7</td>						    		<td align="center">X**ke</td>						    		<td align="center">1,856,300.00元</td>					    			<td align="center">32,039.49元</td>				    				<td align="center">2年18天</td>		    					 </tr><tr class="bg">						    		<td align="center">8</td>						    		<td align="center">y**ee</td>						    		<td align="center">1,707,542.95元</td>					    			<td align="center">55,087.24元</td>				    				<td align="center">3年190天</td>		    					 </tr><tr>						    		<td align="center">9</td>						    		<td align="center">Y**16</td>						    		<td align="center">1,567,300.00元</td>					    			<td align="center">29,537.32元</td>				    				<td align="center">4年165天</td>		    					 </tr><tr class="bg">						    		<td align="center">10</td>						    		<td align="center">x**66</td>						    		<td align="center">1,362,400.00元</td>					    			<td align="center">29,445.34元</td>				    				<td align="center">1年124天</td>		    					 </tr>
  	</tbody>


</table>
<p class="t-msg">上月投资金额排名，以上排名规则解释权归信融财富所有</p>
</div>
</div>
<div class="black25"></div>

<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="2.0/views/about/about.shtml.htm"  target="_blank">关于我们</a></h2><p><a href="2.0/views/about/team.shtml.htm"  target="_blank">团队介绍</a></p><p><a href="2.0/views/about/xr_history.shtml.htm"  target="_blank">发展历程</a></p><p><a href="2.0/views/about/xr_credit.shtml.htm"  target="_blank">资质荣誉</a></p><p><a href="2.0/views/about/partner.shtml.htm"  target="_blank">合作机构</a></p></li>
<li><h2><a href="2.0/views/about/help.shtml.htm" target="_blank">帮助中心</a></h2><p><a href="2.0/views/about/guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="2.0/views/about/help.shtml-tab=tab1.htm"  target="_blank">问题答疑</a></p><p><a href="2.0/views/about/help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum-49-1.html'"  target="_blank">意见反馈</a></p></li>
<li><h2><a href="2.0/views/about/about.shtml.htm"  target="_blank">信息中心</a></h2><p><a href="2.0/views/about/xr_announcement.shtml.htm"  target="_blank">平台公告</a></p><p><a href="2.0/views/about/media_report.shtml.htm"  target="_blank">媒体报道</a></p><p><a href="2.0/views/about/activitysum.shtml.htm"  target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum.php'"  target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="2.0/vip.html" target="_blank">VIP特权</a></p><p><a href="gift.htm"  target="_blank">积品汇</a></p><p><a href="action/jf.htm"  target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="s/img/w02.jpg"  width="100"><h4>关注服务号</h4></li><li><img src="s/img/w05.jpg"  width="100"><h4>关注订阅号</h4></li><li><img src="s/img/w06.jpg"  width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'"  title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="2.0/images/qq.png"  width="120"><h4>QQ号：4007779888</h4></li>
</ul></li>
<li class="fb03"><a href="javascript:if(confirm('http://weibo.com/u/2719695463?profile_ftype=1&is_all=1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0'"  target="_blank" title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="s/img/w07.jpg"  width="122" class="bimg" /><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
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
<div class="footer_font main"><p> <a href="about/privacy.htm"  target="_blank">隐私保护申明</a> 　|　 <a href="about/agreement.htm"  target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright Xinrong.com All Rights Reserved   信融财富投资管理有限公司</div>
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

<script type="text/javascript" src="2.0/js/channel.js" ></script>
<script>
var _hmt = _hmt || [];
(function() {
	var agent=navigator.userAgent;

	if(agent.indexOf('android')==-1&&agent.indexOf('Android')==-1){
		var hm = document.createElement("script");
		hm.src = "../hm.baidu.com/hm.js-a5ef11ea1e672f6b504ec7fe5a92cf30"/*tpa=https://hm.baidu.com/hm.js?a5ef11ea1e672f6b504ec7fe5a92cf30*/;
		 var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	}
})();
</script>

<div  id="sidebar-login-box" style="display: none; ">
<div class="wgt-dialog wgt-dialog-login" >
    <fieldset class="ui-form">
        <form id="rapid-login-form" method="post" action="https://xin/v2/login/login.jso">
            <h3 class="wgt-dialog-title">信融财富用户登录</h3>
            <div class="ui-form-line">
                <label for="username" class="ui-form-label">账　号：</label>
                <input type="text" name="username" id="rapid-userName" class="ui-form-input" maxlength="50" tabindex="1" placeholder="账户名 / Email / 手机号"/>
                <a href="2.0/views/account/register4.0.shtml.htm"  class="blue" target="_blank">注册账号</a>
            </div>
            <div class="ui-form-line">
                <label for="password" class="ui-form-label">密　码：</label>
                <input type="password" name="password" id="rapid-userPw" class="ui-form-input" maxlength="16" tabindex="2" placeholder="登录密码"/>
                <a href="2.0/views/account/back_password.shtml.htm"  class="blue" target="_blank">忘记账号/密码？</a>
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
                <img src="2.0/images/Connect_logo_7.png"  onclick=" AA.RapidLogin.qqClick();" style="cursor:pointer; margin-left:8px;"></img>
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
            <h1><img src="2.0/images/c-login1.gif" width="68" height="93" /><span><i class="icondagou"></i>登录成功</span></h1>
            </div>
            </div>
        </form>
    </fieldset>
</div> 

</div>
<script type="text/javascript" src="2.0/js/rsa.js" ></script>
<script type="text/javascript" src="webapp2.0/js/wbox.js" ></script>
<link rel="stylesheet" href="2.0/css/dialog-wbox.css" >
<style>
.dialogmain{ text-align: left;  filter: progid : DXImageTransform.Microsoft.Gradient ( GradientType
 =  0, StartColorStr = '#99727272', EndColorStr = '#99727272' ); filter: none\0; }
.dialogmain .mainbox{ border: 1px solid #0078b5; background:#fff;}
.dialogmain .mainbox h1{ height: 30px; line-height: 30px; padding: 0 28px 0 10px; color: #fff; background: #74b4e2; background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #74b4e2), color-stop(100%, #3d8fca) ); background-image: -webkit-linear-gradient(#74b4e2, #3d8fca); background-image: -moz-linear-gradient(#74b4e2, #3d8fca); background-image: -o-linear-gradient(#74b4e2, #3d8fca); background-image: linear-gradient(#74b4e2, #3d8fca); position:relative;}
.dialogmain .mainbox h1 .d-close { padding: 0; position:absolute; top: 4px; right: 4px; width: 21px; height: 21px; line-height: 21px; font-size: 25px; _font-size: 20px; color: #fff; text-align: center; font-family: Helvetica, STHeiti; _font-family: Tahoma, '\u9ed1\u4f53', 'Book Antiqua', Palatino;text-decoration: none; display:block;outline: none;}
.dialogmain .dialoglogin{ padding: 30px 0 0 55px;}
.dialogmain .dialoglogin h2{ font-size: 14px; color:#000; text-align:center; padding-right:55px;}
.dialogmain .dialoglogin dl{ clear:both; width:100%; height: 31px; line-height: 31px; margin-top: 12px; position: relative;}
.dialogmain .dialoglogin dt label { display: inline-block; text-align: right; color: #333;}
.dialogmain .dialoglogin dt .ui-form-input{ width: 227px; height: 26px; line-height: 26px; padding: 1px 3px; border: 1px solid #b6c4cd; -webkit-border-radius: 2px 2px 2px 2px; -moz-border-radius: 2px 2px 2px 2px; -ms-border-radius: 2px 2px 2px 2px; -o-border-radius: 2px 2px 2px 2px; border-radius: 2px 2px 2px 2px; -webkit-transition-duration: 0.2s; -moz-transition-duration: 0.2s;-o-transition-duration: 0.2s; transition-duration: 0.2s; -webkit-transition-timing-function: ease-in; -moz-transition-timing-function: ease-in; -o-transition-timing-function: ease-in; transition-timing-function: ease-in;}
.dialogmain .dialoglogin dt .text01{ width:115px;}
.dialogmain .dialoglogin dt a.blue { margin-left: 5px;}
.dialogmain .dialoglogin dt .pic{ vertical-align:top; padding-left:5px; display:inline-block;}
.dialogmain .loginsub{ margin-top: 20px; padding-left: 52px; height: 48px; line-height: 28px; position:relative;}
.dialogmain .loginsub .sub02{ border:0px; width:98px; height:28px; font-size: 14px;}
.dialogmain .loginsub .ui-tip{ position: absolute; left: 177px; top: 0px; color: #dc3e00; font-style: normal;}
.dialogmain .loginsub .ui-tip .icon01{ width:14px; height:17px; background-position:-492px -85px; display:inline-block; vertical-align:middle; margin-right:4px;}

.dialogmain .dialogbao{ padding: 30px 0 0 0px;}
.dialogmain .dialogbao h2{ font-size: 16px; color:#000; text-align:center;}
.dialogmain .dialogbao dl{ clear:both; width:100%; height: 29px; line-height: 29px; margin-top: 10px; font-size:13px;}
.dialogmain .dialogbao dt{ width:123px; text-align:right; float:left;}
.dialogmain .dialogbao dd{ width:283px; float:left;}
.dialogmain .dialogbao dd .ui-form-input{ width: 157px; height: 26px; line-height: 26px; padding: 1px 3px; border: 1px solid #c0c1c2; border-color:#404040 #c0c1c2 #c0c1c2 #404040; -webkit-border-radius: 2px 2px 2px 2px; -moz-border-radius: 2px 2px 2px 2px; -ms-border-radius: 2px 2px 2px 2px; -o-border-radius: 2px 2px 2px 2px; border-radius: 2px 2px 2px 2px; -webkit-transition-duration: 0.2s; -moz-transition-duration: 0.2s;-o-transition-duration: 0.2s; transition-duration: 0.2s; -webkit-transition-timing-function: ease-in; -moz-transition-timing-function: ease-in; -o-transition-timing-function: ease-in; transition-timing-function: ease-in;}
.dialogmain .dialogbao dd.gray{ font-size:12px; height:18px; line-height:18px;}
.dialogmain .dialogbao dd .sub02{ border:0px; width:140px; height:35px; font-size: 14px; cursor:pointer;}
.dialogmain .dialogbao dd .ui-tip{ position: absolute; left: 0px; top: -5px; color: #dc3e00; font-style: normal; font-size:12px; padding-left:0px;}
.dialogmain .dialogbao dd .ui-tip .icon01{ width:14px; height:17px; background-position:-492px -85px; display:inline-block; vertical-align:middle; margin-right:4px;}

.dialogmain .dialogbao dd .ui-tip01{ position: absolute; left: 0px; top: -12px; font-style: normal; font-size:12px; color:#999;}
.dialogmain .dialogbao dd .ui-tip01 .icon01{ width:14px; height:17px; background-position:-430px -85px; display:inline-block; vertical-align:middle; margin-right:4px;}

</style>
<div id='xcb_window' style='display:none'>
			<div class="dialogmain" style="width:440px;"  >
			<div class="mainbox">
			<h1>存入信存宝<a href="javascript:void(0)" class="d-close">×</a></h1>
			<div class="dialogbao">
			<h2 style="display:none;">账户余额存入信存宝</h2>
            
			<dl style="display:none;">
			<dt>账户名：</dt>
			<dd id='index_xcb_name'></dd>
			<div class="clear"></div>
			</dl>
			<dl>
			<dt>账户余额：</dt>
			<dd><b class="red" id='index_account_money'></b>元 <a href="my/recharge.htm"  class="blue" style="margin-left:30px;">充值></a></dd>
			<div class="clear"></div>
			</dl>
			<dl>
			<dt>信存宝剩余额度：</dt>
			<dd><b class="red" id='index_xcb_money'></b>元</dd>
			<div class="clear"></div>
			</dl>
			<dl>
			<dt>存入金额：</dt>
			<dd><input type="text" name="userName" class="ui-form-input" maxlength="50" tabindex="1" id="xcb_cr_money"><span style="position: relative;margin-left: -18px;">元</span></dd>
			<div class="clear"></div>
			</dl>
			<dl>
			<dt>交易密码：</dt>
			<dd><input type="password" name="password" class="ui-form-input" maxlength="50" tabindex="1" id='xcb_cr_password'> <a href="2.0/views/account/back_password.shtml.htm"  target="_blank" class="blue">忘记交易密码？</a></dd>
			<div class="clear"></div>
			</dl>
			<dl>
			<dt>&nbsp;</dt>
			<dd class="gray"><input name="" type="checkbox" value="" id='readme' checked='checked'/> 我已阅读并接受<a href="about/xcb_xieyi.htm" target="_blank" class="blue">《信存宝服务用户协议》</a></dd>
			</dl>
			<dl>
			<dt>&nbsp;</dt>
			<dd class="PositionR" >
            <p class="black15"></p>
			    <p><em class="ui-tip"><i class="AllIcon " id='icls' ></i><span class='red' id='errorInfo'></span></em>
			    <em class="ui-tip01" id='crLogo' style='display:none'><img src="2.0/images/load.gif"  width="28" height="28" /></em>
			    <em class="ui-tip01" style='display:none'  id='crSuccess'><i class="AllIcon icon01"></i>成功存入</em> </p>
                <input name="" type="button" class="sub02" value="确定" id="xcb_cr" />
			</dd>
			<dd class="PositionR" style="display:none"><input name="" type="button" class="sub02" value="确定" /></dd>
			<dd class="PositionR" style="display:none"><input name="" type="button" class="sub02" value="确定"  /><em class="ui-tip01"><img src="2.0/images/load.gif"  width="28" height="28" /></em></dd>
			</dl>
			<div class="clear"></div>
			<div class="black25"></div>
			<div class="black15"></div>
			</div>
			</div>
			</div>
</div>
<style type="text/css">
.xcb_cr_suc{display: none;}
.dialogmain{ text-align: left;  filter: progid : DXImageTransform.Microsoft.Gradient ( GradientType
 =  0, StartColorStr = '#99727272', EndColorStr = '#99727272' ); filter: none\0; }
.dialogmain .mainbox{ border: 1px solid #0078b5; background:#fff;font-size: 14px;}
.dialogmain .mainbox h1{ height: 30px;font-size: 14px; line-height: 30px; padding: 0 28px 0 10px; color: #fff; background: #74b4e2; background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #74b4e2), color-stop(100%, #3d8fca) ); background-image: -webkit-linear-gradient(#74b4e2, #3d8fca); background-image: -moz-linear-gradient(#74b4e2, #3d8fca); background-image: -o-linear-gradient(#74b4e2, #3d8fca); background-image: linear-gradient(#74b4e2, #3d8fca); position:relative;}
.dialogmain .mainbox h1 .suc-close { padding: 0; position:absolute; top: 4px; right: 4px; width: 21px; height: 21px; line-height: 21px; font-size: 25px; _font-size: 20px; color: #fff; text-align: center; font-family: Helvetica, STHeiti; _font-family: Tahoma, '\u9ed1\u4f53', 'Book Antiqua', Palatino;text-decoration: none; display:block;outline: none;}
.dialogmain .mainbox .suc_tips{padding: 50px 30px 60px 0; text-align: center;}
.dialogmain .mainbox .suc_tips .tips_1{line-height: 30px; font-size:16px; text-align:left; padding-left:90px;}
.dialogmain .mainbox .suc_tips .tips_1>span{vertical-align: middle;}
.dialogmain .mainbox .suc_tips .tips_1>span>span{padding: 0 5px;color: #f00;}
.dialogmain .mainbox .suc_tips .tips_1 i{display: inline-block;width: 30px;height: 30px;margin-right: 10px;background: url("2.0/images/bicon01.png"/*tpa=https://xin/2.0/images/bicon01.png*//*tpa=https://xin/2.0/images/bicon01.png*/) no-repeat;background-size: contain;vertical-align: middle;}
.dialogmain .mainbox .suc_tips .tips_2{padding:10px 0 0 131px;color: #999;font-size: 12px;line-height: 20px; text-align:left; display:block;}
.dialogmain .mainbox .btn_con{padding-bottom: 50px;text-align: center;}
.dialogmain .mainbox .btn_con .xcb_cr_suc_btn{display: inline-block;width: 140px;height: 35px;margin: 0 auto;background-color: #f60;color: #fff;font-size: 14px;text-decoration: none;line-height: 35px;text-align: center}
</style>
<div id="xcb_cr_suc" class="xcb_cr_suc">
  <div class="dialogmain" style="width:440px;" >
    <div class="mainbox">
	  	<h1>提示<a href="javascript:void(0)" class="suc-close">×</a></h1>
      <div class="suc_tips">
        <div class="tips_1"><i></i><span>您在信存宝成功存入 :<span id="xcb_cr_suc_money">--</span>元</span></div>
        <span class="tips_2">新充值未投资过的资金存入信存宝需进行转化。转化过程中，转出并提现将收取额外0.5％手续费，按转化进度减免，100%后将仅收原提现费；转化一般需15日左右。</span>
      </div>
      <div class="btn_con"><a href="javascript:void(0)"; class="xcb_cr_suc_btn suc-close">关闭</a></div>
    </div>
  </div>
</div>
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
<li class="w01">可用余额(含礼金)：<b><font id="do_invest_dlg_total_money" class="red"></font></b> 元<a href="my/recharge.htm"  class="blue" style="margin-left:6px" id="invest_recharge1"> 充值</a></li>
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
				<dd>预期收益：<font class="red" id="do_invest_dlg_total_interest">...</font> 元 <span class="gray font02" style="color:#999;">(含<a href="help/faq/2.htm#1"  target="_blank" title="投资服务费在回款时扣除，按投资收益的0%-10%收取，具体比例由投资时VIP等级决定" class="blue">投资服务费</a><font id="do_invest_manage_fee">...</font>元)</span></dd>
				<div class="clear"></div>
				</dl>
				<dl class="tradepass">
				<dt>交易密码：</dt>
				<dd>
					<input id="do_invest_two_tradepass" name="" tabindex="102" type="password" class="text01" />
					<span class="d_eye  d_eye_close">
						<img id="do_invest_two_tradepass_eyeclose" src="2.0/images/eye_close.png"  height="27"  />
					</span>
				  	<input id="do_invest_two_tradepass_plain" name="" tabindex="102" type="text" class="text01" style="display:none"/>
					<span class="d_eye d_eye_open" style="display:none">
						<img id="do_invest_two_tradepass_eyeopen"  src="2.0/images/eye_open.png"  height="27" />
					</span>
				   	<a href="2.0/views/account/back_password.shtml-tab=2.htm"  class="blue">忘记交易密码？</a>
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
				<dd class="PositionR"><a  id="do_invest_two_sub" href="javascript:void(0)" tabindex="104" class="sub03">确认投资</a><em class="ui-tip01" style="display: none;"><img src="2.0/images/load.gif"  width="28" height="28" /></em></dd>
				<div class="clear"></div>
				</dl>
				<div class="black25"></div>
				<div class="black15"></div>
			</div>
		</div>
	</div>
</div>

<style>
  .dlg_content{
    width: 494px;
    font-size: 12px;
    color: #000;
    line-height: 36px;
  }
  .dlg_content h3{
    font-size: 14px;
  }
  .dlg_content h3 i{
    padding: 0 5px;
    margin-left: 10px;
    font-style: normal;
    font-size: 12px;
    line-height: 20px;
    color: #f60;
    border: 1px solid #f60;
    border-radius: 10px;
  }
  .dlg_content a{
    color: #0078b6;
  }
  .dlg_content input[type='text'],input[type='password']{
    width: 170px;
    line-height: 26px;
    height: 26px;
    padding: 0 5px;
  }
  .dlg_content .err_icon{
    display: inline-block;
    width: 14px;
    height: 17px;
    vertical-align: middle;
    margin-right: 4px;
    background: url("2.0/images/icon.png"/*tpa=https://xin/2.0/images/icon.png*//*tpa=https://xin/2.0/images/icon.png*/) no-repeat;
    background-position: -492px -85px;
  }
  .dlg_content .invest_btn{
    display: inline-block;
    width: 160px;
    line-height: 38px;
    color: #fff;
    background-color: #5cbaf7;
    border-radius: 5px;
    text-decoration: none;
  }
  .dlg_content .eye_box{
    display: inline-block;
    width: 30px;
    height: 30px;
    margin-left: -32px;
    vertical-align: middle;
    cursor: pointer;
    overflow: hidden;
  }
  .dlg_content .eye_box img{
    width: 100%;
  }
  .dlg_content .suc_icon{
    display: inline-block;
    width: 32px;
    height: 32px;
    padding-right: 10px;
    margin-left: -42px;
    background: url("s/img/icons/tip-sb4d5658e68.png"/*tpa=https://xin/s/img/icons/tip-sb4d5658e68.png*//*tpa=https://xin/s/img/icons/tip-sb4d5658e68.png*/) no-repeat left center;
    background-position: 0 -214px;
    vertical-align: middle;
  }
  .dlg_content .suc_btn{
    display: inline-block;
    width: 110px;
    line-height: 34px;
    margin: 0 20px;
    text-decoration: none;
    border-radius: 4px;
    border: 1px solid #f60;
  }
  .dlg_content .fail_icon{
    display: inline-block;
    width: 54px;
    height: 54px;
    margin-right: 10px;
    background: url("2.0/images/onekey_icon_cry.jpg"/*tpa=https://xin/2.0/images/onekey_icon_cry.jpg*//*tpa=https://xin/2.0/images/onekey_icon_cry.jpg*/) no-repeat center;
    vertical-align: middle;
  }
</style>
<!--投资-->
<div id="invest_onekey" style="display:none;">
  <div class="dlg_content" style="width:454px;padding-left:40px;">
    <h3>品牌合作专区系列<i>担保</i></h3>
    <div><span style="display:block;float:left;width:50%">预期年化收益率 : <span id="onekey_rate">≥9%</span></span><span style="display:block;float:left;width:50%;width:50%">融资期限 : <span id="onekey_deadline">1个月</span></span></div>
    <div>该系列项目剩余最大可投金额 : <span  id="invest_onekey_dlg_left_amout" style="color:#f00">--</span> 元</div>
    <div>可用余额(含礼金) : <span id="invest_onekey_dlg_total_money" style="color:#f00">--</span> 元<a href="my/recharge.htm"  style="margin-left:20px">充值</a></div>
    <div>输入投资金额 : <input id="invest_onekey_dlg_money" type="text" placeholder="100元起投，需100元整数倍"><a id="invest_onekey_dlg_auto_fill" href="javascript:void(0)" style="margin-left:10px;">自动填写</a></div>
    <div>自动抵扣礼金 : <span id="invest_onekey_dlg_reward">--</span> <font id="invest_onekey_dlg_reward_unit">元</font></div>
    <div><span style="display:inline-block;min-width:60px;text-align:right">交易密码 :&nbsp;</span><input id="invest_onekey_dlg__tradepass" type="password" style="width:135px;padding-right:40px;" /><span class="eye_box"><img id="invest_onekey_dlg_tradepass_eye_control" src="webapp2.0/images/icon/eye_close.png"  /></span><a href="2.0/views/account/back_password.shtml-tab=2.htm"  style="margin-left:10px">忘记交易密码？  </a></div>
    <div><span style="display:inline-block;min-width:60px;text-align:right">验证码 :&nbsp;</span><input id="invest_onekey_dlg_captcha" type="text"><span style="display:inline-block;vertical-align:middle;margin-left:10px;"><img id="invest_onekey_dlg_captcha_img" src=""></span><input type="hidden" id="invest_onekey_dlg_seed" value=""></div>
    <div style="text-align:center;margin-left:-40px;"><input id="invest_onekey_dlg_checkbox" type="checkbox" checked="checked" style="vertical-align:middle" />我已阅读同意并签署<a href="2.0/views/about/autoinvest_xieyi.shtml.htm" target="_blank">《信融财富平台自动投资授权协议》</a></div>
    <div id="invest_onekey_dlg_error_view" style="color:#f00;text-align:center;margin-left:-40px;line-height:20px"></div>
    <div style="text-align:center;margin-left:-40px;margin-top:10px;"><a id="invest_onekey_dlg_btn" href="javascript:void(0)" class="invest_btn">一键投资</a></div>
  </div>
</div>
<!--投资成功-->
<div id="invest_onekey_suc" style="display:none;">
  <div class="dlg_content" style="width:414px;padding-left:80px;font-size:14px">
    <div><i class="suc_icon"></i><b>您的投资已成功！</b></div>
    <div>投资金额 : <span id="invest_onekey_suc_money" style="color:#f00">--</span>&nbsp;元，<a href="my/invest.htm" >查看投资详情></a></div>
    <div>到期本息 : <span id="invest_onekey_earn">--</span>元<!-- <span style="margin-left:50px;">最近回款日期 : </span><span>2017-05-22</span> --></div>
    <div>获得积分 : <span id="invest_onekey_score">--</span>分<a href="gift.htm"  target="_black" style="margin-left:30px;">兑礼品></a><a href="action/jf.htm"  target="_black" style="margin-left:20px;">去抽奖></a></div>
    <div style="text-align:center;margin: 20px 0 20px -80px"><a id="invest_onekey_suc_go" href="javascript:void(0)" class="suc_btn" style="color:#fff;background-color:#f60;">继续投资</a><a id="invest_onekey_suc_back" href="javascript:void(0)" class="suc_btn" style="color:#000;background-color:#fff;border-color:#5cbaf7">返回</a></div>
    <div id="invest_onekey_suc_vip" style="text-align:center;margin-left:-80px;"><a href="2.0/vip.html"  target="_blank"><img src="2.0/images/onekey_icon_light.png"  style="vertical-align:middle;margin-top:-2px;">成为VIP会员，享受本金收益保障等多项特权！</a></div>
  </div>
</div>
<!--投资失败-->
<div id="invest_onekey_fail" style="display:none;">
  <div class="dlg_content" style="width:414px;padding-left:80px;font-size:14px">
    <div><i class="fail_icon"></i><b>手慢了，项目金额已投完，看看其他可投项目吧</b></div>
    <div style="text-align:center;margin: 40px 0 20px -80px"><a id="invest_onekey_fail_go" href="javascript:void(0)" class="suc_btn" style="color:#fff;background-color:#f60;">查看其他项目</a><a id="invest_onekey_fail_back" href="javascript:void(0)" class="suc_btn" style="color:#000;background-color:#fff;border-color:#5cbaf7">返回</a></div>
    <div id="invest_onekey_fail_vip" style="text-align:center;margin-left:-80px;"><a href="2.0/vip.html"  target="_blank"><img src="2.0/images/onekey_icon_light.png"  style="vertical-align:middle;margin-top:-2px;">成为VIP会员，享受本金收益保障等多项特权！</a></div>
  </div>
</div>
<style>
.ftel{ cursor: pointer; }

.d-dialog{ border: 1px solid #0078b5; background:#fff;}
.d-dialog h1{ height: 30px; line-height: 30px; padding: 0 28px 0 10px; color: #fff; background: #74b4e2; background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #74b4e2), color-stop(100%, #3d8fca) ); background-image: -webkit-linear-gradient(#74b4e2, #3d8fca); background-image: -moz-linear-gradient(#74b4e2, #3d8fca); background-image: -o-linear-gradient(#74b4e2, #3d8fca); background-image: linear-gradient(#74b4e2, #3d8fca); position:relative; font-size:14px;}
.d-dialog h1 .d-close { padding: 0; position:absolute; top: 4px; right: 4px; width: 21px; height: 21px; line-height: 21px; font-size: 25px; _font-size: 20px; color: #fff; text-align: center; font-family: Helvetica, STHeiti; _font-family: Tahoma, '\u9ed1\u4f53', 'Book Antiqua', Palatino;text-decoration: none; display:block;outline: none;}

.d-dialog .call_font{ padding:50px 40px 20px 40px; line-height:24px; font-size:16px;width:350px}
.d-dialog .call_sub{ padding:20px 0 0 0; text-align:center;}
.d-dialog .call_sub .sub01{ width:156px; height:45px; line-height:43px; text-align:center; background:#15a32c; font-size:20px;}
.d-dialog .call_sub .sub02{ width:156px; height:45px; line-height:43px; text-align:center; background:#c8c8c8; font-size:20px;}
.d-dialog .c_font{ text-align:center; padding-left:0px; padding-right: 0px;}
.index_dialog{ width:800px; background:#fff; border-radius:26px; position:relative;}
.index_dialog p img{ width:100%;}
.index_dialog ul{ padding:17px 0; border-bottom:1px solid #b3b3b3;}
.index_dialog ul li{ width:50%; float:left; text-align:center; line-height:80px; font-size:38px;}
.index_dialog ul li a{ display:block; color:#999;text-decoration:none}
.index_dialog h3{ text-align:center; color:#444; line-height:100px; font-weight:normal;}
.index_dialog h3 a{ display:block; color:#444; line-height:100px; font-size:40px;text-decoration:none}
.index_dialog .close{ position:absolute; top:-30px; right:-30px;}
</style>
<div id="free_tel_box" style="display:none;">
<div class="call_font" id="call_info_tip">
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
<script>
$(function(){
	//免费咨询电话
	$('.ftel,#right_free_call_btn').click(function(){
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
							}else if(result.state == 300){
								$('#call_info_tip').html("当日400免费呼入次数已超出限制，请自行联系客服4007779888");
								$('#free_tel_btn').html("关闭");
								$('#free_tel_btn').click(function(){
											_dialog.close();
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
	});
});
</script>
<script type="text/javascript" src="2.0/js/www/invest.js" ></script>
<script>
$(document).ready(function() {
	$("#queryBtn").unbind("click").bind("click",function(e){
		e.stopPropagation();
		if($("#toggleZone").is(":hidden")){
			$("#toggleZone").show();
			$("#triangle").removeClass("icon02");
			$("#triangle").addClass("icon01");
		}else{
			$("#toggleZone").hide();
			$("#triangle").removeClass("icon01");
			$("#triangle").addClass("icon02");
		}
	});
	$(document).unbind("click").bind("click",function(){
		$("#toggleZone").hide();
		$("#triangle").removeClass("icon01");
		$("#triangle").addClass("icon02");
	});

	$("#tabsholder").tytabs({
		tabinit:"1",
		fadespeed:"fast"
	});
});
</script>
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
  <p class="PositionR"><img src="2.0/images/esw12.png"  width="559" height="335"><a href="2.0/action/xr_esw/esw_zt.shtml.htm"  class="f-detail">了解详情&gt;</a></p>
  <ul>
    <li><a href="javascript:void(0)" class="f-close wBox_close">取消</a></li>
    <li><a href="2.0/views/account/bank_account.html" >去开户</a></li>
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
</body>
</html>