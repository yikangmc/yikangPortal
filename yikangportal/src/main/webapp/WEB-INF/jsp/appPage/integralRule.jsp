<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/common/protalhead.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
 	<meta http-equiv="Content-Type" content="text/html,charset=utf-8,IE=edge,chrome=1" />
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
	<script src="<%=basePath%>js/viewport750.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/publicStyle.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/protal/appPage/integralRule.css">
	<title>积分详情</title>
</head>
	<body>
		<div class="Wrap">
			<div class="Main">
				

				<div class="Content">
					<p>什么是佳佳积分？</p>
					<font>每一位成功注册“佳佳康复”App的佳友们均已加入佳佳积分系统。佳佳积分（以下简称“积分”）是为了奖励在佳佳平台中热情参与内容交流、分享甚至贡献的佳友们而全新推出的，以回馈佳友们的厚爱。	<br><br>	

					每100积分等价于人民币1元，佳佳积分兑换商城也即将推出，敬请期待。</font>
				</div>


				<div class="Content">
					<p>如何获得佳佳积分？</p>
					<font>日常获得佳佳积分的行为有<br><br></font>
					<table border="1px" color="dfe1e1" width="100%">
						<tr>
							<td style="font-size: 32px; color: #808182;" width="26%">行为</td>
							<td style="font-size: 32px; color: #808182;" width="26%">积分</td>
							<td style="font-size: 32px; color: #808182;" width="48%">说明</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">注册成功</td>
							<td style="font-size: 24px; color: #646464;">+50&nbsp;&nbsp;</td>
							<td style="font-size: 24px; color: #646464;">注册成功后登录平台后获得</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">健康签到</td>
							<td style="font-size: 24px; color: #646464;">随机积分</td>
							<td style="font-size: 24px; color: #646464;">完成任务系统里的签到任务可获得，每日每用户仅限一次</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">发个帖子</td>
							<td style="font-size: 24px; color: #646464;">+10&nbsp;&nbsp;&nbsp;</td>
							<td style="font-size: 24px; color: #646464;">完成任务系统里的发帖任务可获得</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">评论帖子</td>
							<td style="font-size: 24px; color: #646464;">+5&nbsp;&nbsp;&nbsp;</td>
							<td style="font-size: 24px; color: #646464;">评论任意帖子后可获得</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">天天分享</td>
							<td style="font-size: 24px; color: #646464;">+20&nbsp;&nbsp;</td>
							<td style="font-size: 24px; color: #646464;">分享任意专家解答和专家说可获得</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">提个问题</td>
							<td style="font-size: 24px; color: #646464;">+10&nbsp;&nbsp;&nbsp;</td>
							<td style="font-size: 24px; color: #646464;">在“提问题”模块发布问题后可获得</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">成为最热帖子</td>
							<td style="font-size: 24px; color: #646464;">+200</td>
							<td style="font-size: 24px; color: #646464;">有一个帖子被顶入最热帖子列表即可获得，每日每用户仅限一次</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">邀请好友</td>
							<td style="font-size: 24px; color: #646464;">+100&nbsp;&nbsp;</td>
							<td style="font-size: 24px; color: #646464;">邀请亲友通过你发出的邀请链接注册成为平台用户，即可获得</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">参与活动</td>
							<td style="font-size: 24px; color: #646464;">+100&nbsp;&nbsp;</td>
							<td style="font-size: 24px; color: #646464;">报名成功任意活动后可获得</td>
						</tr>
					</table>

					<br>
					<font>成功认证成为佳佳专业人员的用户可享受的额外积分特权有</font>
					<br><br>

					<table border="1px" color="dfe1e1" width="100%">
						<tr>
							<td style="font-size: 32px; color: #808182;" width="26%">行为</td>
							<td style="font-size: 32px; color: #808182;" width="26%">积分</td>
							<td style="font-size: 32px; color: #808182;" width="48%">说明</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">发布专家说</td>
							<td style="font-size: 24px; color: #646464;">+50&nbsp;&nbsp;</td>
							<td style="font-size: 24px; color: #646464;">发布一篇专家说后即可获得</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">添加问题解答</td>
							<td style="font-size: 24px; color: #646464;">+100&nbsp;&nbsp;</td>
							<td style="font-size: 24px; color: #646464;">为任意用户所提问题添加回答后可获得</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">发布活动</td>
							<td style="font-size: 24px; color: #646464;">待定</td>
							<td style="font-size: 24px; color: #646464;">产品组正在努力考虑给出更好的得分机制</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">认证成功</td>
							<td style="font-size: 24px; color: #646464;">+200</td>
							<td style="font-size: 24px; color: #646464;">提交的身份认证资料经平台审核通过后可获得，认证通过前的积分保持不变</td>
						</tr>
						<tr width="100%">
							<td style="font-size: 24px; color: #646464;">获得认同</td>
							<td style="font-size: 24px; color: #646464;">待定</td>
							<td style="font-size: 24px; color: #646464;">产品组正在努力考虑给出更好的得分机制</td>
						</tr>
					</table>
				</div>


				<div class="Content">
					<p>佳佳积分怎么花？</p>
					<font>
						1.「兑换好礼」  大量精美实用好礼等你来兑换（即将推出）

					</font>
				</div>


				<div class="Content">
					<p>违规及恶意操作惩罚</p>
					<font>

						对于有恶意刷积分行为的用户，平台将做如下处理 <br><br>
						第一次发现：平台发出警告消息，并清零积分，将该用户加入黄名单 <br><br>
						第二次发现：平台对该用户账户做永久封号处理，并拒绝其申诉请求 <br><br>

					</font>
				</div>


				<div class="Content">
					<p>相关说明</p>
					<font>
						佳佳康复保留最终解释权
					</font>
				</div>
				

			</div>
		</div>
	</body>
</html>