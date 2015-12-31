package com.yikang.common.utils;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yikang.common.error.ExceptionConstants;
import com.yikang.common.message.SMSUtil;

/**
 * @author liushuaic
 * @date 2015/12/31 11:42
 * @验证码工具类
 * */
public class MobileCaptchaUtil {
	
	
	
	
	
	
	/**
	 * @author liushuaic
	 * @date 2015/09/01 20:00
	 * @desc 获取验证码
	 * **/

	public static Map<String, Object> getCaptcha(ModelMap modelMap,
			String mobileNumber, HttpServletRequest request) {

		
		Map<String, Object> rtnData = new HashMap<String, Object>();
		if(null != mobileNumber && mobileNumber.length()==11){
			
	
			Random random = new Random();
			int captcha = random.nextInt(99999);
			
			Date currentDate=Calendar.getInstance().getTime();
			Date getDate=(Date) request.getSession().getAttribute("getCaptchaDate");
			boolean isTure=false;
			if(null != getDate){
				   long diff = currentDate.getTime() - getDate.getTime();
				    long days = diff / (1000 * 60 );
				    if(days>1){
				    	isTure=true;
				    }
			}
			
			if(getDate==null || isTure){
				
					if (SMSUtil.sendMessage(mobileNumber, captcha + "", 1 + "")) {
						
						request.getSession().setAttribute("captcha", captcha);
						request.getSession().setAttribute("getCaptchaDate", currentDate);
						
						rtnData.put("status",
								ExceptionConstants.responseSuccess.responseSuccess.code);
						rtnData.put("message", "您的验证码，已经发送！请注意，手机提醒！");
					} else {
						rtnData.put(
								"status",
								ExceptionConstants.systemException.systemException.errorCode);
						rtnData.put("message", "抱歉，验证码发送失败！请您联系服务人员！");
					}
			}else{
				rtnData.put(
						"status",
						ExceptionConstants.systemException.systemException.errorCode);
				rtnData.put("message", "请1分钟后在获取！");
			}
		
		}else{
			rtnData.put( "status", ExceptionConstants.systemException.systemException.errorCode);
			rtnData.put("message", "请输入正确的手机号！");
		}

		return rtnData;
	}

	/**
	 * @author liushuaic
	 * @date 2015/09/01 19：58 验证短信，校验码。
	 * **/
	public static Map<String, Object> validateCaptcha(String captcha,
			HttpServletRequest request) {
		Map<String, Object> rtnData = new HashMap<String, Object>();

		String sesionCaptcha = request.getSession().getAttribute("captcha")
				.toString();
		if (captcha.equals(sesionCaptcha)) {
			rtnData.put("status",
					ExceptionConstants.responseSuccess.responseSuccess.code);
			rtnData.put("message", "您的验证码，输入成功！");
		} else {
			rtnData.put(
					"status",
					ExceptionConstants.systemException.systemException.errorCode);
			rtnData.put("message", "抱歉，您的验证码，输入有问题");
		}
		return rtnData;
	}
	
	
	
}
