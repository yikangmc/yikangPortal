package com.yikang.protal.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yikang.base.response.ResponseMessage;
import com.yikang.common.error.ExceptionConstants;
import com.yikang.common.utils.ParamValidateUtil;
import com.yikang.protal.entity.User;
import com.yikang.protal.service.ShareUserService;
import com.yikang.protal.service.UserService;

@Controller
public class InviteController {

	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ShareUserService shareUserService;
	
	
	
	@RequestMapping
	public String inviteRegister(ModelMap modelMap,String invitationCode){
		
		// 如果邀请码等于 为 null 就，跳转到 knowhulingjia
		if(null != invitationCode && invitationCode.length()>0){
			User userData = userService.getUserByInvitationCode(invitationCode);
			modelMap.put("invitationCode" ,invitationCode);
			modelMap.put("user" ,userData);
		}
		
		return "invite/servePrecept";
	}
	
	
	@RequestMapping
	public String knowhulingjia(ModelMap modelMap,String invitationCode){
		if(null != invitationCode && invitationCode.length()>1){
			modelMap.put("invitationCode",invitationCode);
		}
		return "invite/knowhulingjia";
	}
	
	
	@RequestMapping
	public String toServeOnNew(ModelMap modelMap,String invitationCode){
		if(null != invitationCode && invitationCode.length()>=4){
			User userData = userService.getUserByInvitationCode(invitationCode);
			modelMap.put("user" ,userData);
		}
		
		return "invite/serveOnnew";
		
	}
	
	
	
	/**
	 * 
	 * @date 2015/12/09 10:42
	 * @desc 预约新的服务
	 * 
	 * */
	@RequestMapping
	@ResponseBody
	public ResponseMessage serveOnNew(ModelMap modelMap,String invitationCode,HttpServletRequest request,String mobileNumber){
		
		ResponseMessage responseMessage=new ResponseMessage();
		if(ParamValidateUtil.validateMobileNumber(mobileNumber)){
			// 校验邀请码
			if(null != invitationCode && invitationCode.length()>=4 && invitationCode.length()<10){
			}else{
				invitationCode="";
			}
			if(shareUserService.saveShareUser(mobileNumber, "4", request,invitationCode)){

				User userData = userService.getUserByInvitationCode(invitationCode);
				modelMap.put("inviteCode", invitationCode);
				modelMap.put("user", userData);
				
				String mobile = mobileNumber; 
				String ret = mobile.replaceAll("(\\d{3})(\\d{4})(\\d{4})", "$1****$3");
				request.getSession().setAttribute("schedule", ret);
				
				responseMessage.setStatus(ExceptionConstants.invationException.invationSuccess.errorCode);
				responseMessage.setMessage(ExceptionConstants.invationException.invationSuccess.errorMessage);
				return responseMessage;
			}else{
				responseMessage.setStatus(ExceptionConstants.invationException.havedService.errorCode);
				responseMessage.setMessage(ExceptionConstants.invationException.havedService.errorMessage);
				return responseMessage;
			}

		}else{
			responseMessage.setStatus(ExceptionConstants.invationException.mobileOrInvationCodeException.errorCode);
			responseMessage.setMessage(ExceptionConstants.invationException.mobileOrInvationCodeException.errorMessage);
			return responseMessage;
		}
		
		
	}
}

