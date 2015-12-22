package com.yikang.common.utils;
/**
 * 
 * @author liushuaic
 * @date 2015/12/09 18:37
 * @desc 参数校验
 * 
 * ***/
public class ParamValidateUtil {
	
	
	
	/**
	 * @author liushuaic
	 * @date 2015/12/09 19:02
	 * @desc 手机号码验证
	 * 现在只能判断 1开关， 长度是11位的。
	 * **/
	public static boolean validateMobileNumber(String mobileNumber){
		if(null != mobileNumber){
			String regex = "1{1}\\d{10}";
			return mobileNumber.matches(regex);
		}
		return false;
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2015/12/09 19:02
	 * @desc 邮箱验证
	 * 现在只能判断 1开关， 长度是11位的。
	 * **/
	public static boolean validateEmail(String email){
		if(null != email){
			String regex = "1{1}\\d{10}";
			return email.matches(regex);
		}
		return false;
	}
	
	
	
	public static void main(String[] args) {
//		String mobleNumber="13413413111";
//		System.out.println(mobleNumber.startsWith("2"));
//		String regex = "1{1}\\d{10}";
//		System.out.println(mobleNumber.matches(regex));
		
		
//		String emailStr="nyliushuai@163.com";
//		String emailRegex = "\\w{1,15}\\@{1}\\w{2,15}\\.{1}\\w{10}";
//		System.out.println(emailStr.matches(emailRegex));
		
	}
}
