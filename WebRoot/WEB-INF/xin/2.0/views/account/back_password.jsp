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
<link href="../../css/basic.css"  rel="stylesheet" type="text/css" />
<link href="../../css/dialog.css"  rel="stylesheet" type="text/css" />
<link href="../../css/global.css"  rel="stylesheet" type="text/css" />
<link href="../../css/dialog-wbox.css"  rel="stylesheet" type="text/css" />
<!--<script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
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
<script type="text/javascript" src="../../js/wbox.js" ></script>
<script type="text/javascript" src="../../js/AA.base-min.js" ></script>
<script type="text/javascript" src="../../js/XR.base.js" ></script>
<script type="text/javascript" src="../../js/mod/login.js" ></script>
<script type="text/javascript" src="../../js/mod/phone.js" ></script>
<script type="text/javascript" src="../../js/common.js" ></script>
<script type="text/javascript" src="../../js/rsa.js" ></script>
<script type="text/javascript" src="../../js/api/common_api.js" ></script>
<script type="text/javascript" src="../../js/api/user_api.js" ></script>
<style>
/*back_password*/
.password_tab ul.tabs { border-bottom:1px solid #e0dfdf; height:41px; padding-left:10px;}
.password_tab ul.tabs li { width:133px; text-align:center; display:block; float:left; height:38px; line-height:38px; cursor:pointer; font-size:16px; border:solid #fff; border-width:4px 1px 0px 1px; margin:0 3px -1px 3px;}
.password_tab ul.tabs li:hover { border:solid #e0dfdf; border-top-color:#f60; border-width:4px 1px 0px 1px; background:#fff;}
.password_tab ul.tabs li.current { border:solid #e0dfdf; border-top-color:#f60; border-width:4px 1px 0px 1px; background:#fff;}
.password_tab .tabscontent { width:100%; min-height:500px;}
.password_tab .password_list{ padding-top:20px;}
.password_tab .password_list .titlefont{ line-height:40px; font-size:15px; border-bottom:1px dotted #cccccc; padding-left:35px; font-weight:normal;}
.password_tab .password_list .titlefont i{ width:8px; height:19px; background:#f60; display:inline-block; vertical-align:middle; margin:0 10px 3px 0;}
.password_tab .password_list dl{ width:100%; padding-top:15px; line-height:40px; font-size:16px;}
.password_tab .password_list dt{ width:183px; text-align:right; float:left;}
.password_tab .password_list dd{ width:736px; padding-left:10px; float:left;}
.password_tab .password_list dd input{ vertical-align:middle; margin-bottom:6px;}
.password_tab .password_list dd .inputtext{ width:248px; height:37px; line-height:37px; border:1px solid #dadada; margin:0px; padding:0 10px; font-size:14px;}
.password_tab .password_list dd .inputtext01{ width:148px; height:37px; line-height:37px; border:1px solid #dadada; margin:0px; padding:0 10px; font-size:14px;}
.password_tab .password_list dd img{ vertical-align:middle;}
.password_tab .password_list dd .gray,.password_tab .password_list dd .red{ font-size:12px;}
.password_tab .password_list dd p{ line-height:20px;}
.password_tab .password_list dd .b-pic{ display:inline-block; line-height:15px;}
.password_tab .password_list dd .b-pic a{ font-size:12px; display:inline-block; vertical-align:middle;}
.password_tab .password_list dd .f-eyes{ display:inline-block; position:relative; margin-left:-40px; vertical-align:middle;}

.password_tab .password_list .font12{ font-size:12px; line-height:20px;}
.password_tab .password_list .ce1b43d{ color:#e1b43d;}
.password_tab .password_list .sub02{ width:160px; height:36px; line-height:36px; font-size:14px;}
.password_tab .password_list .sub03{ width:95px; height:36px; line-height:36px; font-size:14px;}
.password_tab .password_list .sub01{ width:95px; height:36px; line-height:36px; font-size:14px;}

.password_tab .password_list dl.wordsub .sub02,.password_tab .password_list dl.wordsub .sub03{ width:80px; height:30px; line-height:30px; font-size:12px;}
</style>
<script type="text/javascript">
var tab = Common.Global.GetUrlParam('tab') || '1';
$(document).ready(function(){
	var tab=Common.Global.GetUrlParam("tab");
	
	if(tab==null){
		tab=1;
	
	}
	
	$("#tabsholder").tytabs({
	  tabinit:tab,
	  fadespeed:"fast"
	});
	
});
</script>
</head>
<!--header-->
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
    <div class="logo left PositionR"><a href="../../../index.htm"   /></a><a href="../about/shareholder.shtml.htm"  class="logo_font">上市公司系</a></div>
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
<link rel="stylesheet" href="../../css/dialog-wbox.css" >
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
				url:'../../../v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,
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

<!--header end-->
<div class="LineBorder ConMain"></div>
<!--center-->
<div class="main">
<div class="black20"></div>
<div id="tabsholder" class="password_tab">
	<ul class="tabs">
		<li id="tab1">重置登录密码</li>
		<li id="tab2">重置交易密码</li>
		<li id="tab3">找回登录账号</li>
	</ul>
	<div class="contents marginbot">
		<div id="content1" class="tabscontent">
			<div id="find_pwd_1" class="password_list">
				<dl>
					<dt>手机号：</dt>
					<dd><input id="find_pwd_mobile" type="text" maxlength="11" class="inputtext" /><span class="red"></span></dd>
					<div class="clear"></div>
				</dl>
				<dl>
					<dt>图形验证码：</dt>
					<dd>
						<input id="find_pwd_capacha_code" type="text" maxlength="4" class="inputtext01" /> <span class="b-pic"><img id="find_pwd_capacha" src="" width="94" height="38"> <a href="javascript:void(0)" class="blue">看不清楚？<br />换一张</a></span> 
						<input type="hidden" id="find_pwd_capacha_seed" value="0" />
						<p><span class="gray">请输入下面图片显示的字符，不区分大小写</span></p>
					</dd>
				<div class="clear"></div>
				</dl>
				<dl>
					<dt>手机验证码：</dt>
					<dd>
						<input id="find_pwd_mobile_code" type="text" maxlength="6" class="inputtext01" /> <a id="find_pwd_mobile_code_send" href="javascript:void(0)" class="sub03">发送验证码</a> <span id="voice_tip_view_1" class="ce1b43d" style="display:none;"><i class="AllIcon icongth"></i>正在给您致电，请注意接听</span>
					</dd>
					<div class="clear"></div>
				</dl>
				<dl>
					<dt>设置新密码：</dt>
					<dd><input id="pwd" type="password" class="inputtext" /><span id="password_toggle_btn" class="f-eyes"><img src="../../images/eye_close.png"  width="36" height="36" /></span>
				  		<p class="gray">6～16个英文字母、数字、特殊字符或其组合，<span class="orange">请勿与交易密码相同</span></p>
				  	</dd>
					<div class="clear"></div>
				</dl>
				<dl>
					<dt>&nbsp;</dt>
					<dd class="red" id="rsloginpwd_error_view"></dd>
					<div class="clear"></div>
				</dl>
				<dl>
					<dt>&nbsp;</dt>
					<dd><a id="rest_pwd" href="javascript:void(0)" class="sub02">确 定</a> <span id="rsloginpwd_loading" class="gray" style="display:none;"><img src="../../images/loading.gif"  width="16" height="16" /> 正在提交中...</span></dd>
					<div class="clear"></div>
				</dl>
			</div>
			<div id="find_pwd_2" class="password_list" style="display:none">
				<dl>
					<dt><i class="AllIcon icondagou"></i></dt>
					<dd class="font12" ><b>登录密码重置成功！</b></br><span id="success_tip1" class="gray">为了您的资金安全，请妥善保管您的密码。</span>
					<dd class="font12" id="success_tip2" style="display:none">您的登录密码和交易密码均已重置成功。交易密码用于投资、提现等交易环节，已设为与登录</br>密码一致，请及时修改.<a style="color:blue"href="account_settings.shtml-tab=2.htm" >立即修改></a><br />
					</dd><br />
					<div class="clear"></div>
				</dl>
				<div class="black25"></div>
				<div class="black25"></div>
				<dl class="wordsub">
					<dt>&nbsp;</dt>
					<dd><p class="font12">您现在可以：</p><a href="../../../my/recharge.htm"  class="sub02">充值</a> <a href="../../../invest.shtml.htm"  class="sub03">投资</a> <a href="../../../my/deposit.htm"  class="sub03">提现</a></dd>
					<div class="clear"></div>
				</dl>
			</div>
		</div>
		<div id="content2" class="tabscontent" style="display:none;">
			<div id="find_safe_pwd_1" class="password_list">
				<dl>
					<dt>账户名：</dt>
					<dd id="find_safe_pwd_user_name">--</dd>
					<div class="clear"></div>
				</dl>
				<dl>
					<dt>您的手机号：</dt>
					<dd><font id="find_safe_pwd_mobile">--</font> <span class="gray paddingleft">若当前号码已不用/丢失，或无法收到验证码？ <a href="../about/contact.shtml.htm"  target="_blank" class="blue">请联系我们</a></span></dd>
					<div class="clear"></div>
				</dl>
				<dl>
					<dt>图形验证码：</dt>
					<dd>
						<input id="find_safe_pwd_pic_captcha_code" type="text" maxlength="4" class="inputtext01" /> <span class="b-pic"><img id="find_safe_pwd_pic_captcha" src="" width="94" height="38"> <a href="javascript:void(0)" class="blue">看不清楚？<br />换一张</a></span> 
						<input type="hidden" id="find_safe_pwd_pic_captcha_seed" value="0" />
						<p><span class="gray">请输入下面图片显示的字符，不区分大小写</span></p>
					</dd>
					<div class="clear"></div>
				</dl>
				<dl>
					<dt>手机验证码：</dt>
					<dd>
						<input id="find_safe_pwd_mobile_captcha" type="text" maxlength="6" class="inputtext01" /> <a id="find_safe_pwd_send" href="javascript:void(0)" class="sub03">发送验证码</a> <span id="voice_tip_view_2" class="ce1b43d" style="display:none;"><i class="AllIcon icongth"></i>正在给您致电，请注意接听</span>
					</dd>
					<div class="clear"></div>
				</dl>
				<dl>
					<dt>设置新密码：</dt>
					<dd><input id="safe_pwd" type="password" class="inputtext" /><span id="safepwd_toggle_btn" class="f-eyes"><img src="../../images/eye_close.png"  width="36" height="36" /></span>
				  		<p class="gray">6～16个英文字母、数字、特殊字符或其组合，<span class="orange">请勿与登录密码相同</span></p>
				  	</dd>
					<div class="clear"></div>
				</dl>
				<dl>
					<dt>&nbsp;</dt>
					<dd class="red" id="rssafepwd_error_view"></dd>
					<div class="clear"></div>
				</dl>
				<dl>
					<dt>&nbsp;</dt>
					<dd><a id="rest_safe_pwd" href="javascript:void(0)" class="sub02">确 定</a> <span id="rssafepwd_loading" class="gray" style="display:none;"><img src="../../images/loading.gif"  width="16" height="16" /> 正在提交中...</span></dd>
					<div class="clear"></div>
				</dl>
			</div>
			<div id="find_safe_pwd_2" class="password_list" style="display:none">
				<dl>
					<dt><i class="AllIcon icondagou"></i></dt>
					<dd class="font12"><b>交易密码重置成功！</b><br />
						<span class="gray">为了您的资金安全，请妥善保管您的密码。</span>
					</dd>
					<div class="clear"></div>
				</dl>
				<div class="black25"></div>
				<div class="black25"></div>
				<dl class="wordsub">
					<dt>&nbsp;</dt>
					<dd>
						<p class="font12">您现在可以：</p><a href="../../../my/recharge.htm"  class="sub02">充值</a> <a href="../../../invest.shtml.htm"  class="sub03">投资</a> <a href="../../../my/deposit.htm"  class="sub03">提现</a>
					</dd>
					<div class="clear"></div>
				</dl>
			</div>
		</div>
		<div id="content3" class="tabscontent" style="display:none;">
			<div class="password_list">
				<dl id="find_name_style_view">
					<dt>&nbsp;</dt>
					<dd><input id="find_name_style_1" name="find_name_style" type="radio" value="1" checked="checked" /> <label for="find_name_style_1">邮箱找回</label> <span class="paddingleft"><input id="find_name_style_2" name="find_name_style" type="radio" value="2" /> <label for="find_name_style_2">手机找回</label></span></dd>
					<div class="clear"></div>
				</dl>
				<dl id="find_name_email_view">
					<dt>邮箱地址：</dt>
					<dd><input id="find_name_email" type="text" class="inputtext" /> <span class="red"></span></dd>
					<div class="clear"></div>
				</dl>
				<dl id="find_name_mobile_view" style="display: none;">
					<dt>手机号：</dt>
					<dd><input id="find_name_mobile" type="text" maxlength="11" class="inputtext" /> <span class="gray"><i class="AllIcon iconi"></i>如未完成手机认证请选用邮箱找回</span></dd>
					<div class="clear"></div>
				</dl>
				<dl id="find_name_check_code_view" >
					<dt>验证码：</dt>
					<dd><input id="find_name_check_code" type="text" maxlength="4" class="inputtext01" /> <span class="gray paddingleft"><i class="AllIcon iconi"></i>请输入下面图片显示的字符，不区分大小写</span>
						<p><img id="find_username_capacha" src="" width="90" height="28" /> <a href="javascript:void(0)" class="blue">换一张</a></p>
						<input type="hidden" id="seed" value="0" />
					</dd>
					<div class="clear"></div>
				</dl>
				<dl id="find_name_btn_view">
					<dt>&nbsp;</dt>
					<dd><a id="find_name_next" href="javascript:void(0)" class="sub02">下一步</a> <a id="find_name_send" href="javascript:void(0)" class="sub02" style="display:none;">发送账号</a> <span id="next_loading" class="gray" style="display:none;"><img src="../../images/loading.gif"  width="16" height="16" /> 正在提交中...</span></dd>
				</dl>
				<dl id="find_name_email_suc" style="display:none;">
					<dt>&nbsp;</dt>
					<dd><i class="AllIcon icondagou"></i>我们已将登录帐号发送到您的邮箱，请查收。 <a id="check_email" href="javascript:void(0)" target="_blank" class="blue">查收邮件</a></dd>
				</dl>
				<dl id="find_name_mobile_suc" style="display:none;">
					<dt>&nbsp;</dt>
					<dd><i class="AllIcon icondagou"></i>我们已将登录账号发送到您的认证手机，请查收。 <a href="../../../index.shtml.htm"  class="blue">立即登录</a></dd>
				</dl>
			</div>
		</div>
	</div>
</div>
</div>
<!--center end--> 

<!--footer-->
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="../about/about.shtml.htm" target="_blank">关于我们</a></h2><p><a href="../about/team.shtml.htm"  target="_blank">团队介绍</a></p><p><a href="../about/xr_history.shtml.htm"  target="_blank">发展历程</a></p><p><a href="../about/xr_credit.shtml.htm"  target="_blank">资质荣誉</a></p><p><a href="../about/partner.shtml.htm"  target="_blank">合作机构</a></p></li>
<li><h2><a href="../about/help.shtml.htm"  target="_blank">帮助中心</a></h2><p><a href="../about/guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="../about/help.shtml-tab=tab1.htm"  target="_blank">问题答疑</a></p><p><a href="../about/help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum-49-1.html'" target="_blank">意见反馈</a></p></li>
<li><h2><a href="../about/about.shtml.htm"  target="_blank">信息中心</a></h2><p><a href="../about/xr_announcement.shtml.htm"  target="_blank">平台公告</a></p><p><a href="../about/media_report.shtml.htm" target="_blank">媒体报道</a></p><p><a href="../about/activitysum.shtml.htm"  target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum.php'" target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="../../vip.html"  target="_blank">VIP特权</a></p><p><a href="../../../gift.htm"  target="_blank">积品汇</a></p><p><a href="../../../action/jf.htm"  target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="../../../s/img/w02.jpg"  width="100"><h4>关注服务号</h4></li><li><img src="../../../s/img/w05.jpg" width="100"><h4>关注订阅号</h4></li><li><img src="../../../s/img/w06.jpg"  width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'" title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
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
<li><a target="_blank" href="javascript:if(confirm('http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86'"  title="深圳市市场监督管理局企业主体身份公示"><i class="icon01"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN'"  title="信融财富是中国首批引入VeriSign 256位SSL加密的融资理财平台。您的隐私及个人资料安全已受最高级别的保护。"><i class="icon03"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401'"  title="中国信用企业"><i class="icon02"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://search.szfw.org/cert/l/CX20140805008628008716  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://search.szfw.org/cert/l/CX20140805008628008716'"  title="诚信网站"><i class="icon04"></i></a></li>
<li><a title="腾讯云安全认证"><i class="icon05"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business'"  title="安全联盟认证网站"><i class="icon06"></i></a></li>
</ul>
</div>
<div class="clear"></div>
<div class="footer_font main"><p> <a href="../../../about/privacy.htm"  target="_blank">隐私保护申明</a> 　|　 <a href="../../../about/agreement.htm" target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright Xinrong.com All Rights Reserved   信融财富投资管理有限公司</div>
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
		url:'../../../v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,
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

<!--footer end-->
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
                <img src="../../images/Connect_logo_7.png" onclick=" AA.RapidLogin.qqClick();" style="cursor:pointer; margin-left:8px;"></img>
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
<script type="text/javascript" src="../../js/www/account/back_password.js-v=9093" ></script>
</body>
</html>