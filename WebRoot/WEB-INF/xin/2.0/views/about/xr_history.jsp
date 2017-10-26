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
<link href="../../css/about.css"  rel="stylesheet" type="text/css" />
<link href="../../css/dialog.css"  rel="stylesheet" type="text/css" />
<link href="../../css/global.css"  rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/var.js" ></script>
<script type="text/javascript" src="../../js/jquery-1.10.2.min.js" ></script>
<script type="text/javascript" src="../../../s/js/AA.base-min.js" ></script>
<script type="text/javascript" src="../../js/XR.base.js" ></script>
<script type="text/javascript" src="../../../s/vendor/artDialog/jquery.artDialog.js" ></script>
<script type="text/javascript" src="../../../s/vendor/artDialog/dialog_ex.js" ></script>
<script type="text/javascript" src="../../js/mod/login.js" ></script>
<script type="text/javascript" src="../../js/mod/phone.js" ></script>
<script type="text/javascript" src="js/leftnav.js" ></script>
</head>

<body>
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
    <div class="logo left PositionR"><a href="../../../index.htm" ><img src="../../images/logo.gif"  /></a><a href="shareholder.shtml.htm"  class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="../account/account_index.shtml.htm"  class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="../../login2.0.html"  class="flogin">登录</a><a href="../account/register4.0.shtml.htm"  class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="../../../index.htm"  id="nav_index">首页</a></li>
        <li><a href="../../../invest.shtml.htm" id="nav_invest">投资<i class="arrow"></i></a>
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
        
        <li><a href="invest_help.shtml.htm"  id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="invest_help.shtml.htm"  target="_blank">投资帮助</a></li>
          	<li><a href="risk.shtml.htm"  target="_blank">风险控制</a></li>
            <li><a href="laws_regulations.shtml.htm#navLaws"  target="_blank">法律法规</a></li>
            
          </ul>
        </li>
        <li><a href="about.shtml.htm" id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="about.shtml.htm"  id="nav_about_index">公司简介</a></li>
            <li><a href="team.shtml.htm" >团队介绍</a></li>
            <li><a href="service_data.shtml.htm" >运营数据</a></li>
           
            <li><a href="partner.shtml.htm" >合作机构</a></li>
            
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
        	location.href="../account/account_settings.shtml-goAnswer=true.htm"/*tpa=https://xin/2.0/views/account/account_settings.shtml?goAnswer=true*/;
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
<a name="h-top"></a>
<div class="about_banner"></div>
<div class="main">
  <script type="text/javascript">
/*function GetUrlParam (name)
	{
	
		var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
	
		var r = window.location.search.substr(1).match(reg);  //匹配目标参数
	
		if (r!=null) return decodeURIComponent(r[2]); return null; //返回参数值
	
	}*/
$(document).ready(function(){
		//var hrefId=GetUrlParam('href');
	
		$(".h_cur h2").click(clickH1);
		slideDownByHash();
/*		$("a[default='true']").click();
		if(hrefId!=null){
			$("#"+hrefId).click();
		}*/
		
		
		var url = window.location.pathname;
		
		$(".h_cur .f_show li").each(function(){
			var url = window.location.pathname;
			 var li_obj = $(this);
			 var a_obj = li_obj.find('a');
			 if(a_obj.attr('href')==url){
				a_obj.parent().parent().parent().children("h2").click();
			 }
		});
		
		
	});
	function clickH1(){
			if($(this).next().is(":hidden"))
			{
				$(".h_cur .f_show").slideUp();
				$(".h_cur h2").removeClass("curbg");
				$(this).next().slideDown();
				$(this).addClass("curbg");
			}
			else{
				$(".h_cur .f_show").slideUp();
				$(".h_cur h2").removeClass("curbg");
				}
		}
	function slideDownByHash()
		{
			var hash=location.hash;
			$(hash).click();
		}

</script>
<div class="sidebar_a left">
    <div class="side_nav PositionR">
      <h1><img src="../../images/about/01.jpg"  width="187" height="137" /></h1>
      <ul>
        <li class="h_cur"><h2 id="fabout">公司简介<i class="h_img"></i></h2>
          <ul class="f_show">
            <li id="side_nav_index"><a href="about.shtml.htm" >信融简介</a></li>
            <li id="side_nav_shareholder"><a href="shareholder.shtml.htm" >股东信息</a></li>
            <li id="side_nav_structure"><a href="structure.shtml.htm" >公司架构</a></li>
            <li id="side_nav_xrhistory"><a href="xr_history.shtml.htm" >发展历程</a></li>
           
            <li id="side_nav_certificate"><a href="xr_certificate.shtml.htm" >公司证件</a></li>
          </ul>
        </li>
        <li class="h_cur"><h2>团队介绍<i class="h_img"></i></h2>
        <ul class="f_show">
        <li id="side_nav_team"><a href="team.shtml.htm" >核心团队介绍</a></li>
        <li id="side_nav_employee"><a href="employee_info.shtml.htm" >员工信息</a></li>
        </ul>
        </li>
        <li id="side_nav_data" class=""><a href="service_data.shtml.htm"  target="_blank">运营数据</a></li>
        
        <li class="h_cur"><h2>风险控制<i class="h_img"></i></h2>
        <ul class="f_show">
        <li id="side_nav_technical_safety"><a href="technical_safety.shtml.htm" >平台技术安全</a></li>
        <li><a href="risk.shtml.htm"  target="_blank">风控模式</a></li>
        </ul>
        
        <li id="side_nav_laws" class=""><a href="laws_regulations.shtml.htm" >法律法规</a></li>
        <li class="h_cur"><h2>关于我们<i class="h_img"></i></h2>
          <ul class="f_show">
          <li id="side_nav_partner" class=""><a href="partner.shtml.htm" >合作机构</a></li>
          <li id="side_nav_credit" class=""><a href="xr_credit.shtml.htm" >资质荣誉</a></li>
          
          </ul>
        </li>
       
      </ul>
    </div>
  </div> 
  <!--left end-->
  <div class="sidebar_b right PositionR" id="h-center">
    <div class="black10"></div>
    <h1 class="sidetitle"><span>发展历程</span></h1>
    <div class="black25"></div>    
    <div class="history_list" id="item1">
    <h2>2012</h2>
    <dl class="orange">
    <dt>2012年3月<i class="orange"></i></dt>
    <dd>公司成立</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2012年8月<i></i></dt>
    <dd>AA贷项目正式上线</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2012年11月16日<i></i></dt>
    <dd>信融财富品牌确立，xingrong.com启用</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2012年11月18日<i></i></dt>
    <dd>信融财富VIP体系上线</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2012年12月27日<i class="orange"></i></dt>
    <dd>正式上线运营，首推“信·无忧贷”，成为首批引入VeriSign SSL证书加密的P2P企业</dd>
    <div class="clear"></div>
    </dl>
    </div>
    <div class="history_list" id="item2">
    <div class="black25"></div>
    <div class="black10"></div>
    <h2>2013</h2>
    <dl>
    <dt>2013年1月<i></i></dt>
    <dd>公司业务初步试水</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年4月19日<i></i></dt>
    <dd>公司名称变更、升级</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年5月9日<i></i></dt>
    <dd>信融财富投资模式重大优化，推出信·优企贷</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年5月13日<i></i></dt>
    <dd>推出“信·赎楼贷”</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年5月<i></i></dt>
    <dd>月交易量突破5000万</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年6月<i></i></dt>
    <dd>月交易量突破8000万</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年7月12日<i></i></dt>
    <dd>信融财富累计投资突破2亿元，首次单月投资累计突破1亿元</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年8月3日<i></i></dt>
    <dd>当选广东省互联网金融协会副会长单位</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年8月9日<i></i></dt>
    <dd>信融财富接入财付通，实现资金分离</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2013年8月26日<i class="orange"></i></dt>
    <dd>信融财富挂牌前海交易中心，首批获得金融信息服务（金融服务咨询）资质</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年8月<i></i></dt>
    <dd>月交易量突破1.3亿</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年9月11日<i></i></dt>
    <dd>引入第二家融资性担保公司</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年10月19日<i></i></dt>
    <dd>信融财富自动投资功能上线</dd>
    <div class="clear"></div>
    </dl>
    <!--<dl>
    <dt>2013年12月24日<i></i></dt>
    <dd>积品汇商城正式上线</dd>
    <div class="clear"></div>
    </dl>-->
    <dl>
    <dt>2013年12月25日<i></i></dt>
    <dd>信融金融控股成立</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2013年12月27日<i></i></dt>
    <dd>信融财富平台上线运营一周年庆</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2013年12月27日<i class="orange"></i></dt>
    <dd>信融财富累计成交额突破10亿</dd>
    <div class="clear"></div>
    </dl>
    </div>
    <div class="history_list" id="item3">
    <div class="black25"></div>
    <div class="black10"></div>
    <h2>2014</h2>
    <dl>
    <dt>2014年2月20日<i></i></dt>
    <dd>信融财富债权转让功能上线</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年2月21日<i></i></dt>
    <dd>信融财富 iPhone 版手机APP客户端上线</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年4月21日<i></i></dt>
    <dd>信融财富手机wap版网站上线</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年4月29日<i></i></dt>
    <dd>信融财富与分期乐达成战略合作，“信·消费贷”项目启动</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年5月7日<i></i></dt>
    <dd>信融财富荣获2013年度广东省诚信示范企业</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年5月19日<i></i></dt>
    <dd>广东互联网金融协会正式揭牌</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2014年5月28日<i class="orange"></i></dt>
    <dd>信融财富与平安银行签署《全面金融服务协议》</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年5月<i></i></dt>
    <dd>信融财富与民生加银签署战略合作协议</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年6月10日<i></i></dt>
    <dd>信融财富分获“最受喜爱投资服务平台”、“中国投融资服务行业领军品牌”</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年6月16日<i></i></dt>
    <dd>董事长齐洋接受凤凰网专访</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年6月22日<i></i></dt>
    <dd>信融财富参展广州金交会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年6月30日<i></i></dt>
    <dd>董事长齐洋受邀和讯网“投资新视界”栏目专访</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2014年7月1日<i class="orange"></i></dt>
    <dd>信融财富获上海金博会网贷新锐企业大奖</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年7月<i></i></dt>
    <dd>荣获广东省企业联合会、企业家协会第九届理事会常务理事单位</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年8月<i></i></dt>
    <dd>信融财富首位VIP9投资用户诞生，累计投资超亿元</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年9月24日<i></i></dt>
    <dd>信融财富累计成交额突破20亿元</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年9月27日<i></i></dt>
    <dd>董事长齐洋受邀出席 “网贷神州行”投资人见面会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年10月27日<i></i></dt>
    <dd>信融财富全新自动投资工具“信存宝”上线</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年10月31日<i></i></dt>
    <dd>信融财富参加第十二届上海理财博览会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年11月6日<i></i></dt>
    <dd>信融财富参加第八届深圳金博会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年12月6日<i></i></dt>
    <dd>董事长齐洋受邀出席“2014互联网金融创新与监管行业峰会”</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年12月8日<i></i></dt>
    <dd>原国务院国资委监事会主任叶祥训出任信融财富首席战略规划师</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年12月18日<i></i></dt>
    <dd>深圳卫视对董事长齐洋、CIO李斌进行专访</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年12月24日<i></i></dt>
    <dd>信融财富与恒胜担保达成战略合作</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年12月25日<i></i></dt>
    <dd>信融财富获得2014最受百姓关注奖</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2014年12月27日<i></i></dt>
    <dd>信融财富平台2周年庆</dd>
    <div class="clear"></div>
    </dl>
    </div>
    <div class="history_list" id="item4">
    <div class="black25"></div>
    <div class="black10"></div>
    <h2>2015</h2>
    <dl>
    <dt>2015年1月5日<i></i></dt>
    <dd>齐洋受邀参加深圳卫视《对话互联网金融》节目</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年1月14日<i></i></dt>
    <dd>信融财富发布遴选抵押物抵押权人公告</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年1月20日<i></i></dt>
    <dd>信融财富董事长齐洋出席2015广东省互联网金融峰会</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2015年1月22日<i class="orange"></i></dt>
    <dd>第四届中国公益节召开 信融财富荣获2014中国互联网金融最佳责任品牌奖</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年1月23日<i></i></dt>
    <dd>信融财富“暖冬连南行——不管多远，信融始终相伴”公益活动圆满结束</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年2月4日<i></i></dt>
    <dd>信融财富与吉屋网签订业务合作协议</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年2月11日<i></i></dt>
    <dd>信融财富与融360签订战略合作协议</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年2月28日<i></i></dt>
    <dd>信融财富开放风险准备金查询</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2015年3月5日<i class="orange"></i></dt>
    <dd>信融财富实缴注册资本增至5000万元</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年3月7日<i></i></dt>
    <dd>信融财富荣获民政部中国社会工作联合会颁发的“慈善楷模 爱心企业”称号</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2015年3月15日<i class="orange"></i></dt>
    <dd>信融财富签署2015《广东互联网金融业消费者权益保护公约》</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年3月22日<i></i></dt>
    <dd>由信融财富赞助的“国际罕见病（中国）宣传月”系列活动圆满结束</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年4月14日<i></i></dt>
    <dd>董事长齐洋担任凤凰卫视《社会正能量》节目嘉宾 与观众分享互联网金融征信采集方法</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年4月16日<i></i></dt>
    <dd>凤凰卫视《财经正前方》节目采访董事长齐洋</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年5月7日<i></i></dt>
    <dd>信融财富公司规模扩大 罗湖金龙大厦新办公场所投入使用</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年5月19日<i></i></dt>
    <dd>信融财富平台累计成交额达到30亿 为投资人创造收益突破亿元大关</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年6月5日<i></i></dt>
    <dd>信融财富牵手香港上市公司 已签订战略投资合作意向书，普汇中金将战略注资人民币6000万元</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年6月6日<i></i></dt>
    <dd>信融财富与香港上市公司普汇中金召开战略投资及合作发布会，暨跨界“互联网+”金融主题论坛</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年6月11日<i></i></dt>
    <dd>董事长齐洋当选“2014广东省优秀企业家”</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年6月16日<i></i></dt>
    <dd>信融财富连续两年获评“广东省诚信示范企业”</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年6月25日<i></i></dt>
    <dd>齐洋出席“互联网金融的资本市场之路”主题论坛</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年6月30日<i></i></dt>
    <dd>信融财富受邀参加首届世界信用评级大会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年7月29日<i></i></dt>
    <dd>信融财富出席“同盾智能反欺诈云签约仪式”并宣读互联网安全自律宣言</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年8月14日<i></i></dt>
    <dd>广东互联网金融协会理事会议在信融财富成功召开</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年8月15日<i></i></dt>
    <dd>信融财富副总裁出席网贷之家《P2P网贷平台运营手册》分享会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年8月21日<i></i></dt>
    <dd>董事长齐洋出席2015深圳互联网金融新趋势论坛</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年8月30日<i></i></dt>
    <dd>信融财富出席中国互联网金融+保险跨界创新峰会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年9月9日<i></i></dt>
    <dd>信融财富与“分期X”平台达成战略合作</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年9月11日<i></i></dt>
    <dd>信融财富接入蜜蜂数据加强征信体系构建</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年9月12日<i></i></dt>
    <dd>信融财富亮相辽宁金博会，并得到全国政协副主席马培华、民建中央副主席宋海亲切接见</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年9月12日<i></i></dt>
    <dd>信融财富受邀参展首届中国国际“互联网+”博览会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年9月17日<i></i></dt>
    <dd>齐洋做客深圳电视台《非常财经观察》深度解读P2P行业</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2015年9月28日<i class="orange"></i></dt>
    <dd>信融财富累计成交额突破40亿</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年10月23日<i></i></dt>
    <dd>信融财富慈善爱心续航，走进广东河源紫金县，探访留守儿童</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年10月23日<i></i></dt>
    <dd>信融财富齐洋亮相“互联网金融与互联网媒体”主题峰会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年10月29日<i></i></dt>
    <dd>信融财富在广东省人民政府金融办带领下，赴京参加第十一届北京金博会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年11月5日<i></i></dt>
    <dd>第九届中国（深圳）国际金博会举行，信融财富应邀参展</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年11月10日<i></i></dt>
    <dd>信融财富与普汇融资担保签署合作框架协议</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年11月24日<i></i></dt>
    <dd>齐洋受邀参加“互联网金融的传播+”高峰会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年12月01日<i></i></dt>
    <dd>信融财富在公益领域的突出贡献受到中华慈善网的关注，董事长齐洋应邀接受采访</dd>
    <div class="clear"></div>
    </dl>
    <!--<dl>
    <dt>2015年12月08日<i></i></dt>
    <dd>朵朵来电1.0正式上线</dd>
    <div class="clear"></div>
    </dl>-->
    <dl class="orange">
    <dt>2015年12月10日<i class="orange"></i></dt>
    <dd>华为CaaS携信融财富 亮相首届中国国际互联网+金融博览会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年12月14日<i></i></dt>
    <dd>信融财富与招商信诺达成战略合作</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2015年12月27日<i></i></dt>
    <dd>信融财富平台3周年庆</dd>
    <div class="clear"></div>
    </dl>
    </div>
    
    <div class="history_list" id="item5">
    <div id="h-nav">
    <ul>
        <li><a href="#item1" class="current">2012</a></li>
        <li><a href="#item2">2013</a></li>
        <li><a href="#item3">2014</a></li>
        <li><a href="#item4">2015</a></li>
        <li><a href="#item5">2016</a></li>
        <li><a href="#item6">2017</a></li>
        <li class="padb"><a href="#h-top" class="h-top"><span class="t-font">返回顶部<b></b></span></a></li>
    </ul>
</div>
    <div class="black25"></div>
    <div class="black10"></div>
    <h2>2016</h2>
    <dl>
    <dt>2016年1月11日<i></i></dt>
    <dd>信融财富累计成交额突破50亿</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年1月21日<i></i></dt>
    <dd>信融财富副总裁出席广东省金融办关于《网络借贷信息中介机构业务活动管理暂行办法》征求意见会议</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年03月02日<i></i></dt>
    <dd>信融财富齐洋受邀出席人民政协财经智库沙龙</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年03月14日<i></i></dt>
    <dd>信融财富李斌出席“3.15我们在行动”互联网金融诚信宣言大型活动</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年03月15日<i></i></dt>
    <dd>齐洋出席“3.15消费者新闻发布会”，并接受深圳各大媒体采访，采访片段在深圳都市财经频道播出</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年03月31日<i></i></dt>
    <dd>信融财富齐洋受邀出席云浮市互联网金融推广会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年04月11日<i></i></dt>
    <dd>信融财富与嗒嗒巴士的跨界合作，更好地展示信融财富的品牌形象</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年04月26日<i></i></dt>
    <dd>信融普惠信息咨询（大连）有限公司（简称信融普惠）在大连市举行开业庆典仪式</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年05月05日<i></i></dt>
    <dd>信融财富成功申请到图文组合商标的专有使用权</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2016年05月12日<i class="orange"></i></dt>
    <dd>第十二届文博会信融财富牵手前海拉瓦，就爆笑虫子作为品牌代言形象进行签约仪式</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年05月14日<i></i></dt>
    <dd>齐洋出席福田区网贷行业协会发起人筹备大会，签署《深圳市福田区网络借贷行业健康发展倡议书》和《自律公约》</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年05月18日<i></i></dt>
    <dd>信融财富与前海拉瓦动漫一起看望“喜憨儿”洗车中心的“喜憨儿”，并积极探索优良的合作模式</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年05月25日<i></i></dt>
    <dd>李斌作为互联网金融行业主讲嘉宾受邀出席“网络运维-连接全球”2016互联网金融IT精英会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年05月29日<i></i></dt>
    <dd>公司副总裁杨文作为公司代表参加互联网金融从业机构高管系列培训活动</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年05月29日<i></i></dt>
    <dd>齐洋出席中国（深圳）第二届“创互联网金融无限未来”高峰论坛</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2016年06月14日<i class="orange"></i></dt>
    <dd>信融财富爆笑虫子以公益品牌大使形象冠名《深圳品质》 </dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2016年06月15日<i class="orange"></i></dt>
    <dd>信融财富累计成交额突破70亿</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年06月15日<i></i></dt>
    <dd>信融财富联手“E签宝”，试运营电子签名和数据保全服务，积极响应“规范发展互联网金融，大力发展普惠金融和绿色金融”政策</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年06月21日<i></i></dt>
    <dd>湖南信融普惠商务信息咨询有限公司在长沙举行开业典礼</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2016年06月28日<i class="orange"></i></dt>
    <dd>信融财富与恒丰银行达成资金存管服务协议，合作双方将共同推进信融财富的资金存管业务上线</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年07月29日<i></i></dt>
    <dd>信融财富通过中国支付清算协会的审核，正式接入互联网金融风险信息共享系统</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年08月11日<i></i></dt>
    <dd>为促进行业“合规性落地”，信融财富积极引入电子签名</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年08月18日<i></i></dt>
    <dd>信存宝取得商标注册证书</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年08月22日<i></i></dt>
    <dd>央视二套采访信融财富董事长齐洋</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年08月24日<i></i></dt>
    <dd>信融财富董事长齐洋接受了深圳卫视《深视新闻》的采访</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2016年09月<i class="orange"></i></dt>
    <dd>信融财富正式将“我要借款”服务更名为“信融花花”</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年09月24日<i></i></dt>
    <dd>信融财富举办首届苏州网络借贷及风险教育交流会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年09月28日<i></i></dt>
    <dd>信融财富首席信息官&联合创始人李斌参与互联网金融行业系统架构专题培训会，并接受深圳卫视采访</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年10月08日<i></i></dt>
    <dd>凤凰卫视专访信融财富联合创始人李斌</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年10月29日<i></i></dt>
    <dd>信融财富董事长齐洋出席2016新金融年度大会</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年10月30日<i></i></dt>
    <dd>信融财富举办北京投资人风险教育交流会</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt style="width: 188px; margin-left: -40px; position:relative;">2016年10月27日-30日<i class="orange"></i></dt>
    <dd>信融财富亮相第十二届北京金博会，并且荣获“最受媒体关注奖”</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年11月16日<i></i></dt>
    <dd>信融财富举办深圳市互金协会第39期会员交流活动</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2016年11月24日<i class="orange"></i></dt>
    <dd>信融财富荣获首届中国互联网金融年度公益平台奖</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年12月04日<i></i></dt>
    <dd>信融财富荣获“互联网金融行业典范企业”称号</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2016年12月15日<i class="orange"></i></dt>
    <dd>信融财富宣布引进战略投资7200万，全面提升品牌影响力</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2016年12月30日<i></i></dt>
    <dd>新格局·新未来——信融财富互联网金融高峰论坛圆满召开</dd>
    <div class="clear"></div>
    </dl>
    
    
    
    
    
    </div>
    <div class="history_list" id="item6">
    <div class="black25"></div>
    <div class="black10"></div>
    <h2>2017</h2>
    <dl>
    <dt>2017年1月7日<i></i></dt>
    <dd>信融财富协办的“新机遇·新挑战—2016新金融网络影响力高峰论坛”在腾讯总部圆满举行</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年1月10日<i></i></dt>
    <dd>网贷之家《2016年网贷平台发展指数评级表》发布，信融财富位居第19位</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年2月17日<i></i></dt>
    <dd>清华-约翰霍普金斯双硕士项目学者调研信融财富</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2017年2月20日<i class="orange"></i></dt>
    <dd>信融财富累积交易金额突破100亿</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2017年2月27日<i class="orange"></i></dt>
    <dd>信融财富实力再获肯定，连任广东互联网金融协会副会长单位</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年3月15日<i></i></dt>
    <dd>2017互联网金融消费权益保护高峰论坛圆满召开，信融财富受邀出席</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年3月15日<i></i></dt>
    <dd>信融财富副总裁吕剑出席金融3·15论坛，并发表《互联网金融时代如何合理配置个人资产》主题演讲</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2017年3月17日<i class="orange"></i></dt>
    <dd>信融财富当选深圳市互联网金融协会监事单位</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年4月24日<i></i></dt>
    <dd>湖南省金融办、湖南省银监局等相关部门领导莅临信融财富调研考察</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2017年4月27日<i class="orange"></i></dt>
    <dd>信融财富与江西银行正式签署《资金存管业务支付结算服务合作协议》</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年5月4日<i></i></dt>
    <dd>深圳财经频道针对年轻化消费金融产品“信融花花”的用户行为习惯，采访了首席信息官李斌</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年5月5日<i></i></dt>
    <dd>信融财富与建设银行正式签署《互联网金融业务合作意向书》</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年6月14日<i></i></dt>
    <dd>山西临汾信融普惠成立，战略布局首个华北市场</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年6月15日<i></i></dt>
    <dd>高标准全面推进合规经营，信融财富引入电子签名一周年</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年7月5日<i></i></dt>
    <dd>义不容辞！信融普惠助力湖南灾民重建家园</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年7月12日<i></i></dt>
    <dd>信融财富参加深圳市互金协会党建交流活动</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年7月15日<i></i></dt>
    <dd>朗迪中国峰会盛大开幕， 信融财富副总裁吕剑受邀出席</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年7月18日<i></i></dt>
    <dd>信融财富携手赖屋山社区举办“安全伴我行”公益活动</dd>
    <div class="clear"></div>
    </dl>
    <dl class="orange">
    <dt>2017年7月26日<i class="orange"></i></dt>
    <dd>信融财富携手江西银行上线直接存管系统</dd>
    <div class="clear"></div>
    </dl>
    <dl>
    <dt>2017年7月29日<i></i></dt>
    <dd>信融财富董事长齐洋受邀出席“创互联网金融无限未来”高峰论坛</dd>
    <div class="clear"></div>
    </dl>
    </div>
    </div>
  <!--right end-->
  <div class="black20"></div>
</div>


<!--center end--> 
<!--footer--> 
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="about.shtml.htm"  target="_blank">关于我们</a></h2><p><a href="team.shtml.htm"  target="_blank">团队介绍</a></p><p><a href="xr_history.shtml.htm"  target="_blank">发展历程</a></p><p><a href="xr_credit.shtml.htm"  target="_blank">资质荣誉</a></p><p><a href="partner.shtml.htm"  target="_blank">合作机构</a></p></li>
<li><h2><a href="help.shtml.htm"  target="_blank">帮助中心</a></h2><p><a href="guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum-49-1.html'"  target="_blank">意见反馈</a></p></li>
<li><h2><a href="about.shtml.htm"  target="_blank">信息中心</a></h2><p><a href="activitysum.shtml.htm"  target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum.php'"  target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="../../vip.html"  target="_blank">VIP特权</a></p><p><a href="../../../action/jf.htm"  target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="../../../s/img/w02.jpg"  width="100"><h4>关注服务号</h4></li><li><img src="../../../s/img/w05.jpg"  width="100"><h4>关注订阅号</h4></li><li><img src="../../../s/img/w06.jpg"  width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'"  title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
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
<div class="footer_font main"><p> <a href="../../../about/privacy.htm"  target="_blank">隐私保护申明</a> 　|　 <a href="../../../about/agreement.htm"  target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright xin.com All Rights Reserved   信融财富投资管理有限公司</div>
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
                <a href="../account/register4.0.shtml.htm"  class="blue" target="_blank">注册账号</a>
            </div>
            <div class="ui-form-line">
                <label for="password" class="ui-form-label">密　码：</label>
                <input type="password" name="password" id="rapid-userPw" class="ui-form-input" maxlength="16" tabindex="2" placeholder="登录密码"/>
                <a href="../account/back_password.shtml.htm"  class="blue" target="_blank">忘记账号/密码？</a>
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

<script type="text/javascript">
$(document).ready(function() {
	$(".hmenu_nav ul li").each(function(){
		var _li = $(this);
		var _a = _li.find("a");

		if(_a.html()=="信息披露"){
			_li.addClass('cur');
			_a.addClass('cur');
		}else{
			_li.removeClass();
			_a.removeClass();
		}
	});
	$('#nav_about').parent().attr("class","cur");
	
	$("#side_nav_xrhistory").each(function(){
     $("#side_nav_xrhistory").addClass("cur");
	 $('https://xin/2.0/views/about/.h_cur .cur').parent().parent().children("h2").addClass('curbg'); 
 });
 	
});
$(window).scroll(function(){
   if($(document).scrollTop()>1921){
      $("#h-nav").css({'bottom':'400px','top':'auto'});
   }else{
       
	   $("#h-nav").css({'top':'400px','bottom':'auto'});
   }
});
	</script>

</body>
</html>