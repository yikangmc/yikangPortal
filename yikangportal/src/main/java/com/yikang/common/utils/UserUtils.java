package com.yikang.common.utils;

import javax.servlet.http.HttpServletRequest;

import com.yikang.protal.entity.User;

public class UserUtils {

	
	/**
	 * @author liushuaic
	 * @date 2016-07-29 15:34
	 * @desc 获取用户id
	 * **/
	public static Long getUserId(HttpServletRequest request){
		User user=(User)request.getSession().getAttribute("user");
		return Long.valueOf(user.getUserId());
	}
	
	
	
}
