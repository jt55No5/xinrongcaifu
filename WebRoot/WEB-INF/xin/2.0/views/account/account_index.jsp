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
<link href="../../css/Account.css"  rel="stylesheet" type="text/css" />
<link href="../../css/basic.css"  rel="stylesheet" type="text/css" />
<link href="../../css/tip.css"  rel="stylesheet" type="text/css" />
<link href="../../css/dialog.css"  rel="stylesheet" type="text/css" />
<link href="../../css/global.css"  rel="stylesheet" type="text/css" />
<link href="../../../s/vendor/datepicker/skin/WdatePicker.css"  rel="stylesheet" type="text/css" />
<link href="../../css/dialog-wbox.css"  rel="stylesheet" type="text/css" />
<script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<!--<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->
<!-- <script type="text/javascript" src="/2.0/js/jquery-1.10.2.min.js"></script> -->
<!-- <script type="text/javascript" src="../../js/jquery-1.4.2.js" ></script> -->
<script type="text/javascript" src="../../js/jquery-1.10.2.js" ></script>
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
<script type="text/javascript" src="../../../s/vendor/artDialog/jquery.artDialog.js" ></script>
<script type="text/javascript" src="../../../s/vendor/artDialog/dialog_ex.js" ></script>
<script type="text/javascript" src="../../js/tytabs.jquery.new.js" ></script>
<script type="text/javascript" src="../../js/jquery.imgscroll.min.js" ></script>
<script src="../../js/jquery-webox.js"  type="text/jscript"></script>
<script type="text/javascript" src="../../../s/vendor/datepicker/WdatePicker.js" ></script>
<script type="text/javascript" src="../../js/wbox.js" ></script>
<script type="text/javascript" src="../../js/AA.base-min.js" ></script>
<script type="text/javascript" src="../../js/XR.base.js" ></script>
<script type="text/javascript" src="../../js/pagination-min2.js" ></script>
<script type="text/javascript" src="../../js/mod/login.js" ></script>
<script type="text/javascript" src="../../js/mod/phone.js" ></script>
<script type="text/javascript" src="../../js/rsa.js" ></script>
<script type="text/javascript" src="../../js/common.js" ></script>
<script type="text/javascript" src="../../js/api/common_api.js" ></script>
<script type="text/javascript" src="../../js/api/user_api.js" ></script>
<script type="text/javascript" src="../../js/address/area.js" ></script>
<script type="text/javascript" src="../../js/address/location.js" ></script>
</head>
<style>
.searcha{ width:100px; height:32px; line-height:32px; text-align:center; border:1px solid #cfdeeb; color:#0078b6; background:#fbfbfb; margin:0px; padding:0px; font-size:16px; cursor:pointer;}
</style>
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
    <div class="logo left PositionR"><a href="../../../index.htm" ><img src="../../images/logo.gif"  /></a><a href="../about/shareholder.shtml.htm"  class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="account_index.shtml.htm"  class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="../../login2.0.html"  class="flogin">登录</a><a href="register4.0.shtml.htm"  class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="../../../index.shtml.htm"  id="nav_index">首页</a></li>
        <li><a href="../../../invest.shtml.htm"  id="nav_invest">投资<i class="arrow"></i></a>
        <ul>
        <li><a href="../../calculator.html#finvest"  target="_blank">投资计算器</a></li>
        </ul>
        </li>
        <li><a href="../../action/xr_huahua/huahua.shtml.htm"  id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="../../images/hh_icon.png"  /></b></a>
          <ul>
          	<li><a href="../../action/xr_huahua/huahua.shtml.htm"  target="_blank">我要借款</a></li>
            <li><a href="../../calculator.html"  target="_blank">借款计算器</a></li>
          </ul>
        </li>
        <li><a href="../about/invest_help.shtml.htm"  id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="../about/invest_help.shtml.htm"  target="_blank">投资帮助</a></li>
          	<li><a href="../about/risk.shtml.htm"  target="_blank">风险控制</a></li>
            <li><a href="../about/laws_regulations.shtml.htm#navLaws"  target="_blank">法律法规</a></li>
          </ul>
        </li>
        <li><a href="../about/about.shtml.htm"  id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="../about/about.shtml.htm"  id="nav_about_index">公司简介</a></li>
            <li><a href="../about/team.shtml.htm" >团队介绍</a></li>
            <li><a href="../about/service_data.shtml.htm" >运营数据</a></li>
            <li><a href="../about/partner.shtml.htm" >合作机构</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="../../vip.html"  id="nav_vip">VIP特权</a></div>
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
<script type="text/javascript" src="../../js/wbox.js" ></script>
<link rel="stylesheet" href="../../css/dialog-wbox.css">
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
        	location.href="account_settings.shtml-goAnswer=true.htm"/*tpa=https://xin/2.0/views/account/account_settings.shtml?goAnswer=true*/;
        });
        $('#wBox #close').unbind('click').bind('click',function(){
        	sessionStorage.setItem('afterAnswer',true);
        	wBox.close();
        })

	}
});

</script> 

<div class="LineBorder"></div>
<!--banner end-->
<div class="black15"></div>
<!--center-->
<div class="main">
<div class="AccountLeft left">
  <ul class="AccountNav">
  <li><a href="account_index.shtml.htm" >账户首页</a></li>
  <li><a href="../../xincunbao.shtml.htm" >信 存 宝<i class="fontr">R</i></a></li>
  <li><a href="../../../my/invest.htm" >投资管理</a></li>
  <li><a href="../huahua/huahua.html" >信融花花</a></li>
  <li style="display:none;"><a href="../../../my/recharge.htm" ><i class="AllIcon Icon03"></i>充值提现</a></li>
  <li><a href="../../../my/consume.htm" >收支查询</a></li>
  <li class="liFoot"><a href="account_settings.shtml.htm" >账户设置</a></li>
  <li><a href="../../../my/msg.htm" >我的消息</a></li>
  </ul>
</div>

<script type="text/javascript">
$(document).ready(function(){
	var url = window.location.pathname;
	
	if(url=='/2.0/xincunbao.shtml'){
		url='/my';
	}
	
	if(url=='/2.0/views/call/call_detail.shtml'){
		url='/2.0/views/call/call.shtml';
	}
	
	$(".AccountLeft .AccountNav li").each(function(){
		var url = window.location.pathname;
		 var li_obj = $(this);
		 var a_obj = li_obj.find('a');
		 if(a_obj.attr('href')==url){
			 a_obj.addClass('cur');
		 }else{
			 a_obj.removeClass('cur');
		 }
	});
	
});
</script>
<!--nav end-->
<div class="AccountRight right">
	<div class="AccountBoxbr">
  		<h1><span class="left BoxbrTitle"><span id="leftTitle">上午好，--</span><a href="#" id="isCheckedEmail"><i class="wmail AllIcon" title="邮箱"></i></a><a href="#" id="isCheckedMobile"><i class="wtel AllIcon" title="手机"></i></a><a href="#" id="isCheckedIdentification"><i class="wID AllIcon" title="身份证"></i></a><a href="#" id="isCheckedBankCard"><i class="wbank AllIcon" title="银行卡"></i></a></span>
  			<span class="right BoxBrTitlefont" id="unVip"><i class="AllIcon Icon01"></i><a href="../../vip.html" >成为VIP会员，尊享多项特权！ </a></span>
  			<span class="right BoxBrTitlefont01" id="vip" style="display:none;"><p class="red"><i class="AllIcon icon01"></i>您是尊贵的<span id="vipGrade">-</span>会员！</p>有效期至：<span id="vipDeadLine">--</span> <a href="../../vip.html"  class="blue">详情</a></span>
  		</h1>
  		<div class="clear"></div>
  		<div class="AccountIndexfont">
  			<div class="indextop">
				<dl>
					<dt class="font01">账户余额：</dt>
					<dd class="font01"><span class="AFont"><b class="red" id="money">--</b>元 </span><span class="font02"><a class="blue" href="../../../invest.shtml.htm" >投资</a> | <a class="blue" href="../../../my/recharge.htm" >充值</a> | <a class="blue" href="../../../my/deposit.htm" >提现</a> | <a class="blue" href="../../xincunbao.shtml.htm" >信存宝</a></span></dd>
					<div class="clear"></div>
				</dl>
  				<dl>
					<dt>投资礼金：</dt>
					<dd><span id="rewardMoney">--</span>元<span id="deadline"></span> <a href="../about/help.shtml-tab=tab3&href=c18.htm#nc18"  class="blue" target="_blank" style=" margin-left:8px;">使用须知</a> <a href="../../../action/reg_invite.htm"  target="_blank" class="blue" style=" margin-left:8px;">推荐赢礼金</a></dd>
				</dl>
				<div class="black10"></div>
				<dl>
					<dt>积分值：</dt>
					<dd><span id="score" class="red">--</span> 分 <a href="javascript:if(confirm('http://bbs.xinrong.com/thread-3866-1-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/thread-3866-1-1.html'"  target="_blank" class="blue">赚取积分</a> <a href="../../../action/jf.htm"  class="blue" style=" margin-left:8px;">立即抽奖&gt;&gt;</a></dd>
				</dl>
				<div class="black10"></div>
			</div>
  			<div class="Accountbor"></div>
			<div class="xincuenbao">
				<div class="baofont">
					<span class="font01 left">信存宝：<b class="red" id="xcbMoney">--</b>元</span>
					<span class="toolfoot left">
						<ul>
							<li>
								<div id="tool01"><a href="#" class="blue">账户余额存入</a> |</div>
								<div class="tooltip cuenrumain">
									<div class="tippic"><img src="../../images/acc.jpg"  width="20" height="12" /></div>
		  							<div id="tool01_close" class="tipclose"><img src="../../images/close.png"  width="11" height="11" /></div>
									<div class="tipcuenru">
										<dl class="w01">
											<dt>金额：</dt>
											<dd><input type="text" placeholder="例如：1000" class="text01" id="crMoney" /><span class="font01">元</span><p id="crMoneyError">报错</p></dd>
										</dl>
										<dl class="w02">
											<dt>交易密码：</dt>
											<dd><input type="password" placeholder="" class="text01" id="crPass" /> <a href="back_password.shtml-tab=2.htm" >忘记密码？</a><p class="red" id="crPassError">报错</p></dd>
										</dl>
										<div class="clear"></div>
										<span class="fontxy"><input id="readme" type="checkbox" checked="checked" /> 我已阅读并接收<a href="../../../about/xcb_xieyi.htm"  class="blue">《信存宝服务用户协议》</a></span>
										<span class="fontxy" style="display:none;"><i class="icon01 AllIcon"></i>份额已满，敬请期待下一轮发布</span>
									</div>
									<div class="tipcuenrusub"><a href="#" class="sub02" id="crSub">提交</a><p id="crjuhua" style="display: none;"><img src="../../images/load.gif"  width="28" height="28" /></p><p id="crFailP" style="display:none;"><i class="Icon01 AllIcon"></i><span id="crFail" style="color:red">存入失败</span></p>
									</div>
									<div class="clear"></div>
								</div>
							</li>
							<li>
								<div id="tool02"><a href="#" class="blue">转出</a> |</div>
								<div class="tooltip zhuanchumain">
	  								<div class="tippic"><img src="../../images/acc.jpg"  width="20" height="12" /></div>
	  								<div id="tool02_close" class="tipclose"><img src="../../images/close.png"  width="11" height="11" /></div>
									<div class="tipcuenru">
										<dl class="w01">
											<dt>金额：</dt>
											<dd><input id="zcMoney" type="text" placeholder="例如：1000" class="text01" /><span class="font01">元</span><p class="red" id="zcMoneyError"></p></dd>
										</dl>
										<dl class="w02">
											<dt>交易密码：</dt>
											<dd><input id="zcPass" type="password" placeholder="" class="text01" /> <a href="back_password.shtml-tab=2.htm" >忘记密码？</a><p class="red" id="zcPassError"></p></dd>
										</dl>
	  									<div class="clear"></div>
	  									<span class="fontxy"><input id="readme2" type="checkbox" checked="checked" /> 我已阅读并接收<a href="../../../about/xcb_xieyi.htm" class="blue">《信存宝服务用户协议》</a></span>
	  									<span class="fontxy" style="display:none;"><i class="icon01 AllIcon"></i>份额已满，敬请期待下一轮发布</span>
									</div>
									<div class="tipcuenrusub"><a id="zcSub" href="#" class="sub02">提交</a><p id="zcjuhua" style="display:none;"><img src="../../images/load.gif"="https://xin/2.0/images/load.gif" width="28" height="28" /></p><p id="zcFailP" style="display: none;"><i class="Icon01 AllIcon"></i><span id="zcFail" style="color:red">存入失败</span></p>
									</div>
									<div class="clear"></div>
	  							</div>
	  						</li>
	  						<li>
	  							<div id="tool05"><a href="../../xincunbao.shtml.htm" class="blue">了解更多</a></div>
	  						</li>
						</ul>
					</span>
				</div>
  				<div class="clear"></div>
  				<div class="baofont01">昨日收益：<span class="red" id="todayIncome">--</span>元 </div>
  				<div class="baofont02">昨日年化收益率：<b id="rate">--</b>% <span>万份收益：<b id="tenThousandIncome">--</b>元</span><span>剩余额度：<b id="syed">&gt;100万</b>元</span></div>
  			</div>
  			<div class="black10"></div>
  			<h2><span class="left">账户资产概览</span><a href="../../../my/invest.htm"  class="blue right">详情</a></h2>
  			<div class="clear"></div>
  			<div class="black10"></div>
			<div class="Accountgl">
				<dl>
					<dt>资产总额：</dt>
					<dd><b class="red" id="all">--</b> 元</dd>
				</dl>
				<div class="black5"></div>
				<div class="AccouBr"></div>
				<ul>
					<li>可用余额：<b id="t_money">--</b> 元</li>
					<li>信存宝：<b id="xcb_money">--</b> 元</li>
					<li>礼金余额：<b id="all_reward">--</b> 元</li>
					<li>待收本金：<b id="earnMoney">--</b> 元</li>
					<li>提现中：<b id="withdraw">--</b> 元</li>
					<li>逾期中：<b id="overdue">--</b> 元</li>
				</ul>
				<div class="black10"></div>
			</div>
			<h3>投资收益统计</h3>
			<div class="Accountgl">
				<ul>
					<li>累计充值：<font id="earn_recharge_recharge">--</font>元（<font id="earn_recharge_ct">--</font>笔）</li>
					<li class="w01">累计提现：<font id="earn_withdraw_withdraw">--</font> 元（<font id="earn_withdraw_ct">--</font>笔， 手续费：<font id="earn_withdraw_fee">--</font>元）</li>
					<li class="w02">累计投资：<b id="earn_invest_invest">--</b> 元（<font id="earn_invest_ct">--</font>笔， 笔均：<font id="earn_invest_ag">--</font> 元）</li>
					<div class="clear"></div>
				</ul>
				<div class="black10"></div>
				<div class="fontbg">累计收益：<b class="red" id="earn_all">--</b> 元（ 已回款实收收益：<font id="earn_back">--</font> 元，<!-- 待收收益：<font id="earn_earn">--</font> 元， -->信存宝收益：<font id="xcb_total_income">--</font> 元，已抵扣礼金：<font id="reward_use">--</font> 元）</div>
			</div>
  			<div class="clear"></div>
  		</div>
		<div class="black15"></div>
	</div>
	<div class="black15"></div>
	<div class="IntegralBox borrowingtab">
  		<h1><span class="left">最近待回款记录</span><span class="right">下次回款日:<font id="nextRefundDay">--</font> <span style="padding-left:15px;">下次回款总额:<font id="nextRefundSum">--</font>元</span></span></h1>
		<div class="Boxsearch">
			<span class="searchfont01 left">开始日期：<input id="s-time" type="text" class="searchtext" readonly="readonly" onfocus="WdatePicker()" /> 结束日期：<input id="e-time" type="text" class="searchtext" readonly="readonly" onfocus="WdatePicker()" /> <input id="searchBtn" type="button" value="查询" class="searchsub"></span>
			<span class="searchnav right"><a id="a-type-1" href="javascript:void(0)" class="cur">下次回款日</a> <a id="a-type-2" href="javascript:void(0)">最近一周</a> <a id="a-type-3" href="javascript:void(0)">1个月</a> <a id="a-type-4" href="javascript:void(0)">3个月</a> <a href="javascript:void(0)" style="display: none;">全部</a></span>
			<input type="hidden" id="stime" name="stime" value="0" />
			<input type="hidden" id="etime" name="etime" value="0" />
			<input type="hidden" id="type" name="type" value="1" />
		</div>
  		<div class="clear"></div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<thead>
				<tr>
					<th align="center">回款日期</th>
					<th align="center">投资项目</th>
					<th align="center">投资时间</th>
					<th align="center">投资金额</th>
					<th align="center">期限</th>
					<th align="center">预期年化收益率</th>
					<th align="center">回款方式</th>
					<th align="center">回款金额</th>
					<th align="center">状态</th>
				</tr>
			</thead>
			<tbody id="result_view">
			</tbody>
		</table>
		<div class="font_not" style="display: none;">没有符合条件的回款记录</div>
		<!--<div id="query_btn_view" class="" style="text-align: center; padding: 30px 20px 10px 20px;"><input id="init_query_btn" type="button" value="查询" class="searcha"></div>-->
		<div id="page_tool_view" class="AccFontPage right"></div>
		<p class="clear"></p>
		<p id="show_stat"></p>
		<!-- <div class="black25"></div> -->
	</div>
  	<div class="t-foot">查询不到？可能项目已全部/结束回款，请进“<a href="../../../my/consume.htm"  class="blue">收支查询</a>”，它也可以为您指定日期查询</div>
</div>
<!--right end-->
<div class="black25"></div>
</div>
<style type="text/css">
.DocBox{ margin:0 15px;}
.DocBox h1{ height:40px; line-height:40px; border-bottom:1px solid #dcdcdc; font-weight:bold; font-size:14px;}
.DocBox h1 span{ display:inline-block; padding-left:15px; color:#999; font-weight:normal; font-size:12px;}
.DocBox ul{ border-bottom:1px solid #dcdcdc; margin:0 10px; padding:10px 0;}
.DocBox ul li{ width:48%; float:left; line-height:28px;}
.DocBox .Dotable{ line-height:28px; margin:10px;}
.DocBox .Dotable table tbody tr:hover{ background:#F5F5F5;}
.DocBox .Dotable table td,.DocBox .Dotable table th{ padding:0px 10px 0px 0px; text-align:left;}
.DocBox .Coflip{ text-align:right; line-height:35px; height:35px;}
.DocBox .Coflip a{ padding:0 4px;}
</style>
<div id="refund_plan_dlg" style="display: none;">
<div class="DocBox" style="width: 800px;">
	<h1><font id="loan_type"></font>-<font id="rd_sn"></font>回款计划<span>回款方式：<font id="refund_type"></font></span></h1>
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
	<div class="Coflip"><a href="javascript:RefundPlan.prePage();" id="rd_pre">上一页</a> <a href="javascript:RefundPlan.nextPage();" id="rd_next">下一页</a></div>
	</div>
</div>
</div>
<!--center end-->
<!-- 未设置交易密码 提示框-->
<div id="authorize_box" style="display:none;">
	<div class="borrowingdialog" style="width:450px; height:240px;">
		<div class="black25"></div>
		<div class="black10"></div>
		<dl>
			<dt><i class="icondagth"></i></dt>
			<dd><h2>您还未设置交易密码</h2><p class="t-font">投资、提现等交易环节需要验证交易密码，为了更加全面保护您的账户安全，请尽快设置交易密码。</p></dd>
			<div class="clear"></div>
		</dl>
		<div class="black25"></div>
		<div class="black10"></div>
		<div class="repaymentsub"><a id="authorize_box_ok" href="back_password.shtml-tab=2.htm"  class="accsub01">立即设置</a> <a id="authorize_box_cancel" href="javascript:void(0)" class="accsub02">以后再说</a></div>
	</div>
</div>
<!--交易密码设置-->
<div id="wbox_aqpassword1" style="display:none;">
<div id="pwd_box_1" class="dialog_wbox dialog_settings">
<div class="black15"></div>
<dl>
<dt>新交易密码：</dt>
<dd><input id="newPwd" type="password" class="inputtext01" /></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>确认新密码：</dt>
<dd><input id="confirmPwd" type="password" class="inputtext01" />
<p id="msg_view" class="red" style="padding-top: 10px;display: none;"><i class="AllIcon iconx"></i></p>
</dd>
<div class="clear"></div>
</dl>
<dl>
<dt class="red">安全提醒：</dt>
<dd>为确保安全，交易密码请<span class="red">不要与登录密码相同</span><p class="gray">长度6-16位，可由英文字母、数字和下划线组成，区分大小写</p></dd>
<div class="clear"></div>
</dl>
<dl class="settingsub">
<dt>&nbsp;</dt>
<dd><a id="modifyPwdBut" href="javascript:void(0)" class="sub02">确定</a></dd>
<div class="clear"></div>
</dl>
</div>
<div id="pwd_box_2" class="dialog_wbox"  style="display:none;">
<div class="dialog_success">
<h3><i class="AllIcon icondagou"></i>交易密码修改成功！</h3>
<ul>
<li><p class="gray">为了您的账户安全，请妥善保管您的密码。</p></li>
</ul>
</div>
<div class="dialogsub">
<a href="javascript:void(0)" class="sub02 wBox_close">确定</a>
</div>
</div>
</div>
<!--交易密码设置-->
<script>
	var bankQuickAuthHtml=
		'<div id="wbox_quick_auth_box" >\
	<div  class="dialog_wbox fast_box" >\
	<h4 style="line-height:40px">&nbsp;&nbsp;&nbsp;请务必填写真实信息，账户资金只能提现至真实姓名与之对应的银行账号</h4>\
	<dl>\
	<dt>真实姓名：</dt>\
	<dd id="dd_real_name"><input id="real_name" type="text" class="inputtext01 textborder auth_real_name" value=""/></dd>\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>身份证号：</dt>\
	<dd id="dd_cert_no"><input id="cert_no" type="text" class="inputtext01" value=""/></dd>\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>开户银行：</dt>\
	<dd>\
		<select id="bank_name" class="select01" style="width:140px">\
		<option >中国农业银行</option>\
		<option >中国银行</option>\
		<option >中国建设银行</option>\
		<option >中国光大银行</option>\
		<option >兴业银行</option>\
		<option >中国民生银行</option>\
		<option >中信银行</option>\
		<option >平安银行</option>\
		<option >交通银行</option>\
		<option>中国工商银行</option>\
		<option>招商银行</option>\
		<option>宁波银行</option>\
		<option>浦发银行</option>\
		<option>杭州银行</option>\
		<option>广发银行股份有限公司</option>\
		</select>\
		<span class="tips" id="bank_tips_info"><i class="AllIcon iconi"></i>开户姓名必须与真实姓名一致</span>\
	</dd>\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>开户行所在地：</dt>\
	<dd>\
		<select id="loc_province" class="select01" ></select>\
		<span class="paddingtleft">\
			<select id="loc_city" class="select01">\
			</select>\
		</span>\
		<span class="paddingtleft">\
			<select id="loc_town" class="select01">\
			</select>\
		</span>\
		<input type="hidden" name="location_id" />\
	</dd>\
	<input type="hidden" id="province" value="" />\
	<input type="hidden" id="city" value="" />\
	<input type="hidden" id="town" value="" />\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>支行名称：</dt>\
	<dd><input id="branch_name" type="text" class="inputtext01" value="" placeholder="请以“支行”结尾，如：科技园支行" /></dd>\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>银行卡号：</dt>\
	<dd><input id="bank_no" type="text" class="inputtext01" value=""/></dd>\
	<div class="clear"></div>\
	</dl>\
	<dl class="error">\
	<dt>&nbsp;</dt>\
	<dd class="red" style="display:none" id="error_info"><i class="AllIcon iconx"></i>-</dd>\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>&nbsp;</dt>\
	<dd><a href="javascript:void(0)" id="step_one_next1"  class="sub02" onclick="BankQuickAuthWin.check();">下一步</a></dd>\
	<div class="clear"></div>\
	</dl>\
	<div style="padding:20px 20px;" class="settings_tips gray">\
	<i class="AllIcon iconi"></i>注册账号的姓名、手机号码必须与银行开户姓名、银行预留手机号完全一致才能通过认证，请务必仔细填写。 <br>&nbsp; &nbsp;&nbsp; &nbsp;银行卡认证仅支持借记卡，不支持信用卡和存折\
	</div>\
	</div>\
	</div>'

	var quickAuthSuccessWin=
		'<div class="dialog_wbox" style="width:450px;"><div class="dialog_success">\
		<dl>\
		<dt><i class="AllIcon icondagou"></i></dt>\
		<dd><h3><b>恭喜您认证成功，获得<span class="red"><font id="quick_auth_success_reward"></font>元</span>投资礼金</b></h3></dd>\
		<div class="clear"></div>\
		</dl>\
		</div>\
		<div class="dialogsub">\
		<a href="javascript:location.reload();" class="sub02">确 定</a>\
		</div>\
		</div>';

	var quickAuthFailWin=
		'<div class="dialog_wbox dialog_bank" style="width:510px;"><div class="dialog_success">\
		<dl>\
		<dt><i class="AllIcon icondagou"></i></dt>\
		<dd><h3><b>恭喜您实名认证成功！</b></h3>获得<span class="red">3元</span>投资礼金,银行卡信息已保存成功</dd>\
		<div class="clear"></div>\
		</dl>\
		<div class="dialogsub subhover">\
		<a href="../../../my/rechargec-quick=1;.htm"/*tpa=https://xin/my/rechargec?quick=1;*/ class="sub02">去充值认证<span class="infobox">需用无网银快捷安全支付充值至少2元，充值成功后该银行卡立即锁定；提现银行卡将不能更改<b><img src="../../images/bicon.png"/*tpa=https://xin/2.0/images/bicon.png*/ /></b></span></a>\
		</div>\
		</div></div>';

	var feeAuth1Win=
		'<div style="height:10px;"></div>\
		<div class="dialog_wbox_2 dialog_center_2">\
		<h3><i class="AllIcon icondagth"></i><span style="display:inline-block; text-align:left; vertical-align:middle;">3次免费认证机会已使用完，继续<br />认证需收费5元一次。</span></h3>\
		<dl>\
		<dt>应付金额：</dt>\
		<dd><span class="red">5</span>元</dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户名：</dt>\
		<dd><font id="feeAuth1Win_username_view">--</font></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户余额：</dt>\
		<dd><font id="feeAuth1Win_totalMoney_view">--</font>元</dd>\
		<div class="clear"></div>\
		</dl>\
		<div class="dialogsub"><a id="feeAuth1Win_btn_1" href="javascript:void(0)" class="sub02">确定</a>　<a id="feeAuth1Win_btn_2" href="javascript:void(0)" class="sub03">返回</a></div>\
		</div>';

	var feeAuth2Win=
		'<div class="dialog_wbox_2 dialog_center_2">\
		<h3><i class="AllIcon icondagth"></i>您的账户余额不足！</h3>\
		<dl>\
		<dt>应付金额：</dt>\
		<dd><span class="red">5</span>元</dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户名：</dt>\
		<dd><font id="feeAuth2Win_username_view">--</font></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户余额：</dt>\
		<dd><font id="feeAuth2Win_totalMoney_view">--</font>元 <span class="gray">（您还有<font id="feeAuth2Win_rewardMoney_view">--</font>元可用投资红包）</span></dd>\
		<div class="clear"></div>\
		</dl>\
		<div class="dialogsub"><a href="../../../my/recharge.htm"/*tpa=https://xin/my/recharge*/ class="sub02">立即充值</a> <span><i class="AllIcon iconi"></i>需充值5.00元</span></div>\
		</div>';

	var idAuthFailWin=
		'<div style="height:10px;"></div>\
		<div class="dialog_wbox_2 dialog_center_2">\
		<h3><i class="AllIcon icondax"></i>实名认证失败</h3>\
		<dl>\
		<dt>实付金额：</dt>\
		<dd><span class="red"><font id="idAuthFailWin_fee_view">--</font></span>元</dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户名：</dt>\
		<dd><font id="idAuthFailWin_username_view">--</font></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户余额：</dt>\
		<dd><font id="idAuthFailWin_totalMoney_view">--</font>元 </dd>\
		<div class="clear"></div>\
		</dl>\
		<div class="dialogsub"><a id="idAuthFailWin_btn_1" href="javascript:void(0)" class="sub02">重新认证</a></div>\
		</div>';

</script>

<script>
	BankQuickAuthWin={
		defaults:{
	           	"real_name":'',
	           	"cert_no":'',
	           	"branch_name":'',
	           	"bank_no":'',
	           	"callback":undefined
		},
		options:undefined,
		isModify:false,
		box:null,
		realName:null,
		identifyNo:null,
		init:function(data){
			BankQuickAuthWin.options = $.extend({},BankQuickAuthWin.defaults,data);

			var options=BankQuickAuthWin.options;
			//初始化值
			/* $('#real_name').val(options.real_name);
			$('#cert_no').val(options.cert_no);
			$('#branch_name').val(options.branch_name);
			$('#bank_no').val(options.bank_no); */

			if(options.real_name!=''){

				BankQuickAuthWin.isModify=true;
				$('#dd_real_name').html('<b id="real_name">'+options.real_name+'</b>');
				$('#dd_cert_no').html('<span class="paddingleft" id="cert_no">'+options.cert_no+'</span>');
			}

			//初始化地址信息
			showLocation();
		},
		show:function(data){
			/* var wBox = $("#wbox_quick_auth_box").wBox({
				title: "银行卡身份认证",
				html: bankQuickAuthHtml
			});

			wBox.showBox();	 */

			var wBox=$.dialog({

				 'title':'银行卡身份认证',
	             'padding':'0px 0px 0px 30px',
	             'content':bankQuickAuthHtml,
	             'height':'380px',
	             'initialize':function () {

	            	 BankQuickAuthWin.init(data);
	             }
			 });

			BankQuickAuthWin.box=wBox;
		},
		check:function(){
			if($('#step_one_next1').html() == '处理中…'){
				return;
			}
			var real_name='';
			var cert_no ='';
			var bank_name = $("#bank_name :selected").text();
			var loc_province = $("#loc_province :selected").text();
			var loc_city = $("#loc_city :selected").text();
			var loc_town = $("#loc_town :selected").text();

			var loc_province_val = $("#province").val();
			var loc_city_val =  $("#city").val();
			var loc_town_val =  $("#town").val();

			var branch_name = $("#branch_name").val();
			var bank_no = $.trim($("#bank_no").val());

			if(!BankQuickAuthWin.isModify){
				real_name = $("#real_name").val();
				cert_no = $.trim($("#cert_no").val());

				if(real_name == ''){
					BankQuickAuthWin.showErrMsg('真实姓名不能为空');
					return;
				}
				if(!/^([\u4e00-\u9fa5\·\.]{1,20}|[a-zA-Z\·\.\s]{1,20})$/.test(real_name)){
					BankQuickAuthWin.showErrMsg('真实姓名输入不合法');
					return;
				}
				if(cert_no == ''){
					BankQuickAuthWin.showErrMsg('身份证号不能为空');
					return;
				}
				if(cert_no.length != 18){
					BankQuickAuthWin.showErrMsg('身份证号必须为18位');
					return;
				}
				//if(!/(\d{18}$)|(\d{17}(\d|X|x)$)/.test(cert_no)){
				if(!checkIdentityNumber(cert_no)){
					BankQuickAuthWin.showErrMsg('身份证输入不合法');
					return;
				}
			}

			if(bank_name == '请选择银行' ){
				BankQuickAuthWin.showErrMsg('请选择银行');
				return;
			}
			if(branch_name == ''){
				BankQuickAuthWin.showErrMsg('支行名称不能为空');
				return;
			}
			if(bank_no == ''){
				BankQuickAuthWin.showErrMsg('银行卡号不能为空');
				return;
			}
			if(isNaN(bank_no)){
				BankQuickAuthWin.showErrMsg('银行卡号只能为数字');
				return;
			}

			if( (loc_province == '请选择省份' && loc_city == '请选择城市' &&  loc_town == '请选择地区' )
					&& (loc_province_val != '' && loc_city_val!= '' && loc_town_val != '') ){
					loc_province = loc_province_val;
					loc_city = 	loc_city_val;
					loc_town = loc_town_val;
			}else{
				if(loc_province == '请选择省份'){
					BankQuickAuthWin.showErrMsg('请选择省份');
					return;
				}
				if(loc_city == '请选择城市'){
					BankQuickAuthWin.showErrMsg('请选择城市');
					return;
				}
				if(loc_town == '请选择地区'){
					BankQuickAuthWin.showErrMsg('请选择地区');
					return;
				}
			}
			if(bank_no.length>4){
				var card=BANK_CARD.getCardInfo(bank_no,4);
				if(typeof card =='object' && card !=null){
					if(bank_no.length!=card.codelen){
						BankQuickAuthWin.showErrMsg('银行卡号应为'+card.codelen+'个数字!');
						return;
					}else if(card.bank!=bank_name){
						BankQuickAuthWin.showErrMsg("您写的银行卡号与已选的开户银行不匹配");
						return;
					}
				}else{
					BankQuickAuthWin.showErrMsg("您写的银行卡号与已选的开户银行不匹配");
					return;
				}
			}else{
				BankQuickAuthWin.showErrMsg("您写的银行卡号与已选的开户银行不匹配");
				return;
			}
			
			BankQuickAuthWin.hideErrMsg();

			BankQuickAuthWin.auth(real_name,cert_no,bank_name,loc_province,loc_city,loc_town,branch_name,bank_no);
		},
		auth:function(real_name,cert_no,bank_name,loc_province,loc_city,loc_town,branch_name,bank_no){
			var city = loc_province+ ' ' + loc_city + ' ' +　loc_town;
			var quick_auth_bank_type='8';

			$('#step_one_next1').removeClass('sub02').addClass('sub01');
			$('#step_one_next1').html('处理中…');
			UserAPI.Auth.QuickAuth({
				realname:real_name,identifyNo:cert_no,bankName:bank_name,city:city,batchName:branch_name,bankNo:bank_no,type:quick_auth_bank_type
				},
				function(result){
					if(result.state==0){
						if(result.data>0){
							$('#step_one_next1').removeClass('sub01').addClass('sub02');
							$('#step_one_next1').html('下一步');
							BankQuickAuthWin.box.close();
							BankQuickAuthWin.authSuccessWin();
						}else{
							BankQuickAuthWin.realName = real_name;
							BankQuickAuthWin.identifyNo = cert_no;

							UserAPI.Auth.GetIdCardAndBankCheckNumber({},function(result2){
								if(result2.state == 0){
									var identificationLeftNumber = result2.data.identificationLeftNumber;
									if(identificationLeftNumber == null){
										identificationLeftNumber = 3;
									}
									if(identificationLeftNumber <= 0){
										$('#step_one_next1').removeClass('sub01').addClass('sub02');
										$('#step_one_next1').html('下一步');
										//window.location.href = 'https://xin/2.0/views/account/id_bank_fee_auth.html';
										//BankQuickAuthWin.box.close();
										BankQuickAuthWin.feeAuthWin();
									}else{
										$('#step_one_next1').removeClass('sub02').addClass('sub01');
										$('#step_one_next1').html('处理中…');
										BankQuickAuthWin.idAuth(real_name,cert_no);
									}
								}
							});
						}
					}else{
						$('#step_one_next1').removeClass('sub01').addClass('sub02');
						$('#step_one_next1').html('下一步');
						if(result.state == 1001){
							BankQuickAuthWin.showErrMsg('身份证已存在');
							return;
						}else if(result.state==2100){
							BankQuickAuthWin.authFailWin();
							return;
						}
					}
				}
			);
		},
		idAuth:function(realName,identifyNo){
			if(!(realName && identifyNo)){
				if(BankQuickAuthWin.realName == null || BankQuickAuthWin.identifyNo == null){
					return;
				}
				if(BankQuickAuthWin.realName == '' || BankQuickAuthWin.identifyNo == ''){
					return;
				}else{
					realName = BankQuickAuthWin.realName;
					identifyNo = BankQuickAuthWin.identifyNo;
				}
			}

			UserAPI.Auth.idAuth({name:realName,certNo:identifyNo},function(data){
				$('#step_one_next1').removeClass('sub01').addClass('sub02');
				$('#step_one_next1').html('下一步');
				if(data.state == 0||data.state==2002||data.state==2000){
					BankQuickAuthWin.box.close();
					BankQuickAuthWin.authFailWin();
				}else{
					if(data.state == 2001){
						BankQuickAuthWin.showErrMsg('身份证格式不正确');
					}else if(data.state == 2003||data.state == 2000||data.state == '-9999'){
						BankQuickAuthWin.showErrMsg(data.msg);
					}else if(data.state == 2100){
						BankQuickAuthWin.showErrMsg('真实姓名与身份证号不匹配。您还有'+data.msg+'次机会，超过3次认证每次收取5元手续费。');
					}else if(data.state == 2101){
						BankQuickAuthWin.idAuthFailWin(true);
					}else {
						BankQuickAuthWin.showErrMsg('系统繁忙,稍后请重试');
					}
				}
			});
		},
		showErrMsg:function(msg){
			$("#error_info").html('<i class="AllIcon iconx"></i>'+msg).show();
		},
		hideErrMsg:function(){
			$("#error_info").html('').hide();
		},
		authSuccessWin:function(){
			/* var wBox = $("#wbox_quick_auth_box").wBox({
				title: "银行卡身份认证",
				html: quickAuthSuccessWin
			}); */

			var wBox= $.dialog({
				 'title':'银行卡身份认证',
	             'padding':'0px 0px 0px 0px',
	             'content':quickAuthSuccessWin,
	             'initialize':function () {

	            	 if(!BankQuickAuthWin.isModify){
	     				$('#quick_auth_success_reward').html('7');
	     				$('#quick_auth_success_reward_desc').html('（实名认证3元+银行卡认证4元）');
	     			}else{
	     				$('#quick_auth_success_reward').html('4');
	     				$('#quick_auth_success_reward_desc').html('（银行卡认证4元）');
	     			}
	             }
			 });
			BankQuickAuthWin.box=wBox;
		},
		authFailWin:function(){
			/* var wBox = $("#wbox_quick_auth_box").wBox({
				title: "银行卡身份认证",
				html: quickAuthFailWin
			}); */

			var wBox= $.dialog({
				 'title':'银行卡身份认证',
	             'padding':'0px 0px 0px 0px',
	             'content':quickAuthFailWin,
	             'initialize':function () {
	             }
			 });

			BankQuickAuthWin.box=wBox;
		},
		idAuthFailWin:function(flag){
			UserAPI.AccountBaseInfo({},function(result){
				if(result.state == 0){
					var totalMoney = result.totalMoney;

					var wBox= $.dialog({
						'title':'银行卡身份认证',
						width:'370px',
	        			'padding':'0px 0px 0px 0px',
	        			'content':idAuthFailWin,
	        			'initialize':function () {
	        				if(flag){
	        					$('#idAuthFailWin_fee_view').html('5');
	        				}else{
	        					$('#idAuthFailWin_fee_view').html('0');
	        				}
	        				$('#idAuthFailWin_username_view').html(G_ENV_VAR.UNAME);
	        				$('#idAuthFailWin_totalMoney_view').html(totalMoney);
	        				$('#idAuthFailWin_btn_1').unbind('click').click(function(){
				 				BankQuickAuthWin.box2.close();
				 				BankQuickAuthWin.box.close();
				 				BankQuickAuthWin.show();
				 			});
	       				}
					});
					BankQuickAuthWin.box2=wBox;
				}
			});
		},
		feeAuthWin:function(){
			UserAPI.AccountBaseInfo({},function(result){
				if(result.state == 0){
					var totalMoney = result.totalMoney;
					var rewardMoney = result.rewardMoney;

					var wBox;
					if(Number(totalMoney) >= 5){//提示付费认证
						wBox= $.dialog({
				 			'title':'银行卡身份认证',
	             			'padding':'0px 0px 0px 0px',
	             			'content':feeAuth1Win,
	             			'initialize':function () {
				 				$('#feeAuth1Win_username_view').html(G_ENV_VAR.UNAME);
				 				$('#feeAuth1Win_totalMoney_view').html(totalMoney);
				 				$('#feeAuth1Win_btn_1').unbind('click').click(function(){
				 					$('#step_one_next1').removeClass('sub02').addClass('sub01');
				 					$('#step_one_next1').html('处理中…');
				 					BankQuickAuthWin.idAuth();
				 					BankQuickAuthWin.box2.close();
				 				});
				 				$('#feeAuth1Win_btn_2').unbind('click').click(function(){
				 					BankQuickAuthWin.box2.close();
				 				});
	             			}
			 			});
					}else{//提示充值
						wBox= $.dialog({
				 			'title':'银行卡身份认证',
	             			'padding':'0px 0px 0px 0px',
	             			'content':feeAuth2Win,
	             			'initialize':function () {
				 				$('#feeAuth2Win_username_view').html(G_ENV_VAR.UNAME);
				 				$('#feeAuth2Win_totalMoney_view').html(totalMoney);
				 				$('#feeAuth2Win_rewardMoney_view').html(rewardMoney);
	             			}
			 			});
					}
					BankQuickAuthWin.box2=wBox;
				}
			});
		}
	};

	function checkIdentityNumber(idNum){
		if(idNum == null || idNum == ''){
			return false;
		}
		if(!/(\d{18}$)|(\d{17}(\d|X|x))$/.test(idNum)){
			return false;
		}
		var tempNum = 0;
		var modulus = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];

		for(var i=0;i<17;i++){
			var n = parseInt(idNum.substring(i,i+1));
			var tempAdd = n * modulus[i];
			tempNum += tempAdd;
		}

		var modulusLast = ["1","0","x","9","8","7","6","5","4","3","2"];
		var last = idNum.substring(17);
		var tempStr = modulusLast[tempNum%11];
		if(last.toLowerCase()!=tempStr){
			return false;
		}

		return true;
	}
	
	
</script>

<div  id="sidebar-login-box" style="display: none; ">
<div class="wgt-dialog wgt-dialog-login" >
    <fieldset class="ui-form">
        <form id="rapid-login-form" method="post" action="https://xin/v2/login/login.jso">
            <h3 class="wgt-dialog-title">信融财富用户登录</h3>
            <div class="ui-form-line">
                <label for="username" class="ui-form-label">账　号：</label>
                <input type="text" name="username" id="rapid-userName" class="ui-form-input" maxlength="50" tabindex="1" placeholder="账户名 / Email / 手机号"/>
                <a href="register4.0.shtml.htm"  class="blue" target="_blank">注册账号</a>
            </div>
            <div class="ui-form-line">
                <label for="password" class="ui-form-label">密　码：</label>
                <input type="password" name="password" id="rapid-userPw" class="ui-form-input" maxlength="16" tabindex="2" placeholder="登录密码"/>
                <a href="back_password.shtml.htm"  class="blue" target="_blank">忘记账号/密码？</a>
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
                <img src="../../images/Connect_logo_7.png"  onclick=" AA.RapidLogin.qqClick();" style="cursor:pointer; margin-left:8px;"></img>
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
            <h1><img src="../../images/c-login1.gif"  width="68" height="93" /><span><i class="icondagou"></i>登录成功</span></h1>
            </div>
            </div>
        </form>
    </fieldset>
</div> 

</div>
<script type="text/javascript" src="../../js/rsa.js" ></script>
<script type="text/javascript" src="../../../webapp2.0/js/wbox.js" ></script>
<link rel="stylesheet" href="../../css/dialog-wbox.css" >
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
.dialogmain .mainbox .suc_tips .tips_1 i{display: inline-block;width: 30px;height: 30px;margin-right: 10px;background: url("../../images/bicon01.png"/*tpa=https://xin/2.0/images/bicon01.png*//*tpa=https://xin/2.0/images/bicon01.png*/) no-repeat;background-size: contain;vertical-align: middle;}
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
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="../about/about.shtml.htm"  target="_blank">关于我们</a></h2><p><a href="../about/team.shtml.htm"  target="_blank">团队介绍</a></p><p><a href="../about/xr_history.shtml.htm" target="_blank">发展历程</a></p><p><a href="../about/xr_credit.shtml.htm"  target="_blank">资质荣誉</a></p><p><a href="../about/partner.shtml.htm"  target="_blank">合作机构</a></p></li>
<li><h2><a href="../about/help.shtml.htm"  target="_blank">帮助中心</a></h2><p><a href="../about/guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="../about/help.shtml-tab=tab1.htm" target="_blank">问题答疑</a></p><p><a href="../about/help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum-49-1.html'" target="_blank">意见反馈</a></p></li>
<li><h2><a href="../about/about.shtml.htm"  target="_blank">信息中心</a></h2><p><a href="../about/xr_announcement.shtml.htm"  target="_blank">平台公告</a></p><p><a href="../about/media_report.shtml.htm"  target="_blank">媒体报道</a></p><p><a href="../about/activitysum.shtml.htm"  target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum.php'"  target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="../../vip.html"  target="_blank">VIP特权</a></p><p><a href="../../../gift.htm" target="_blank">积品汇</a></p><p><a href="../../../action/jf.htm"  target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="../../../s/img/w02.jpg"  width="100"><h4>关注服务号</h4></li><li><img src="../../../s/img/w05.jpg"  width="100"><h4>关注订阅号</h4></li><li><img src="../../../s/img/w06.jpg" width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'" ="http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5" title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="../../images/qq.png"  width="120"><h4>QQ号：4007779888</h4></li>
</ul></li>
<li class="fb03"><a href="javascript:if(confirm('http://weibo.com/u/2719695463?profile_ftype=1&is_all=1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0'"  target="_blank" title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="../../../s/img/w07.jpg"  width="122" class="bimg" /><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
<div class="black10"></div>
</div>
</div><!--end-->
<div class="clear"></div>
<div class="footer_pic">
<ul>
<li><a target="_blank" href="javascript:if(confirm('http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86'" title="深圳市市场监督管理局企业主体身份公示"><i class="icon01"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN'"  title="信融财富是中国首批引入VeriSign 256位SSL加密的融资理财平台。您的隐私及个人资料安全已受最高级别的保护。"><i class="icon03"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401'" title="中国信用企业"><i class="icon02"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://search.szfw.org/cert/l/CX20140805008628008716  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://search.szfw.org/cert/l/CX20140805008628008716'"  title="诚信网站"><i class="icon04"></i></a></li>
<li><a title="腾讯云安全认证"><i class="icon05"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business'"  title="安全联盟认证网站"><i class="icon06"></i></a></li>
</ul>
</div>
<div class="clear"></div>
<div class="footer_font main"><p> <a href="../../../about/privacy.htm"  target="_blank">隐私保护申明</a> 　|　 <a href="../../../about/agreement.htm"  target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright Xinrong.com All Rights Reserved   信融财富投资管理有限公司</div>
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

<script type="text/javascript" src="../../js/channel.js" ></script>
<script>
var _hmt = _hmt || [];
(function() {
	var agent=navigator.userAgent;

	if(agent.indexOf('android')==-1&&agent.indexOf('Android')==-1){
		var hm = document.createElement("script");
		hm.src = "../../../../hm.baidu.com/hm.js-a5ef11ea1e672f6b504ec7fe5a92cf30"/*tpa=https://hm.baidu.com/hm.js?a5ef11ea1e672f6b504ec7fe5a92cf30*/;
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

<script type="text/javascript" src="../../js/www/account/account_index.js" ></script>
<script type="text/javascript" src="../../js/www/bank_cards.js" ></script>
<script type="text/javascript" src="../../js/www/account/refund_plan.js" ></script>
<script type="text/javascript">
$(document).ready(function() {
	$(".hmenu_nav ul li").each(function(){
		var _li = $(this);
		var _a = _li.find("a");

		if(_a.html()=="账户"){
			_li.addClass('cur');
			_a.addClass('cur');
		}else{
			_li.removeClass();
			_a.removeClass();
		}
	});
	$('.AccountNav li:eq(0) a').addClass('cur');
});
</script>

</body>
</html>