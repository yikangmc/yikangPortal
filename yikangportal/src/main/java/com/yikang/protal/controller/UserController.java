package com.yikang.protal.controller;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yikang.base.response.ResponseMessage;
import com.yikang.base.utils.StringUtils;
import com.yikang.common.error.ExceptionConstants;
import com.yikang.common.utils.MobileCaptchaUtil;
import com.yikang.protal.entity.User;
import com.yikang.protal.manager.UserManager;
import com.yikang.protal.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserManager userManager;
	
	@Autowired
	private UserService  userService;
	
	
	
	
	/**
	 * @author liushuaic
	 * @date 2015/12/22 11:29 
	 * @desc 登陆
	 * **/
	@RequestMapping
	@ResponseBody
	public ResponseMessage login(String loginName,String loginPassword,HttpServletRequest reqeust){
		
		ResponseMessage responseMessage=new ResponseMessage();
		
		if(StringUtils.userNameCheck(loginName) && StringUtils.passwordCheck(loginPassword)){
			
			User user=userManager.loginUserByLoginNameAndLoginPassword(loginName, loginPassword);
			if(null != user){
				reqeust.getSession().setAttribute("userId", user.getUserId());
				responseMessage.setStatus(ExceptionConstants.loginException.loginSuccess.errorCode);
				responseMessage.setMessage(ExceptionConstants.loginException.loginSuccess.errorMessage);
			}else{
				responseMessage.setStatus(ExceptionConstants.loginException.userNameOrPasswordException.errorCode);
				responseMessage.setMessage(ExceptionConstants.loginException.userNameOrPasswordException.errorMessage);
			}
			
		}else{
			responseMessage.setStatus(ExceptionConstants.loginException.userNameOrPasswordFormatIsNotCorrect.errorCode);
			responseMessage.setMessage(ExceptionConstants.loginException.userNameOrPasswordFormatIsNotCorrect.errorMessage);
		}
		
		return responseMessage;
	}
	
	
	/**
	 * 
	 * @author liushuaic
	 * @date 2015/12/31 10:25
	 * @desc 注册用户
	 * 
	 * */
	@RequestMapping
	@ResponseBody
	public ResponseMessage registerUser(String loginName,String loginPassword,String captcha,HttpServletRequest request){
		
		ResponseMessage<Object> responseMessage=new ResponseMessage<Object>();
		
		HttpSession session=request.getSession();
		if(null != session.getAttribute("captcha")){
			if(session.getAttribute("captcha").toString().equals(captcha)){
				if(StringUtils.userNameCheck(loginName) && StringUtils.passwordCheck(loginPassword)){
					ResponseMessage rtnData=userService.registerUser(loginName, loginPassword);
					if(rtnData.getStatus().equals("000000")){
						responseMessage.setStatus(rtnData.getStatus());
						responseMessage.setMessage("您好，已经注册成功！");
					}else{
						responseMessage.setData(ExceptionConstants.UserException.userRegisterBad.errorCode);
						responseMessage.setMessage(ExceptionConstants.UserException.userRegisterBad.errorMessage);
					}
					
				}else{
					responseMessage.setData(ExceptionConstants.UserException.userRegisterBad.errorCode);
					responseMessage.setMessage(ExceptionConstants.UserException.userRegisterBad.errorMessage);
				}
			}else{
				responseMessage.setStatus(ExceptionConstants.responseSuccess.responseSuccess.code);
				responseMessage.setMessage("抱歉，您的验证码，输入有问题");
			}
		}else{
			responseMessage.setStatus(ExceptionConstants.parameterException.parameterException.errorCode);
			responseMessage.setMessage("您好，请确认是否收到验证码？");
		}
		
		 
		return responseMessage;
		
	}
	
	/**
	 * @author liushuaic
	 * @date 2015/09/01 20:00
	 * @desc 获取验证码
	 * **/

	@RequestMapping
	@ResponseBody
	public Map<String, Object> getCaptcha(ModelMap modelMap,
			String mobileNumber, HttpServletRequest request) {
		
		return MobileCaptchaUtil.getCaptcha(modelMap, mobileNumber, request);
	}
	

	/**
	 * @author liushuaic
	 * @date 2015/12/31 10:59
	 * **/
	@RequestMapping
	@ResponseBody
	public ResponseMessage getUser(HttpServletRequest rquest){
		
		ResponseMessage responseMessage=new ResponseMessage();
		responseMessage.setData(rquest.getSession().getAttribute("userId"));
		responseMessage.setStatus(ExceptionConstants.loginException.userNameOrPasswordFormatIsNotCorrect.errorCode);
		responseMessage.setMessage(ExceptionConstants.loginException.userNameOrPasswordFormatIsNotCorrect.errorMessage);

		return responseMessage;
	}
}
