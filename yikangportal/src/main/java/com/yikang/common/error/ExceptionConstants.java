package com.yikang.common.error;


/**
 * 
 * @author liushuaic
 * @date 2015/07/30 15:10
 * @desc 异常静态类
 * 03
 * **/
public class ExceptionConstants {
	

	public enum responseSuccess{
		responseSuccess("000000","操作成功！");
		
		public String code;
		public String message;
		private responseSuccess(String code,String message){
			this.code=code;
			this.message=message;
		}
	}
	
	/**
	 * 参数异常枚举类
	 * @author liushuaic
	 * @date	2015/07/30 15:18
	 * 
	 * 00 开头
	 * */
	public enum parameterException{
		parameterException("000001","参数类型异常！"),
		accessTiketException("000002","accessTiket校验异常！");
		public String errorCode;
		public String errorMessage;
		private parameterException(String errorCode,String errorMessage){
			this.errorCode=errorCode;
			this.errorMessage=errorMessage;
		}
	}
	/**
	 * 01开关
	 * */
	public enum systemException{
		systemException("999999","系统异常！");
		public String errorCode;
		public String errorMessage;
		private systemException(String errorCode,String errorMessage){
			this.errorCode=errorCode;
			this.errorMessage=errorMessage;
		}
	}
	
	/**
	 * @author liushuaic
	 * @date 2015/08/27 19:16
	 * @desc 业务异常枚举类
	 * 02开头
	 * */
	public enum operationException{
		userDuplicateException("020001","用户重复！");
		public String errorCode;
		public String errorMessage;
		private operationException(String errorCode,String errorMessage){
			this.errorCode=errorCode;
			this.errorMessage=errorMessage;
		}
	}
	/**
	 * @desc 登陆异常
	 * 03
	 * **/
	public enum loginException{
		userNameOrPasswordException("030001","用户名或密码错误！"),
		userNotLogin("030002","用户未登陆！"),
		
		userNameOrPasswordFormatIsNotCorrect("030003","用户名与密码格式不正确！"),
		
		loginSuccess("000000","登陆成功！");
		public String errorCode;
		public String errorMessage;
		private loginException(String errorCode,String errorMessage){
			this.errorCode=errorCode;
			this.errorMessage=errorMessage;
		}
	}
	
	
	/**
	 * @desc 邀请问题
	 * **/
	public enum invationException{
		
		mobileOrInvationCodeException("040001","您的手机号或随诊码不正确！"),
		userRepeate("040002","用户重复！"),
		havedService("040003","您已经领取过服务了！希望您持续关注我们！"),
		invationSuccess("000000","您好！您已经预约成功了！稍后会有服务人员与您联系！");
		
		public String errorCode;
		public String errorMessage;
		private invationException(String errorCode,String errorMessage){
			this.errorCode=errorCode;
			this.errorMessage=errorMessage;
		}
	}
	
	
	
	/**
	 * 
	 * @author liushuaic
	 * @date 2015/12/31 11:12
	 * @desc 用户异常
	 * 02
	 * */
	public enum UserException{
		
		userRegisterSuccess("000000","您好，您已经注册成功！"),
		userRegisterBad("030201","用户注册异常！");
		
		public String errorCode;
		public String errorMessage;
		
		private UserException(String errorCode,String errorMessage){
			this.errorCode=errorCode;
			this.errorMessage=errorMessage;
		}
		
	}
	
	
	
}
