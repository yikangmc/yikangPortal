<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/declare.css">
    <!-- Bootstrap -->
	<title>佳佳康复-居家型术后及慢性病康复护理专家</title>
	<style>
	.ol
	{
		border: 0;
	}
	.olb
	{
		border-bottom: 2px #1795fc solid;
		color: #1795fc;
	}
	.ol a {
		color: #505050;
	}
	.olb a {  
		color: #1795fc;
	}
	</style>
	<script type="text/javascript">
		function overlay() {
			var e1 = document.getElementById('modal-overlay');
			e1.style.visibility = (e1.style.visibility == "visible") ? "hidden"
					: "visible";
		}

	</script>
</head>
	<body>
	<div class="dv_title">
		<div class="tit_bnr">
			<div class="tit_logo">
				<a href="http://www.gethuli.com">
					<img src="<%=basePath%>img/protal/declare/logo.png" />
				</a>
			</div>
			<div class="tit_onlys">
				<div>
					<ul>

						<li><a href="http://www.jjkangfu.cn">首页</a></li>
						<li><a href="http://jjkangfu.cn/index/productFooter">佳佳产品</a></li>
						<li><a href="http://jjkangfu.cn/index/declare">关于我们</a></li>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li>
							<div style="text-align: center; width:150px; position: absolute; top: 14px;">
								<p style="font-size:20px; color: #ff3c3c;">400-616-0909</p>
								<p style="font-size:12px; color: #515151;">周一至周五10:30-19:00</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="navigation">
		<div class="bnr">
			<ul><li class="olb"><a href="javascript:;" class="op ol" onclick="index()">关于我们</a></li>
				<li><a href="javascript:;" class="op ol">媒体报道</a></li>
				<li><a href="javascript:;" class="op ol">加入我们</a></li>
				<li><a href="javascript:;" class="op ol">联系我们</a></li>
				<li><a href="javascript:;" class="op ol">服务协议</a></li>
				<li><a href="javascript:;" class="op ol">友情链接</a></li></ul>
		</div>
	</div>


	<!-- 关于我们 not1 -->
	<section class="page pagenone">
		<img style="" src="<%=basePath%>img/protal/declare/banner.jpg">
		<div class="Paragraph">
			<p class="title">佳佳康复的品牌</p>
			<div class="info">
				我们是一个致力于建立中国术后康复护理体系的互联网大健康平台，利用互联网的先进模式，帮助更多的患者达到完全康复的目的
			</div>
		</div>
		<div class="Paragraph">
			<p class="title">为什么做佳佳康复</p>
			<div class="info">
				后医疗服务的巨大需求<br />
				移动互联网的发展对行业的变革机会<br />
				居家和共享型健康服务是未来趋势<br />
				政府政策性改革在逐步倾斜<br />
				市场中的康复护理服务品牌未被建立
			</div>
		</div>
		<div class="Paragraph">
			<p class="title">佳佳康复做什么</p>
			<div class="info">
				利用移动互联网的先进模式重构后医疗服务的服务模式<br />
				最完善的康复病种及慢性病线上问诊及增值服务互联网垂直型互动社区<br />
				中国最大且领先的后医疗服务产品体系及医疗数据解决方案<br />
				提高患者对康复的正确认知，减少返院率，减轻患者病痛及医疗成本，优化医疗-康复的社会资源配置
			</div>
		</div>
		<div class="Paragraph">
			<p class="title">佳佳康复的发展历程</p>
			<div class="info">
				<table style="margin-top: 8px;">
					<tr>
						<td class="tbl_time">2015.04</td>
						<td class="tbl_info">公司成立，以建立中国诊后大健康平台为己任而努力经营，方向为以深度医疗服务为切入点推向全国，<br />以期后期建立诊后大健康数据平台</td>
					</tr>
					<tr>
						<td class="tbl_time">2015.05</td>
						<td class="tbl_info">入住氪空间第四期项目</td>
					</tr>
					<tr>
						<td class="tbl_time">2015.06</td>
						<td class="tbl_info">确定建立以老年居家康复护理为核心业务的移动互联网平台—护龄家</td>
					</tr>
					<tr>
						<td class="tbl_time">2015.07</td>
						<td class="tbl_info">与中医脊椎推拿平台理大师达成战略合作协议</td>
					</tr>
					<tr>
						<td class="tbl_time">2015.08</td>
						<td class="tbl_info">护龄家平台第一个居家老年护理用户在建军节产生</td>
					</tr>
					<tr>
						<td class="tbl_time">2015.09</td>
						<td class="tbl_info">峰瑞资本frees与易康美辰签订投资协议</td>
					</tr>
					<tr>
						<td class="tbl_time">2015.11</td>
						<td class="tbl_info">易康美辰将主营业务转为术后居家康复护理与运动康复，并建立三级平台产品佳佳康复</td>
					</tr>
					<tr>
						<td class="tbl_time">2016.02</td>
						<td class="tbl_info">佳佳康复与台湾康复专家，富士康整骨复健科创始人胡家珍建立合作关系</td>
					</tr>
				</table>
			</div>
		</div>
	</section>
	<!-- 媒体报道 not2 -->
	<section class="page">
		<a href="http://www.vcbeat.net/26595.html" target="_Blank">
			<div class="mediainfo">
				<p class="title">养老轻资产创业模式深度盘点</p>
				<p class="time">2016/01/13 08:00</p>
				<div class="message">
					经过动脉网前期对市场和政策层面的长时间研究，我们认为随着新一代银发族群的大量出现，互联网+养老领域将会出现大量创业机会，新一波创业投资浪潮将会在这一领域兴起。
				</div>
			</div>
		</a>
		<a href="http://www.vcbeat.net/19403.html" target="_Blank">
			<div class="mediainfo">
				<p class="title">佳佳康复：老年居家康复和护理的互联网模式</p>
				<p class="time">2015/09/29 09:00</p>
				<div class="message">
						今年年底，护龄家将把服务从北京推广至上海。目前，团队现正在寻求融资。
				</div>
			</div>
		</a>
		<a href="http://www.vcbeat.net/26755.html" target="_Blank">
			<div class="mediainfo">
				<p class="title">互联网医疗创业圈十大小鲜肉</p>
				<p class="time">2016/01/08 08:04</p>
				<div class="message">
						有这样一些人，他们明明可以靠脸吃饭，却偏偏要靠才华。他们年纪轻轻，却早已经成为了互联网医疗这个蓝海里的弄潮儿。
				</div>
			</div>
		</a>
		<a href="http://www.vcbeat.net/18450.html" target="_Blank">
			<div class="mediainfo">
				<p class="title">动脉网思享会NO.11 康复专场丨听美日中的康复体系，问中国的康复道路走向何方？</p>
				<p class="time">2015/09/10 08:01</p>
				<div class="message">
						日本的康复体系；加拿大的康复体系及在中国的应用；传统医疗与互联网衔接的障碍
				</div>
			</div>
		</a>
	</section>
	<!-- 加入我们 not3 -->
	<section class="page">
		<img src="<%=basePath%>img/protal/declare/hrmall.png">
		<div class="box_porject">
			<p class="title">产品经理</p>
			<p class="info_title">岗位职责：</p>
			1.负责微信端产品、web端及运营类产品设计及优化，提升用户的产品体验<br />
			2.收集需求并做用户研究，将产品设计情景化，结构化，并制定迭代进度计划<br />
			3.与技术、业务、运营等部门的密切配合，协调沟通需求，筛选需求，跟进需求<br />
			4.关注行业动态及市场，持续改进产品<br />
			5.参与制定产品流程，负责产品原型的设计和文档撰写<br />
			<p class="info_title">任职要求：</p>
			1.大专及以上学历<br />
			2.至少一年以上的互联网产品经验，有过O2O产品或商业产品经验的优先，有医疗产品背景的优先<br />
			3.具备互联网产品思维，有独特的产品见解及对需求的洞察能力<br />
			4.良好的沟通能力及团队协作精神，能解决随时突发的产品问题或项目问题<br />
		</div>

		<div class="box_porject">
			<p class="title">产品运营招聘</p>
			<p class="info_title">岗位职责：</p>
			1.负责产品的推广策划和执行，并反馈运营需求，促进产品改进及优化<br />
			2.监测产品的日活及相关运营数据，做统计分析，接收用户反馈，改进或提出新的运营方案<br />
			3.引导用户对产品的关注、留存、活跃及转化复购行为，多提供创新性的产品运营创意<br />
			4.与产品经理配合实施运营类策划，参与一些线上、线下运营专题或活动<br />
			<p class="info_title">任职要求：</p>
			1.对移动互联网、大健康或医疗方向有较好了解，熟悉商业产品的架构设计<br />
			2.对产品商业化，用户体验及市场、新闻热点感知敏感，并能提出独特的观点和见解<br />
			3.具有一定的文案功底和数据分析能力，具有2年以上的产品运营经验者优先，要有产品运营案例<br />
		</div>

		<div class="box_porject">
			<p class="title">服务端工程师</p>
			<p class="info_title">岗位职责：</p>
			1.运营系统开发，与运营等内部用户，进行良好沟通，即时反馈。<br />
			2.接口服务开发，与app端进行良好的沟通。<br />
			<p class="info_title">任职要求：</p>
			1.二年以上开发经验。<br />
			2.扎实的java 基础，对模式与算法有扎实的基础。<br />
			3.熟练使用spring,mybatis,jquery,javascript,junit编写测试用例,mysql数据库,eclipse,mvn,tomcat,git 等开发工具。<br />
			4.有医疗，相关项目经验优先。<br />
		</div>

		<div class="box_porject">
			<p class="title">web前端</p>
			<p class="info_title">岗位职责：</p>
			1.负责佳佳康复移动端前端界面的开发、优化，如：M页、微信端H5、运营活动页面<br />
			2.负责佳佳康复web前端的开发、优化。<br />
			3.负责佳佳康复App内置H5的开发、优化<br />

			<p class="info_title">任职要求：</p>
			1.熟练掌握Javascript、HTML/HTML5/XML、CSS/CSS3、Ajax等前端开发技术，熟悉W3C标准<br />
			2.有过开发HTML5前端的经验，至少熟练使用一种WEB开发框架（angularjs 等），了解基本原理及实现<br />
			3.能解决各种浏览器兼容性；拥有独立完整的交互式Web产品前端开发经验者优先<br />
			4.有移动设备应用开发经验优先<br />
			5.熟悉java或熟悉其他后台开发语言（PHP或是C++）开发者优先<br />
			6.计算机及相关专业，本科及以上学历，至少1年以上工作经验<br />
		</div>
	</section>


	<!-- 联系我们 not4 -->
	<section class="page">
		<img src="<%=basePath%>img/protal/declare/map.png">
		<div class="mapinfo">
			<p class="mapcode">公司地址：北京市朝阳区朝阳门外大街26号朝外MEN写字中心 B座2505<br />邮编：100022</p>

			<p class="mapcode tops">公司邮箱</p>
			<p class="infos">
				服务合作：<span class="letter">BD@stellarheal.com</span><br />
				投诉建议：<span class="letter">support@stellarheal.com</span><br />
				简历投递：<span class="letter">hr@stellarheal.com</span>
			</p>

			<p class="mapcode tops">联系方式</p>
			<p class="infos">统一服务热线：400-616-0909<br />
				服务时间：10:30-19:00(周一至周五)<br />
			</p>

			<p class="mapcode tops">在线联系</p>
			<p class="infos">微信：佳佳康复（公众平台)<br />
				QQ：3123641388<br />
				微博：佳佳康复
			</p>
		</div>
	</section>
	<!-- 服务协议 not5 -->
	<section class="page">
		<p class="ser_titile">服务协议</p>
		<div class="ser_infos">
			依据“中国人民共和国消费者权益保护法”及其他有关法律，法规的规定，甲乙双方在平等，自愿，公平的基础上，就康复护理服务做出如下协议：<br /><br />
			
			第一条：服务内容：<br />
			1.乙方为需要康复护理服务对象提供居家康复护理服务。<br />
			2.乙方护理师的条件：1）易康美辰康复护理师均为经过正规医学和护理院校培训，持有相关专业文凭和国家颁发的资格证书，有临床经验的专业人员。<br />
			2）易康美辰康复护理师均经过易康美辰严格挑选及针对居家康复护理的特别培训。<br /><br />
			 
			第二条： 服务地点<br />
			甲乙双方约定，康复护理服务需在乙方提供的地点进行。<br /><br />
			 
			第三条：服务期限和时间<br />
			1.     除涉及价格的相关条款外，本合同长期有效。<br />
			2.     具体提供康复护理服务时间由甲乙双方协商确定，乙方应根据甲方的康复护理需要，尽可能按照甲方要求安排服务时间。<br />
			3.     乙方康复护理师依法享受国家法定节假日。如甲方要求乙方康复护理师在国家法定节假日期间提供服务（“假期服务”）的，则该等假期服务的服务费为本合同第四条第2款约定的服务收费的三倍。<br /><br />
			 
			第四条：服务费用及支付方式<br />
			1.     乙方根据服务对象的具体评估情况建议康复护理级别和服务的频次，时间，内容，供甲方选择参考。经甲方确认，服务对象的康复护理服务因级别和服务时长不同而收费不同，具体视情况而定。<br />
			2. 乙方所提供康复护理服务的收费标准为：<br />
			上门评估及护理服务：260-300元/次（根据具体项目在此范围内定价收费）<br />
			上门专项服务（如换PICC管，更换鼻饲管等）：260-300元/次（根据具体项目在此范围内定价收费）<br />
			乙方拥有对价格政策（含优惠条件）的最终解释权。<br />
			3.甲方应当按照双方约定的康复护理方案及收费标准向乙方支付服务费。<br />
			4.甲方如需续费，乙方有权根据服务成本及市场环境调整其收费标准，更新价格政策；甲方在续费时，其收费标准以乙方正在执行的价格政策为准（含优惠条件）<br />
			5.完成服务以付费对应的服务次数完成为准。不取决于预估的服务周期；对于已完成服务次数的认定，以客户签字的服务确认单为准。<br /><br />
			 
			第五条 甲方权利义务<br />
			1.     甲方权利：<br />
			（1）     甲方应当配合乙方，对乙方康复护理师进行满意反馈；甲方有权合理要求更换乙方康复护理师；乙方应在甲方提出合理的更换原因后3日内调换乙方康复护理师。<br />
			（2）     甲方对乙方康复护理师评估情况有异议的，可有权要求重新评估，评估费用由甲方预付，如重新评估结果表明该康复护理不能提供康复护理服务的，则评估费用由乙方承担。<br />
			（3）     甲方有权要求乙方定期提供服务报告。除非甲方有明确要求，否则，该等报告采用乙方自行确定的方式/格式。<br />
			（4）     具备下列条件之一时，甲方有权解释合同：<br />
			1)     乙方康复师有盗窃行为或者传染病；<br />
			2)     调换康复护理师期间空岗2次以上<br />
			3)     乙方康复护理师存在刁难，虐待服务对象等严重影响甲方日常生活的行为<br />
			2.     甲方义务：<br />
			（1）     甲方应在签订合同时出示有效身份证件，在通过乙方提供的互联网预约工具预约时如实填写家庭住址，联系电话，对乙方康复护理师的要求，以及可能影响乙方康复护理师健康安全的家庭情况（包括但不限于家中是否恶性传染性病人，精神病人，）如以上内容发生变化及时通知乙方。<br />
			（2）     甲方应尊重乙方康复护理师的人格尊严及劳动，提供适当的劳动条件和服务环境，不得歧视，虐待或性骚扰乙方康复护理师。<br />
			（3）     如甲方需要变更约定的服务时间，甲方或甲方代理人需提前24小时致电乙方客服中心。电话：4006160909<br />
			（4）     甲方未经乙方书面同意，不得擅自要求乙方康复护理师为康复护理服务对象以外的任意第三方服务，不得将康复护理师带往非约定的地点工作<br />
			（5）     由于保障或改善服务质量的目的，甲方有义务配合乙方完成对乙方康复护理师的管理，教育和工作指导。<br /><br />
			 
			第六条 乙方权利义务<br />
			1.     乙方权利：<br />
			（1）     乙方有权按照本合同的约定，向甲方收取康复护理服务费<br />
			（2）     由于突发性交通或天气状况，人员情况，以及国家法定假日等，乙方有权调整为甲方上门服务的康复护理师，和上门服务的时间，并将调整情况通知甲方。<br />
			（3）     若甲方及康复护理服务对象有违反本合同约定的行为，乙方有权中止康复护理服务。<br />
			（4）     乙方有权向甲方求证，了解甲方对康复护理师的投诉或康复护理师向乙方所反映的，与本合同有关的情况的真实性，甲方有义务对此给予全面的配合。<br />
			（5）     具有下列条件之一时，乙方有权解释合同，并保留依法寻求法律救济的权利：<br />
			1）     甲方教唆康复护理师脱离乙方管理；<br />
			2）     甲方家庭成员中有恶性传染病人而未如实告知；<br />
			3）     甲方或服务对象对康复护理师的工作要求违反国家法律，法规的规定或刁难，虐待等算还康复护理师身心的行为；<br />
			2.     乙方义务：<br />
			（1）     乙方应为甲方委派具有专业资质，体检合格，无犯罪记录的康复护理师，乙方康复护理师应具有北京市三级甲等医院的体检合格证明。<br />
			（2）     乙方负责康复护理师的岗前培训和管理工作，实行跟踪管理，监督指导，接受投诉并妥善处理。<br />
			（3）     乙方应保证为甲方所提供的服务的延续性，不经双方确认，不得出现约定服务时间空岗。<br />
			（4）     乙方负责为康复护理师投保国家规定的社会保险，包括基本医疗保险，工伤保险等。<br /><br />
			 
			第七条 合同变更，中止，解除<br />
			1.     如果由于服务对象情况发生变化，保留但不限于病情变化，服务需求变化，居住条件变化，陪护变化，需要乙方重新评估康复护理级别及康复护理方案。双方可签订补充协议对本合同进行变更，包括附加风险协议。在甲方签署补充协议前，乙方有权拒绝提供相应服务。<br />
			2.     如果发生本合同第五条中可以解除合同的情况，或由于身故等自然原因使得甲方客观上不可能继续使用服务，由甲方书面提出，经乙方确认后解除合同，并将甲方预付而未发生的服务费退还甲方指定账户。<br />
			3.     如果甲方因为本条第2款以外的原因当方面要求中止合同并产生退费，甲方已经使用的服务将按照原价进行扣减，不再适用预付服务费时享受的套餐优惠政策。<br />
			4.     如果发生本合同第六条中可以解除合同的情况，有乙方书面向甲方提出，本合同自该等书面通知到达乙方之时终止，甲方预付而未发生的服务费作为甲方违约金，不予退还。<br /><br />
			 
			第八条 不可抗力<br />
			本合同所称不可抗力是指不能预警，不能克服，不能避免并对一方当事人造成重大影响的客观事件，包括但不限于自然灾害如洪水，地震，火灾和风暴等，社会事件如战争，动乱，政府行为等，以及护理服务对象因疾病和自然原因身故等。<br />
			如因不可抗力事件的发生导致合同无法执行时，遇不可抗力的一方应立即将事故情况书面通知另一方，并应在不可抗力事件发生后十五天内提供事故详情及合同不能履行或者需要延期履行的书面资料，双方认可后协商终止合同或暂时延迟合同或暂时延迟合同的履行。<br /><br />
			 
			第九条 违约责任<br />
			1.     甲乙双方应遵守合同约定，任何一方违反本合同约定的，另外一方均有权要求违约方赔偿其因违约造成的损伤，合同另有约定的除外。<br />
			2.     尽管一方按照本合同的约定提供康复护理服务，但该等康复护理服务无法避免服务对象发生疾病，已有病症的恶化，并发症及其他意外的发生，甲方对此给予充分的理解及认可。因此，除非甲方有充分的证据。否则：
			1）     乙方及其康复护理师对于康复护理服务提供期间服务对象发生的疾病，已有病症的恶化，并发症及其他任何意外不承担任何责任；<br />
			2）     乙方及其康复护理师对于本合同约定的服务期限内康复护理服务提供时间以外服务对象发生的疾病，已有症状的恶化，并发症及其他任何意外不承担任何责任。<br /><br />
			 
			第十条 合同争议的解决方法<br />
			  本合同项下发生的争议，由双方当事人协商或申请调解解决，协商或调解解决不成的，任一方可将该等争议提交北京仲裁委员会，由该仲裁委员会按照届时有效的仲裁以仲裁，仲裁裁决是终局的，对双方均具有约束力。<br /><br />
			 
			第十一条 其他约定事项<br /><br />
			 
			第十二条 合同未尽事宜及生效<br />
			经双方协议，可以就本合同未尽事宜另行以书面形式补偿。<br />
			本合同包括附件和双方签字同意的手写补充条款在内，一式两份，甲乙双方各执一份，具有同等法律效力，自双方签字盖章之日起生效。
		</div>
	</section>
	<!-- 友情链接 not6 -->
	<section class="page">
		<div class="friendship">
			<span><a href="http://www.vcbeat.net" target="_Blank">动脉网</a></span>
			<span><a href="http://www.lvzheng.com" target="_Blank">小微律政</a></span>
		</div>
	</section>

	<!-- 弹出框 -->
	<div id="modal-overlay">
		<form id="formServiceForm">
			<div class="modal-data">
				<a href="javascript:void(0)" onclick="overlay()">
				<div class="clear">×</div></a>
				<p class="p_model_title">预约我们的服务</p>
				<input class="ipt_porject" name="mobileNumber" id="inputMobileNumber" maxlength="11" type="text" placeholder="请输入您的手机号" />
				<select class="ipt_porject" name="serviceItemId"  id="inputServiceItmeId">
					<option value="">请输入你要预约的服务类型</option>
					<c:forEach items="${data }" var="serviceItem">
						<option style="color: #000" value="${serviceItem.serviceItemId }">${serviceItem.serviceTitle }</option>
					</c:forEach>
				</select> 
				<input class="ipt_porject" id="inputRemark" name="remark" maxlength="100" type="text" placeholder="若有其他要求可在此处填写" />
				<button class="btn_onclick" type="button" onclick="index.getServiceItem()">立即预约</button>
			</div>
		</form>
	</div>

	<div class="dv_bottom">
		<div class="bom">
			<div class="navigation2">
				<ul>
					<li>
						<a href="<%=basePath%>index/declare">关于我们</a>&nbsp;丨&nbsp; 
						<a href="<%=basePath%>index/declare">媒体报道</a>&nbsp;丨&nbsp; 
						<a href="<%=basePath%>index/declare">加入我们</a>&nbsp;丨&nbsp;
						<a href="<%=basePath%>index/declare">联系我们</a>&nbsp;丨&nbsp; 
						<a href="<%=basePath%>index/declare">帮助中心</a>&nbsp;丨&nbsp; 
						<a href="<%=basePath%>index/declare">友情链接</a>
					</li>
					<li><a href="mailTo:BD@stellarheal.com">服务合作：BD@stellarheal.com</a> &nbsp;&nbsp;
						<a href="mailTo:support@stellarheal.com">投诉建议：support@stellarheal.com</a></li>
					<li>&copy;2016易康美辰健康科技（北京）有限公司&nbsp; 京ICP证15059991号</li>
				</ul>
			</div>
			<div class="code">
				<div class="code_qr">
					<img src="<%=basePath%>img/protal/mainIndex/code.png"/>
				</div>
				<div class="code_liaison">
					<p id="contact_us">联系我们</p>
					<p id="contact_phone">400-616-0909</p>
					<p id="contact_time">周一至周五&nbsp;10:30-19:00</p>
					<p id="icon">
						<a target="_Blank"
							href="http://weibo.com/u/5368694680">
							<img src="<%=basePath%>img/protal/mainIndex/xl1.png"
							onMouseOver="this.src='<%=basePath%>img/protal/mainIndex/xl.png'"
							onMouseOut="this.src='<%=basePath%>img/protal/mainIndex/xl1.png'"/>
						</a> &nbsp; <a target="_Blank" href=""> <img
							src="<%=basePath%>img/protal/mainIndex/yx.png"
							onMouseOver="this.src='<%=basePath%>img/protal/mainIndex/yx1.png'"
							onMouseOut="this.src='<%=basePath%>img/protal/mainIndex/yx.png'"/></a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		var ico = function(n){
			return document.querySelectorAll(n);
		};

		for (var i = 0;i < ico('.op').length;i++){(
			function(i){
				ico('.op')[i].onclick = function(){
					for (var n in ico('section')){
						ico('section')[n].className = 'page';
						ico('.bnr li')[n].className = 'ol';
						ico('.bnr li a')[n].className = 'cr a';
					}
					ico('section')[i].className = 'page pagenone';
					ico('.bnr li')[i].className = 'olb';
					ico('.bnr li a')[i].className = 'ocr a';
				};
			})(i);
		}

		// 页面跳转
		var pageUrls = location.search;
		var showPage = pageUrls.charAt(pageUrls.length-1);
		var sp = showPage-1;
		// var show = document.getElementsByTagName("section")[showPage];
		for (var i = 0;i < ico('.op').length;i++){(
			function(i){
				ico('.op')[i].onclick = function(){
					for (var n in ico('section')){
						ico('section')[n].className = 'page';
						ico('.bnr li')[n].className = 'ol';
						ico('.bnr li a')[n].className = 'cr a';
					}
					ico('section')[i].className = 'page pagenone';
					ico('.bnr li')[i].className = 'olb';
					ico('.bnr li a')[i].className = 'ocr a';
				};
			})(i);
		}
		// alert(showPage);
	</script>
	</body>
</html>