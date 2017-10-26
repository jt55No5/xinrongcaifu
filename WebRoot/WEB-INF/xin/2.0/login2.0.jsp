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
<link href="css/dialog.css" rel="stylesheet" type="text/css" />
<link href="css/global.css"  rel="stylesheet" type="text/css" />
<link href="css/login2.0.css"  rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery-1.10.2.min.js" ></script>
<script type="text/javascript" src="js/var.js" ></script>
<script type="text/javascript" src="../s/js/AA.base-min.js" ></script>
<script type="text/javascript" src="../s/vendor/artDialog/jquery.artDialog.js" ></script>
<script type="text/javascript" src="../s/vendor/artDialog/dialog_ex.js" ></script>
<script type="text/javascript" src="js/mod/login2.0.js" ></script>
<script src="js/rsa.js" ></script>
  <script type="text/javascript">
    $(function(){
      $('.h-login-reg').show();
    })
  </script>
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
          	<li><a href="views/about/invest_help.shtml.htm" target="_blank">投资帮助</a></li>
          	<li><a href="views/about/risk.shtml.htm" target="_blank">风险控制</a></li>
            <li><a href="views/about/laws_regulations.shtml.htm#navLaws"  target="_blank">法律法规</a></li>
            <li><a href="views/about/help.shtml.htm"  id="nav_help" target="_blank">问题答疑</a></li>
          </ul>
        </li>
        <li><a href="views/about/about.shtml.htm"  id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="views/about/about.shtml.htm"  id="nav_about_index">公司简介</a></li>
            <li><a href="views/about/team.shtml.htm" >团队介绍</a></li>
            <li><a href="views/about/service_data.shtml.htm" >运营数据</a></li>
            <li><a href="views/about/xr_announcement.shtml.htm" >平台公告</a></li>
            <li><a href="views/about/partner.shtml.htm" >合作机构</a></li>
            <li><a href="views/about/contact.shtml.htm" >联系我们</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="vip.html"  id="nav_vip">VIP特权</a> | <a href="../gift.htm"  id="nav_gift">积品汇</a></div>
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

<!--top end-->
<!--<div class="main headerNav headerReg">-->
  <!--<div class="logo left" style=" position: relative; margin-top: -20px;"><img src="images/logo.gif" /></div>-->
  <!--<div class="login left">登录</div>-->
  <!--<div class="register">还没有信融账号，<a href="/2.0/views/account/register4.0.shtml">立即注册 ></a>-->
  <!--</div>-->
  <!--<div class="clear"></div>-->
<!--</div>-->
<!--<div class="headerLine"></div>-->
<div class="content">
  <div class="loginContent">
    <div class="QRCon">
      <dl id="wechatQR" >
        <dt><i class="AllIcon iconWX"></i>关注微信订阅号</dt>
        <dd><img src="images/login/wechatQR.jpg" ></dd>
      </dl>
      <dl id="mobileQR">
        <dt><i class="AllIcon02 iconMP"></i>下载手机客户端</dt>
        <dd><img  src="../s/img/w07.jpg"  ></dd>
      </dl>
    </div>
    <form id="rapid-login-form" class="loginForm" >
      <!--手机号填写-->
      <div class="pNCon">
          <label for="rapid-userName" class="ui-form-label">用户名：</label>
        <input id="rapid-userName" class="phoneNum ui-form-input" type="text" name="phoneNum" placeholder="输入您的用户名" autofocus="autofocus" />
        <p  id="userName-error" class="ui-tip"></p>
      </div>
      <!--密码填写-->
      <div class="pwCon">
          <label for="rapid-userPw" class="ui-form-label">密　码：</label>
        <input id="rapid-userPw" class="password ui-form-input" type="password" name="password" placeholder="输入您的登录密码" />
        <p id="userPw-error" class="ui-tip"></p>
      </div>
      <!--图形验证码填写-->  
      <div id="captcha_view" class="valiPicCon" style="display:none">
          <label for="rapid-captcha" class="ui-form-label">验证码：</label>
        <input id="rapid-captcha" class="valiPic ui-form-input" type="text" name="valiPic" placeholder="填写验证码" />
        <img id="img-captcha" src=""/>
        <input type="hidden" id="rapid-seed" name="seed" value=""/>
        <p id="cap-error" class="ui-tip"></p>
      </div>
      <div class="forgetPwCon">
        <a class="forgetPw" href="views/account/back_password.shtml.htm"  target="_blank">忘记密码？</a>
      </div>
      <!--登录按钮-->
      <div class="submitCon">
        <input class="submit ui-button" type="button" name="submit" value="登   录" />
      </div>
    </form>
    <!--第三方登录-->
    <div class="thirdLogin">
      <div class="title">第三方账号登录</div>
      <!--qq登录-->
      <a class="qqLogin" href="javascript:void(0)" onclick=" AA.RapidLogin.qqClick();" ></a>
    </div>
    <!--登录页面信息展示-->
    <div class="info">
      <h1>手机理财，方便快捷</h1>
      <h2>如有疑问，请拨打客服热线：400-777-9888</h2>
    </div>
  </div>
</div>
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
<script type="text/javascript">
    $.ajax({
        url:'https://xin/v2/login/get_login_fail_times.jso',
        type:'GET' ,
        dataType:'json',
        success:function (result) {
            if(result.state==0){
                AA.RapidLogin.failLoginTimes=result.loginTimes;
                if(AA.RapidLogin.failLoginTimes>=3)
                    $("#captcha_view").show();
                $('#rapid-userName').focus();
                AA.RapidLogin.initCaptcha();
                AA.RapidLogin.init();
            }
        }
    });

</script>
</body>
</html>