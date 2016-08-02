<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
	<script src="<%=basePath%>js/viewport.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage.css">
	<!-- Bootstrap -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" />
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	<title>个体认证</title>
</head>
	<body>
		<div id="main">
			<p class="titles">个人主体认证说明为什么要进行身份认证？</p>
			<p class="infos">作为一款为医疗及其相关专业人员和患者、用户提供精准需求匹配价值及服务的互联网社群产品，需要保证内容的真实、专业、原创价值及有效传播所发挥的作用，保护专业人员的知识产权和内容版权，同时确保患者及用户获取的内容和信息是获益的，不被错误所误导的，因此，进行身份认证，让真正专业的人员进行内容产生就显得颇为必要。</p>
			<p class="infos">个人主体认证适用于以个体自然人身份进行申请认证，认证成功后，可享有作为认证人员应有的政策、福利和特权。</p>
			认证周期一般为3~7个工作日，认证期间不影响您对产品的任何操作，认证通过后，您需丰富完善您的专业人员基本信息，便于我们为您匹配更精准的需求和问题推送，若认证失败，系统会进行提醒并根据失败原因给予您反馈进一步的建议。</p>

			<!-- 康复师的认证 -->
			<p class="titles">康复师的认证</p>
			<p class="infos">康复师认证分“院内”医师身份认证和“院外”医师身份认证两种认证方式——如果您的专业身份是在某医院、社区医院（卫生院）、门诊等体制机构进行从业活动，请选择“医院”选项；如果您的专业身份是在体制外的中心、工作室、企业、私营机构等主体进行从业活动，请选择”市场“选项。</p>
			<p class="infos">所有康复师人员进行认证，在完善基本信息时，需上传您的执业证书（非必须，上传者会有平台额外奖励）及有效的职业从业证明，而后会接到由佳佳康复专业人员电话与您的人工审核沟通，确定身份真实有效后即可通过认证，反之，则无法通过认证。</p>
			<p class="infos">“医院”选项通过的认证人员为蓝色标志"康"；“市场”选项通过的认证人员为橙色标志“康”，不同的标志仅代表不同的从业性质，并无等级之分，在平台中所享有的既有及以后的平台政策、规则、特权均是相同的。</p>
			<p class="infos">康复师在平台中可以发布自己的专业内容（受原创版权保护）及回答用户提问的各项问题，好的内容和回答会得到用户或者平台的部分奖励给予，抑或与平台更深度的个人品牌合作机会，康复师可以与用户进行线上咨询、互动、交流等行为，并可自发性的与用户（患者）达成线下康复治疗协议，进行服务实施，平台对此服务行为不再进行责任范围外的监管、跟进、保护等干涉，其间产生的服务性风险平台不承担任何责任。</p>

			<!-- 中医师的认证 -->
			<p class="titles">中医师的认证</p>
			<p class="infos">中医医师身份认证需上传您的执业证书及有效的职业从业证明，而后会接到由佳佳康复专业人员电话与您的人工审核沟通，确定身份真实有效后即可通过认证，反之，则无法通过认证。</p>
			<p class="infos">中医医师在平台中可以发布自己的专业内容（受原创版权保护）及回答用户提问的各项问题，好的内容和回答会得到用户或者平台的部分奖励给予，抑或与平台更深度的个人品牌合作机会。</p>
			<p class="infos">中医医师可以与用户进行线上咨询、互动、交流等行为，并可自发性的与用户（患者）达成线下康复理疗协议，进行服务实施，平台对此服务行为不再进行责任范围外的监管、跟进、保护等干涉，其间产生的服务性风险平台不承担任何责任。</p>
			
			<!-- 护士的认证 -->
			<p class="titles">护士的认证</p>
			<p class="infos">护士身份认证需上传您的执业证书及有效的职业从业证明，而后会接到由佳佳康复专业人员电话与您的人工审核沟通，确定身份真实有效后即可通过认证，反之，则无法通过认证。</p>
			<p class="infos">护士在平台中可以发布自己的专业内容（受原创版权保护）及回答用户提问的各项问题，好的内容和回答会得到用户或者平台的部分奖励给予，抑或与平台更深度的个人品牌合作机会。</p>
			<p class="infos">护士可以与用户进行线上咨询、互动、交流等行为，并可自发性的与用户（患者）达成线下护理服务协议，进行服务实施，平台对此服务行为不再进行责任范围外的监管、跟进、保护等干涉，其间产生的服务性风险平台不承担任何责任。</p>

		</div>
	</body>
</html>