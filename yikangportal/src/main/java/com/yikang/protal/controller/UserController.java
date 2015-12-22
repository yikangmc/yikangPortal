package com.yikang.protal.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yikang.base.response.ResponseMessage;
import com.yikang.base.utils.StringUtils;
import com.yikang.common.error.ExceptionConstants;
import com.yikang.protal.entity.User;
import com.yikang.protal.manager.UserManager;

@Controller
public class UserController {
	
	@Autowired
	private UserManager userManager;
	
	
	
	
	
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

	/****/
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
