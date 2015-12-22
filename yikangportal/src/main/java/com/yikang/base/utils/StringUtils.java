package com.yikang.base.utils;

public class StringUtils {

	
	
	/**
	 * @author liushuaic
	 * @date 2015/12/22 11:04
	 * @desc 用户名校验
	 * **/
	public static boolean  userNameCheck(String userName){
		
		if( userName !=null && userName.length()>0 && userName.length()<15 ){
			return true;
		}
		
		return false;
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2015/12/22 11:05
	 * @desc 密码校验
	 * ***/
	
	public static boolean passwordCheck(String password){
		if( password !=null && password.length()>0 && password.length()<15 ){
			return true;
		}
		
		return false;
	}
	
}
