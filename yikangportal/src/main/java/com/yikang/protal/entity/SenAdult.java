package com.yikang.protal.entity;

import java.util.Date;

import com.yikang.protal.service.SendAdultService;  
  

public class SenAdult {
	
	/**
	 * 生成签名时间戳
	 */
	private static String timestamp=null;
	
	
	/**
	 * 生成本地时间戳
	 */
	private static Long localTime=0L;
	
	/**
	 * 生成签名的随机串
	 */
	private static String nonceStr=null;

	/**
	 * 签名
	 */
	private static String signature = null;
	
	/**
	 * 获取access_token填写client_credential 
	 */
	private static String grant_type = "client_credential";
	
	/**
	 * 第三方用户唯一凭证
	 */
	private static String AppId="wxc43b17327cf5b165";
	
	/**
	 * 第三方用户唯一凭证密钥，即appsecret 
	 */
	private static String secret="786baee6d9a7e6d104fd1c70bd25bbd3";
	
	private String access_token=null;
	
	private String jsapi_ticket=null;
	
	public String getAccess_token() {
		return access_token;
	}

	public void setAccess_token(String access_token) {
		this.access_token = access_token;
	}

	public String getJsapi_ticket() {
		return jsapi_ticket;
	}

	public void setJsapi_ticket(String jsapi_ticket) {
		this.jsapi_ticket = jsapi_ticket;
	}

	
	     
	public String getGrant_type() {
		return grant_type;
	}

	public void setGrant_type(String grant_type) {
		SenAdult.grant_type = grant_type;
	}

	public String getAppId() {
		return AppId;
	}

	public void setAppId(String appId) {
		AppId = appId;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		SenAdult.secret = secret;
	}

	public String getTimestamp() {
			return timestamp;
	}

		public void setTimestamp(String timestamp) {
			SenAdult.timestamp = timestamp;
		}

		public String getNonceStr() {
			return nonceStr;
		}

		public void setNonceStr(String nonceStr) {
			SenAdult.nonceStr = nonceStr;
		}

		public String getSignature() {
			return signature;
		}

		public void setSignature(String signature) {
			SenAdult.signature = signature;
		}
		

		public Long getLocalTime() {
			return localTime;
		}

		public void setLocalTime(Long localTime) {
			SenAdult.localTime = localTime;
		}
		
		public static void main(String[] args) {
			SendAdultService.getWxConfig();
		}
}
