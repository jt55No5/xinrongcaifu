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
<link href="../../css/basic.css" tppabs="https://xin/2.0/css/basic.css" rel="stylesheet" type="text/css" />
<link href="../../css/register.css" tppabs="https://xin/2.0/css/register.css" rel="stylesheet" type="text/css" />
<link href="../../css/basic.css" tppabs="https://xin/2.0/css/basic.css" rel="stylesheet" type="text/css" />
<link href="../../css/dialog.css" tppabs="https://xin/2.0/css/dialog.css" rel="stylesheet" type="text/css" />
<link href="../../css/global.css" tppabs="https://xin/2.0/css/global.css" rel="stylesheet" type="text/css" />
<link href="../../css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css" rel="stylesheet" type="text/css" />
<!--<script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->
<!-- <script type="text/javascript" src="/2.0/js/jquery-1.10.2.min.js"></script> -->
<!-- <script type="text/javascript" src="../../js/jquery-1.4.2.js" tppabs="https://xin/2.0/js/jquery-1.4.2.js"></script> -->
<script type="text/javascript" src="../../js/jquery-1.10.2.js" tppabs="https://xin/2.0/js/jquery-1.10.2.js"></script>
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
<script type="text/javascript" src="../../../s/vendor/artDialog/jquery.artDialog.js" tppabs="https://xin/s/vendor/artDialog/jquery.artDialog.js"></script>
<script type="text/javascript" src="../../../s/vendor/artDialog/dialog_ex.js" tppabs="https://xin/s/vendor/artDialog/dialog_ex.js"></script>
<script type="text/javascript" src="../../js/tytabs.jquery.new.js" tppabs="https://xin/2.0/js/tytabs.jquery.new.js"></script>
<script type="text/javascript" src="../../js/jquery.imgscroll.min.js" tppabs="https://xin/2.0/js/jquery.imgscroll.min.js"></script>
<script type="text/javascript" src="../../js/wbox.js" tppabs="https://xin/2.0/js/wbox.js"></script>
<script type="text/javascript" src="../../js/AA.base-min.js" tppabs="https://xin/2.0/js/AA.base-min.js"></script>
<script type="text/javascript" src="../../js/XR.base.js" tppabs="https://xin/2.0/js/XR.base.js"></script>
<script type="text/javascript" src="../../js/mod/login.js" tppabs="https://xin/2.0/js/mod/login.js"></script>
<script type="text/javascript" src="../../js/mod/phone.js" tppabs="https://xin/2.0/js/mod/phone.js"></script>
<script type="text/javascript" src="../../js/rsa.js" tppabs="https://xin/2.0/js/rsa.js"></script>
<script type="text/javascript" src="../../js/common.js" tppabs="https://xin/2.0/js/common.js"></script>
<script type="text/javascript" src="../../js/api/common_api.js" tppabs="https://xin/2.0/js/api/common_api.js"></script>
<script type="text/javascript" src="../../js/api/user_api.js" tppabs="https://xin/2.0/js/api/user_api.js"></script>
<script type="text/javascript" src="../../js/channel.js" tppabs="https://xin/2.0/js/channel.js"></script>
<script type="text/javascript" src="../../js/www/account/register3.0.js" tppabs="https://xin/2.0/js/www/account/register3.0.js"></script>
</head>

<body>
<div class="main headerNav">
  <div class="logo left"><a href="../../../index.shtml.htm" tppabs="https://xin/index.shtml"><img src="../../images/logo.gif" tppabs="https://xin/2.0/images/logo.gif" /></a></div>
  <div class="clear"></div>
</div>



<div class="LineBorder"></div>
<!--banner end-->
<!--center-->
<div class="main PositionR">
<div class="r-head">
  
</div>
<!--header end-->
<!--center-->
<div class="registerbg">


<div class="registerlist">
	<h1 style="font-size: 20px">${message }</h1>

</div><!--end-->


<div class="black25"></div>
<div class="black25"></div>
</div><!--end-->
<div class="black20"></div>
</div>
<!--center end-->
<div  id="sidebar-login-box" style="display: none; ">
<div class="wgt-dialog wgt-dialog-login" >
   
</div> 

</div>
<script type="text/javascript" src="../../js/rsa.js" tppabs="https://xin/2.0/js/rsa.js"></script>
<script type="text/javascript" src="../../../webapp2.0/js/wbox.js" tppabs="https://xin/webapp2.0/js/wbox.js"></script>
<link rel="stylesheet" href="../../css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css">
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="../about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" target="_blank">关于我们</a></h2><p><a href="../about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml" target="_blank">团队介绍</a></p><p><a href="../about/xr_history.shtml.htm" tppabs="https://xin/2.0/views/about/xr_history.shtml" target="_blank">发展历程</a></p><p><a href="../about/xr_credit.shtml.htm" tppabs="https://xin/2.0/views/about/xr_credit.shtml" target="_blank">资质荣誉</a></p><p><a href="../about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml" target="_blank">合作机构</a></p></li>
<li><h2><a href="../about/help.shtml.htm" tppabs="https://xin/2.0/views/about/help.shtml" target="_blank">帮助中心</a></h2><p><a href="../about/guide/guide1.shtml.htm" tppabs="https://xin/2.0/views/about/guide/guide1.shtml" target="_blank">新手指引</a></p><p><a href="../about/help.shtml-tab=tab1.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab1" target="_blank">问题答疑</a></p><p><a href="../about/help.shtml-tab=tab10.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10" target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum-49-1.html'" tppabs="http://bbs.xinrong.com/forum-49-1.html" target="_blank">意见反馈</a></p></li>
<li><h2><a href="../about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" target="_blank">信息中心</a></h2><p><a href="../about/xr_announcement.shtml.htm" tppabs="https://xin/2.0/views/about/xr_announcement.shtml" target="_blank">平台公告</a></p><p><a href="../about/media_report.shtml.htm" tppabs="https://xin/2.0/views/about/media_report.shtml" target="_blank">媒体报道</a></p><p><a href="../about/activitysum.shtml.htm" tppabs="https://xin/2.0/views/about/activitysum.shtml" target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum.php'" tppabs="http://bbs.xinrong.com/forum.php" target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="../../vip.html" tppabs="https://xin/2.0/vip.html" target="_blank">VIP特权</a></p><p><a href="../../../gift.htm" tppabs="https://xin/gift" target="_blank">积品汇</a></p><p><a href="../../../action/jf.htm" tppabs="https://xin/action/jf" target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="../../../s/img/w02.jpg" tppabs="https://xin/s/img/w02.jpg" width="100"><h4>关注服务号</h4></li><li><img src="../../../s/img/w05.jpg" tppabs="https://xin/s/img/w05.jpg" width="100"><h4>关注订阅号</h4></li><li><img src="../../../s/img/w06.jpg" tppabs="https://xin/s/img/w06.jpg" width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'" tppabs="http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5" title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="../../images/qq.png" tppabs="https://xin/2.0/images/qq.png" width="120"><h4>QQ号：4007779888</h4></li>
</ul></li>
<li class="fb03"><a href="javascript:if(confirm('http://weibo.com/u/2719695463?profile_ftype=1&is_all=1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0'" tppabs="http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0" target="_blank" title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="../../../s/img/w07.jpg" tppabs="https://xin/s/img/w07.jpg" width="122" class="bimg" /><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
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
<div class="footer_font main"><p> <a href="../../../about/privacy.htm" tppabs="https://xin/about/privacy" target="_blank">隐私保护申明</a> 　|　 <a href="../../../about/agreement.htm" tppabs="https://xin/about/agreement" target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright Xinrong.com All Rights Reserved   信融财富投资管理有限公司</div>
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
						url:'../../../v2/communication/free_consulation.jso'/*tpa=https://xin/v2/communication/free_consulation.jso*/,
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

<script type="text/javascript" src="../../js/channel.js" tppabs="https://xin/2.0/js/channel.js"></script>
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


</body>
</html>