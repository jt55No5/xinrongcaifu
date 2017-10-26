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
<link href="css/basic.css" rel="stylesheet" type="text/css" />
<link href="css/dialog.css"  rel="stylesheet" type="text/css" />
<link href="css/global.css" rel="stylesheet" type="text/css" />
<link href="css/Account.css"  rel="stylesheet" type="text/css" />
<link href="css/xincunbao.css"  rel="stylesheet" type="text/css" />
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
<script type="text/javascript" src="../s/vendor/artDialog/jquery.artDialog.js" ></script>
<script type="text/javascript" src="../s/vendor/artDialog/dialog_ex.js" ></script>
<script type="text/javascript" src="js/vendor/echarts/build/dist/echarts.js" ></script>
<script type="text/javascript" src="js/date.js" ></script>
<script type="text/javascript" src="js/pagination-min2.js" ></script>
<script type="text/javascript" src="../s/js/AA.base-min.js" ></script>
<script type="text/javascript" src="js/XR.base.js" ></script>
<script type="text/javascript" src="js/common.js" ></script>
<script type="text/javascript" src="js/mod/login.js" ></script>
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
    <div class="logo left PositionR"><a href="../index.htm" ><img src="images/logo.gif"  /></a><a href="views/about/shareholder.shtml.htm" class="logo_font">上市公司系</a></div>
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
        <li><a href="action/xr_huahua/huahua.shtml.htm"  id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="images/hh_icon.png" /></b></a>
          <ul>
          	<li><a href="action/xr_huahua/huahua.shtml.htm" target="_blank">我要借款</a></li>
            <li><a href="calculator.html"  target="_blank">借款计算器</a></li>
          </ul>
        </li>
        <li><a href="views/about/invest_help.shtml.htm"  id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="views/about/invest_help.shtml.htm"  target="_blank">投资帮助</a></li>
          	<li><a href="views/about/risk.shtml.htm"  target="_blank">风险控制</a></li>
            <li><a href="views/about/laws_regulations.shtml.htm#navLaws" target="_blank">法律法规</a></li>
          </ul>
        </li>
        <li><a href="views/about/about.shtml.htm"  id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="views/about/about.shtml.htm"  id="nav_about_index">公司简介</a></li>
            <li><a href="views/about/team.shtml.htm" >团队介绍</a></li>
            <li><a href="views/about/service_data.shtml.htm" >运营数据</a></li>
            <li><a href="views/about/partner.shtml.htm" >合作机构</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="vip.html"  id="nav_vip">VIP特权</a></div>
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


<div class="wrapper">
	<!--content begin-->
	<div class="content main">
		<!--menu begin-->
		<div class="AccountLeft left">
  <ul class="AccountNav">
  <li><a href="views/account/account_index.shtml.htm" >账户首页</a></li>
  <li><a href="xincunbao.shtml.htm" >信 存 宝<i class="fontr">R</i></a></li>
  <li><a href="../my/invest.htm" >投资管理</a></li>
  <li><a href="views/huahua/huahua.html" >信融花花</a></li>
  <li style="display:none;"><a href="../my/recharge.htm" ><i class="AllIcon Icon03"></i>充值提现</a></li>
  <li><a href="../my/consume.htm" >收支查询</a></li>
  <li class="liFoot"><a href="views/account/account_settings.shtml.htm" >账户设置</a></li>
  <li><a href="../my/msg.htm" >我的消息</a></li>
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
		<!--menu end-->
		<!--收益展示 begin-->
		<div class="rightContent">
			<div class="earnings block">
				<div class="title">
					<i class="bar"></i>
					<span class="mainTitle">信存宝-智能复投工具</span>
					<span class="subTitle">让你的账户余额不再站岗！加入信存宝，享受高收益的灵活理财</span>
					<a href="../action/xcb_zt.htm"  target="_blank" class="blue more">了解信存宝></a>
				</div>
				<ul class="details">
					<!--收益展示
							昨日收益 		#lastDayEarnings
							昨日年化收益率	#lastDayPer
							收益率未登录计算中显示 #perCalculating
							万份收益		#perTenThousandEarnings
							累计收益		#accuEarnings
							信存宝总额		#xcbTotal
					-->
					<li>
						<span class="detailName">昨日收益(元)<i></i></span>
						<span class="number highlight" id="lastDayEarnings">--</span>
					</li>
					<li>
						<span class="detailName">昨日年化收益率<span id="perCalculating">计算中<span class="dots"></span></span></span>
						<span class="number" id="lastDayPer">7.49%</span>
						<span class="perTenThousandEarnings">万份收益<span class="number" id="perTenThousandEarnings">2.05</span>元</span>
					</li>
					<li>
						<span class="detailName">累计收益(元)</span>
						<span class="number" id="accuEarnings">--</span>
					</li>
					<li>
						<span class="detailName">信存宝总额(元)</span>
						<span class="number" id="xcbTotal">--</span>
					</li>
					<div class="clear"></div>
				</ul>
				<ul class="guarantee">
					<li><i></i><span>风险准备金机制</span></li>
					<li><i></i><span>真实借款人</span></li>
					<li><i></i><span>小额分散</span></li>
				</ul>
			</div>
			<!--收益展示 end-->
			<!--存入存出 begin-->
			<div class="transform block">
				<ul class="transBtn">
					<li class="in current">存入</li>
					<li class="separate"></li>
					<li class="out">转出</li>
				</ul>
				<ul class="transBox">
					<!--存入
							账户余额 		#inBalance
							输入金额		#inInputMoney
							输入金额错误提示#inMoneyError
							输入密码		#inInputPw
							输入密码错误提示#inPwError
							存入按钮		#inBtn
							协议checkbox	#inAgreementCheck
					-->
					<li class="inBox">
						<div class="title">
							<span>账户余额 : </span>
							<span class="balance orange" id="inBalance">--</span>
							<a href="../my/recharge.htm"  target="_blank" class="blue">充值</a>
						</div>
						<div class="inputBox">
							<div class="inputMoneyCon">
								<input type="text" name="money" class="inputMoney" id="inInputMoney" placeholder="输入金额" />
								<span class="unit">元</span>
								<span class="error" id="inMoneyError"></span>
							</div>
							<div class="inputPwCon">
								<input type="password" name="inPassword" class="inputPw" id="inInputPw" placeholder="输入交易密码" />
								<span class="error" id="inPwError"></span>
								<a href="views/account/back_password.shtml-tab=2.htm"  target="_blank" class="forgetPw blue">忘记密码?</a>
							</div>
							<a href="javascript:void(0)" class="btn" id="inBtn">存入</a>
							<div class="clear"></div>
						</div>
						<div class="agreementLine">
							<input type="checkbox" name="agreement" class="agreementCheck" id="inAgreementCheck" checked="checked"/>
							<label for="inAgreementCheck"></label>
							<span class="agreement">我已阅读并接受<a href="../about/xcb_xieyi.htm"  target="_blank" class="blue">《信存宝服务用户协议》</a></span>
						</div>
					</li>
					<!--转出
							账户余额 		#outBalance
							输入金额		#outInputMoney
							输入金额错误提示#outMoneyError
							输入密码		#outInputPw
							输入密码错误提示#outPwError
							存入按钮		#outBtn
					-->
					<li class="outBox">
						<div class="title">
							<span>可转金额 : </span>
							<span class="balance orange" id="outBalance">0.00</span>
							<span>含收益</span>
						</div>
						<div class="inputBox">
							<div class="inputMoneyCon">
								<input type="text" name="money" class="inputMoney" id="outInputMoney" placeholder="输入金额" />
								<span class="unit">元</span>
								<span class="error" id="outMoneyError"></span>
							</div>
							<div class="inputPwCon">
								<input type="password" name="outPassword" class="inputPw" id="outInputPw" placeholder="输入交易密码" />
								<span class="error" id="outPwError"></span>
								<a href="views/account/back_password.shtml-tab=2.htm" class="forgetPw blue">忘记密码?</a>
							</div>
							<a href="javascript:void(0)" class="btn" id="outBtn">转出</a>
							<div class="clear"></div>
						</div>
						<span class="hints">注：转出一般当天即可成功，但如果转出金额巨大，部分金额需等待其他用户受让方可完成转让。</span>
					</li>
				</ul>
				<!--收益明细 begin-->
			<div class="earningsDetail">
				<!--收益明细头部
						最近一周收益 		#lastWeekEarnigs
						最近一月收益		#lastMonthEarnigs
				-->
				<div class="title">
					收益
					<select id="detailMonth">
						<option value="7" selected="selected">最近7天</option>
						<option value="30">最近1个月</option>
					</select>
					<span class="lastMonth">最近一月收益 : <span id="lastMonthEarnigs" class="orange">--</span></span>
					<span class="lastWeek">最近一周收益 : <span id="lastWeekEarnigs" class="orange">--</span></span>
				</div>
				<div id="detailChart"><div class="xcb-no-data">暂无数据</div>
                
				</div>
                <p style="padding:0 0 30px 40px; color: #a9a9a9; font-size:12px;">*图表不显示当天无收益数据，详细收益情况请查询收益明细</p>
					<div class="detailConfirm">
						<!--收益明细资金确认情况
							存入总金额 		#depositTotal
							未确认			#depositNotConfirm
							已确认			#depositConfirmed
						-->
						<div class="title">资金确认情况</div>			
						<div class="total">
							<canvas id="totalCanvasGrey" width="145" height="145" style="position: absolute;left: 105px;top: 30px;"></canvas>
							<canvas id="totalCanvas" width="145" height="145" style="position: absolute;left: 105px;top: 30px;transform: rotate(-90deg)"></canvas>
							<span class="depositTotalWords">存入总金额</span>
							<span id="depositTotal">0.00</span>
						</div>
						<div class="notConfirm">
							<i></i>未确认金额 : <span id="depositNotConfirm">0.00</span>
						</div>
						<div class="confirmed">
							<i></i>已确认金额 : <span id="depositConfirmed">0.00</span>
						</div>
						<div class="tips">
							注：当天存入，D+1确认，D+2收益到账；<br>
							转出顺序：未确认>已转化>未转化
						</div>
					</div>
					<div class="transProgress">
						<!--收益明细转化进度
							已转化率 		#progressedPer
							已转化金额			#progressed
							未转化金额		#notProgressed
						-->
						<div class="title">转化进度</div>
						<div class="progressedPer">
							<div class="waveCon"><canvas id="waveCanvas" width="145" height="145" style="position: absolute;left: 0px;top: 0px;border-radius: 72.5px"></canvas></div>
							<span id="progressedPer" class="blue">0%</span>
							<span>已转化</span>	
						</div>
						<div class="progressed">
							已转化金额 : <span id="progressed" class="blue">0.00</span>
						</div>
						<div class="notProgressed">
							未转化金额 : <span id="notProgressed">0.00</span>
						</div>
						<span class="more blue">什么是转化?
							<div class="moreDetail">
								新充值未投资过的资金存入信存宝需进行转化。转化过程中，转出并提现将收取额外0.5％手续费，按转化进度减免，100%后将仅收原提现费；转化一般需15日左右。
								<div class="arrow">
									<div class="arrow"></div>
								</div>
							</div>
						</span>
					</div>
					<div class="clear"></div>
				</div>
				<!--收益明细 end-->
			</div>
			<!--存入存出 end-->

			<!--查询菜单 begin-->
			<div class="queryMenu block">
				<ul class="querySelect">
					<li class="record current" type_value="3"><span class="title">存转记录</span><i class="subBtn"><i></i></i>
						<ul class="recordSub">
							<li class="current all" type_value="3"><i></i>全部类型</li>
							<li class="earnings" type_value="2"><i></i>收益</li>
							<li class="in" type_value="0"><i></i>存入</li>
							<li class="out" type_value="1"><i></i>转出</li>
						</ul>
					</li>
					<li class="movement">当日资金去向</li>
					<li class="introduce">信存宝介绍</li>
					<li class="questions">常见问题</li>
				</ul>
				<!--存转记录 begin-->
				<div class="record">
					<table id="recordTable" border="0" cellpadding="0" cellspacing="0" >
						<thead>
							<tr>
								<th style="width:265px">交易时间</th>
								<th style="width:175px">交易类型</th>
								<th style="width:235px">交易金额(元)</th>
								<th style="width:235px">信存宝总额(元)</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
	                <div id="no_data_1" class="xcb-no-data">暂无数据</div>
					<!--存转记录页数切换-->
					<div id="recordPageSwitcher" class="pageSwitcher"></div>
				</div>
				<!--存转记录 end-->
				<!--当日资金去向 begin-->
				<div class="movement">
					<table id="movementTable" border="0" cellpadding="0" cellspacing="0">
						<thead>
							<tr>
								<th style="width:205px">项目列表</th>
								<th style="width:160px">项目融资期限</th>
								<th style="width:200px">项目到期时间</th>
								<th style="width:170px">本金</th>
								<th style="width:175px">收益</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
	                <div id="no_data_2" class="xcb-no-data">暂无数据</div>
					<!--当前资金去向页数切换-->
					<div id="movementPageSwitcher" class="pageSwitcher"></div>
				</div>
				<!--当日资金去向 end-->
				<!--信存宝介绍 begin-->
				<div class="introduce">
					<ul>
						<li>
							<p>
								<span class="title">免费存转   按日计息   收益复投</span><br/>
								·  系统自动生成投资方案 <br/>
								·  1分钱起零存整转
							</p>
						</li>
						<li>
							<p>
								<span class="title">更高收益，更好的流动性</span><br/>
								·  预期年化收益率5%~8% <br/>
								·  资金流动性强，资金不足100元时，可以陆续存入凑数 <br/>
								·  无需打理，资金充分利用
							</p>
						</li>
						<li>
							<p>
								<span class="title">真实项目，分散投资</span><br/>
								·  投资真实借款项目 <br/>
								·  随时申退，实时到账 <br/>
								<a href="../action/xcb_zt.htm"  target="_blank">&nbsp;&nbsp;查看信存宝详情></a>   
							</p>
						</li>
					</ul>
				</div>
				<!--信存宝介绍 end-->
				<!--常见问题 begin-->
				<div class="questions">
					<ul>
						<li>
							<h1><i>Q</i>信存宝具有什么特点？</h1>
							<div>
								<i>A</i>
								<p>
									真实可靠：信存宝的项目是真实项目，和信·系列项目属同类型，用户存入后进入我的账户中查看具体投资的项目。 <br/>
									存转灵活：1分钱起可存入转出。由于按日计息，存入转出必须保留至少100元的信存宝资金，或全部转出。<br/>
									自动打理：系统为您实时监控项目，自动投资成功率高，无需频繁的登录账户打理资金。
								</p>
							</div>
						</li>
						<li>
							<h1><i>Q</i>我信存宝的资金是如何配置的？</h1>
							<div>
								<i>A</i>
								<p>
									“存入”信存宝，系统将为您进行自动投资，但不承诺所有资金均能投资成功，“存入”但未投资成功的资金仍然在账户余额之中。处理方式是把账户余额的对应存入信存宝的资金“锁定”。<br/>
									“转出”信存宝，系统将为您投资的项目找到新的信存宝用户，完成债券的转让；对应“锁定”的资金被解除，“转出”成功。
								</p>
							</div>
						</li>
						<li>
							<h1><i>Q</i>如何获得收益？</h1>
							<div>
								<i>A</i>
								<p>
									当天新存入信存宝的资金，D+1确认，D+2收益到账，以后按日计息；
								</p>
							</div>
						</li>
						<li>
							<h1><i>Q</i>如何转出信存宝？</h1>
							<div>
								<i>A</i>
								<p>
									成功存入信存宝后，登录“账户”，进入“信存宝”，即可发起转出。 <br/>
									转出一般当日可全额到达账户余额，但极端情况下，如果发起了巨额的转出，部分金额需等待其他信存宝用户存入并发起投资可全部转出，转出原理参看“转出原理”。
								</p>
							</div>
						</li>
						<li>
							<h1><i>Q</i>为什么我转出信存宝提现产生了额外的费用？</h1>
							<div>
								<i>A</i>
								<p>
									1、为规避涉嫌洗钱，套现等行为，新充值、未投资任何项目的资金直接提现需收额外的提现费。  <br/>
									2、上述资金存入信存宝，需经过“转化”期，“转化”的过程就是这部分费用减免的过程。当资金在转化进度中，未转化的部分转出提现将产生额外的费用，转化完成，则不产生这部分的费用，建议用户长期持有信存宝。转化情况登录“账户”，进入“信存宝”查看，一般需要15日。
								</p>
							</div>
						</li>
                        <li class="last-child">
							<h1><i>Q</i>信存宝如何计算积分和成长值？</h1>
							<div>
								<i>A</i>
								<p>
                                信存宝不奖励积分，VIP用户奖励成长值，成长值计算公式本金按存入金额计算，每日发放，具体公式可参看VIP特权。<a href="vip.html"  class="blue" target="_blank">VIP特权详情</a>
								</p>
							</div>
						</li>
					</ul>
				</div>
				<!--常见问题 end-->
			</div>			
			<!--查询菜单 end-->
		</div>
		<div class="clear"></div>
	</div>
	<!--content end-->
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
.dialogmain .mainbox .suc_tips .tips_1 i{display: inline-block;width: 30px;height: 30px;margin-right: 10px;background: url("images/bicon01.png"/*tpa=https://xin/2.0/images/bicon01.png*//*tpa=https://xin/2.0/images/bicon01.png*/) no-repeat;background-size: contain;vertical-align: middle;}
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
<li><h2><a href="views/about/about.shtml.htm"  target="_blank">关于我们</a></h2><p><a href="views/about/team.shtml.htm" target="_blank">团队介绍</a></p><p><a href="views/about/xr_history.shtml.htm"  target="_blank">发展历程</a></p><p><a href="views/about/xr_credit.shtml.htm"  target="_blank">资质荣誉</a></p><p><a href="views/about/partner.shtml.htm"  target="_blank">合作机构</a></p></li>
<li><h2><a href="views/about/help.shtml.htm"  target="_blank">帮助中心</a></h2><p><a href="views/about/guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="views/about/help.shtml-tab=tab1.htm"  target="_blank">问题答疑</a></p><p><a href="views/about/help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum-49-1.html'"  target="_blank">意见反馈</a></p></li>
<li><h2><a href="views/about/about.shtml.htm"  target="_blank">信息中心</a></h2><p><a href="views/about/xr_announcement.shtml.htm"  target="_blank">平台公告</a></p><p><a href="views/about/media_report.shtml.htm"  target="_blank">媒体报道</a></p><p><a href="views/about/activitysum.shtml.htm"  target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum.php'"  target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="vip.html"  target="_blank">VIP特权</a></p><p><a href="../gift.htm"  target="_blank">积品汇</a></p><p><a href="../action/jf.htm"  target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="../s/img/w02.jpg" width="100"><h4>关注服务号</h4></li><li><img src="../s/img/w05.jpg"  width="100"><h4>关注订阅号</h4></li><li><img src="../s/img/w06.jpg"  width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'"  title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="images/qq.png" width="120"><h4>QQ号：4007779888</h4></li>
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
<li><a target="_blank" href="javascript:if(confirm('http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86'" title="深圳市市场监督管理局企业主体身份公示"><i class="icon01"></i></a></li>
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
                <img src="images/Connect_logo_7.png" onclick=" AA.RapidLogin.qqClick();" style="cursor:pointer; margin-left:8px;"></img>
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
<script type="text/javascript" src="js/www/xincunbao.js" ></script>
<script>

	$(document).ready(function () {
        $.ajax({
            url:'/v2/xincunbao/xcb_product_info.jso?'+new Date().getTime(),
            type:'POST' ,
            dataType:'json',
            success:function (result) {
                if(result.state==0){
                    var rate = result.rate == "" ? "https://xin/2.0/0.00" : result.rate;
                    var tenThousandIncome = result.tenThousandIncome == "" ? "https://xin/2.0/0.00" : result.tenThousandIncome;
                    $('#perTenThousandEarnings').html(tenThousandIncome);
                    $('#lastDayPer').html(rate+"%");
                    $("#perCalculating").hide();
                }
            }
        });
    });
</script>
</body>
</html>