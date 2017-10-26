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
        
        <li><a href="invest_help.shtml.htm"  id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="invest_help.shtml.htm"  target="_blank">投资帮助</a></li>
          	<li><a href="risk.shtml.htm"  target="_blank">风险控制</a></li>
            <li><a href="laws_regulations.shtml.htm#navLaws"  target="_blank">法律法规</a></li>
            
          </ul>
        </li>
        <li><a href="about.shtml.htm"  id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="about.shtml.htm"  id="nav_about_index">公司简介</a></li>
            <li><a href="team.shtml.htm" >团队介绍</a></li>
            <li><a href="service_data.shtml.htm" >运营数据</a></li>
            
            <li><a href="partner.shtml.htm" >合作机构</a></li>
           
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="../../vip.html" >VIP特权</a></div>
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
        </li>
        
        <li id="side_nav_laws" class=""><a href="laws_regulations.shtml.htm" >法律法规</a></li>
        <li class="h_cur"><h2>关于我们<i class="h_img">></i></h2>
          <ul class="f_show">
          <li id="side_nav_partner" class=""><a href="partner.shtml.htm" >合作机构</a></li>
          <li id="side_nav_credit" class=""><a href="xr_credit.shtml.htm" >资质荣誉</a></li>
          
          </ul>
        </li>
    
        
      </ul>
    </div>
  </div> 
  <!--left end-->
  <div class="sidebar_b right">
    <div class="black10"></div>
    <h1 class="sidetitle"><span>核心团队介绍</span></h1>
    <div class="team_list">
      <dl>
        <dt><img src="../../images/about/team/01.jpg" /></dt>
        <dd>
          <h2>齐洋<span>[董事长]</span></h2>
          广东互联网金融协会副会长（该协会是全国首家获省级政府批准成立的行业组织）<br />
          八十年代毕业于贵州大学哲学系，曾白手起家创办美国华太国际集团，完成了资本原始积累，先后成功收购深圳凯业实业有限责任公司等多家公司。拥有二十余年成功创业经验，十余年资产、股权投资经验以及小额贷款经验，对资本运作、风险防范和控制等方面有独到的理解和丰富的经验，拥有数十个项目的成功投资案例以及多个成功融资并购案例。</dd>
        <div class="clear"></div>
      </dl>
      <dl style="display:none;">
        <dt><img src="../../images/about/team/02.jpg"  /></dt>
        <dd>
          <h2>叶祥训<span>[首席战略规划师、风控委员会主席]</span></h2>
          企业管理专业硕士学位，中国注册会计师（CPA），高级经济师。 原国务院国资委监事会正厅级主任、中共中央企业工作委员会监事会高级监事，曾任国家审计署工交审计司、办公厅、审计指导司副司长；国务院稽查特派员助理。从事国有大型重点企业专职监事几十年，对企业管理规划有非常丰富的经验，特别擅长于企业风控、财务、审计等专业领域。曾任中国招商局集团、中国华润集团中国港中旅集团、中国南光集团等多家大型央企集团监事会主任。</dd>
        <div class="clear"></div>
      </dl>
      <dl>
        <dt><img src="../../images/about/team/03.jpg"  /></dt>
        <dd>
          <h2>刘睿<span>[总风控师]</span></h2>
          金融学博士后；金融风险管理师（FRM），全球风险协会GARP会员，律师资格证持有者；云南省股权投资类企业评审委员会委员；云南大学发展研究院金融所副所长，云南大学资本市场研究中心秘书长。长期从事金融市场、金融风险管理、金融工程等方面研究。参与多项国家级课题研究，主持省级课题研究。国务院发展研究中心重大基础研究课题《危机后国际经济金融结构研究》之子课题《金融结构与金融监管研究》负责人。参与《巴塞尔II研究》和《巴塞尔III研究》专著撰写。</dd>
        <div class="clear"></div>
      </dl>
      <dl>
        <dt><img src="../../images/about/team/04.jpg"  /></dt>
        <dd>
          <h2>吕剑<span>[副总裁]</span></h2>
          深圳市消费者委员会金融专业委员会专业顾问，金融学学士，资深风控专家，近30年银行风控实战经历，曾先后就职于工商银行、广发银行、华夏银行、包商银行等多家大型金融机构，历任公司金融部主管、分行信贷部总经理，副行长等职，承担大型项目合规风险审核职责。成功审批发放贷款累计金额超过200亿元，且无一损失案例，擅长风险控制、金融市场监控，对建立风险架构，合规审核有独到方法，熟悉金融法律法规，拥有丰富的内控实操经验。</dd>
        <div class="clear"></div>
      </dl>
      <dl>
        <dt><img src="../../images/about/team/08.jpg"  /></dt>
        <dd>
          <h2>杨文<span>[副总裁]</span></h2>
          毕业于武汉大学法学院。曾担任北京海淀检察院某局副局长、高级检察官，北京市国际法学会理事等职务。拥有30多年司法检察系统工作经验：参与过上百起重大刑事案件诉讼、控告申诉复查，经济、民事案件侦查工作，贪贿渎职案件主侦官、业务领导。具有丰富的司法实践经验，尤其对法律政策能深刻认识和准确理解，具有优秀的法律风险评估和防控能力。</dd>
        <div class="clear"></div>
      </dl>
      <dl>
        <dt><img src="../../images/about/team/09.jpg" /></dt>
        <dd>
          <h2>吕良<span>[副总裁]</span></h2>
          毕业于中国人民公安大学，法学硕士，在公安经侦部门和检察机关工作十余年， 先后从事经济犯罪侦查、审查逮捕和职务犯罪侦查等工作，曾担任北京市某检察院反渎局副局长，指挥及参与查办多起重特大经济犯罪案件、正国级职务犯罪案件；有律师资格、对企业职务犯罪和刑事风险防控有较深入研究，曾任滴滴出行集团应急管理负责人。</dd>
        <div class="clear"></div>
      </dl>
      <dl style="display:none;">
        <dt><img src="../../images/about/team/05.jpg"  /></dt>
        <dd>
          <h2>张新波<span>[副总裁]</span></h2>
          毕业于中山大学计算机系，进入信融财富之前，曾任职于腾讯科技、美的集团、环球资源、天下秀科技，担任高级营销顾问、高级营销总监及深圳分公司负责人等职务。具有扎实的现代化企业经营管理理论功底和丰富的项目实操经验，在众多项目中，表现出敏锐的市场洞察、分析、规划能力，深受客户认可。10年品牌营销、服务营销和战略营销管理咨询经验，在企业战略规划，互联网营销资源整合和公关传播管理领域有着深刻的理解与实践成果。</dd>
        <div class="clear"></div>
      </dl>
      <dl>
        <dt><img src="../../images/about/team/06.jpg"  /></dt>
        <dd>
          <h2>李斌<span>[首席信息官]</span></h2>
          毕业于中山大学计算机系，先后任职于中国平安、北电和腾讯。原腾讯财付通理财汇、国际支付、财付通彩票、微信支付合作等多个重点业务的技术负责人，主导高难度项目的研发工作；原加拿大北电（Nortel） CDMA BTS Pri & Sec Base Domain Lead；在高效研发管理、复杂高风险系统的架构设计、各类实时操作系统的二次开发、OLTP以及Java、C、汇编等各类编程语言等方面皆具备较深造诣。</dd>
        <div class="clear"></div>
      </dl>
      <dl>
        <dt><img src="../../images/about/team/07.jpg"  /></dt>
        <dd>
          <h2>曹军<span>[法律顾问]</span></h2>
          毕业于中南政法学院（现中南财经政法大学）经济法专业。现任广东联建律师事务所“投融资法律服务部”主任，是“企业及个人投融资风险管理理论”的创立者和践行者。2011年初开始深度介入以P2P平台为主体的中小微金融生态圈，一直在为全国多家知名P2P公司、担保公司、众筹平台、资产管理公司、基金公司、小额贷款公司等提供法律服务，也成功为多家中小企业解决了股权融资问题，为深圳中小微金融生态圈投融资服务领域知名专家型律师。</dd>
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
<li><h2><a href="help.shtml.htm" target="_blank">帮助中心</a></h2><p><a href="guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum-49-1.html'"  target="_blank">意见反馈</a></p></li>
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

		if(_a.html()=="信息披露" || _a.html()=="团队介绍"){
			_li.addClass('cur');
			_a.addClass('cur');
		}else{
			_li.removeClass();
			_a.removeClass();
		}
	});
	$('#nav_about').parent().attr("class","cur");
	
	$("#side_nav_team").each(function(){
     $("#side_nav_team").addClass("cur"); 
	 $('https://xin/2.0/views/about/.h_cur .cur').parent().parent().children("h2").addClass('curbg');
 });
 
});

	</script>

</body>
</html>