package com.yikang.common.utils;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.ConnectException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;

import org.aspectj.weaver.patterns.ThisOrTargetAnnotationPointcut;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONObject;

import com.yikang.protal.common.response.ResponseMessage;  
  

public class H5Util {
	
	/**
	 * 生成签名时间戳
	 */
	private static String timestamp=null;
	
	
	/**
	 * 生成本地时间戳
	 */
	private static Long localTime=null;
	
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

	/** 
	    * 方法名：httpRequest</br> 
	    * 详述：发送http请求</br> 
	    * 开发人员：souvc </br> 
	    * 创建时间：2016-1-5  </br> 
	    * @param requestUrl 
	    * @param requestMethod 
	    * @param outputStr 
	    * @return 说明返回值含义 
	    * @throws 说明发生此异常的条件 
	     */  
	    private static JsonNode httpRequest(String requestUrl,String requestMethod, String outputStr) {  
	        StringBuffer buffer = new StringBuffer();
	        JsonNode josnNode=null;
	        JSONObject jsonObject = null;
	        try {  
	            URL url = new URL(requestUrl);  
	            HttpsURLConnection httpUrlConn = (HttpsURLConnection) url.openConnection();  
	            httpUrlConn.setRequestMethod("GET");
	            httpUrlConn.setRequestProperty("Content-Type","application/x-www-form-urlencoded");
	            httpUrlConn.setDoOutput(true);  
	            httpUrlConn.setDoInput(true);  
	            httpUrlConn.setUseCaches(false);  
	            System.setProperty("sun.net.client.defaultConnectTimeout", "30000");// 连接超时30秒  
 	            System.setProperty("sun.net.client.defaultReadTimeout", "30000"); // 读取超时30秒  
	            httpUrlConn.connect();
	            InputStream inputStream = httpUrlConn.getInputStream();  
	            InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");  
	            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);  
	            String str = null;  
	            while ((str = bufferedReader.readLine()) != null) { 
	                buffer.append(str);  
	            }  
	            josnNode= new ObjectMapper().readTree(buffer.toString());
	            bufferedReader.close();  
	            inputStreamReader.close();  
	            inputStream.close();  
	            inputStream = null;  
	            httpUrlConn.disconnect();  
	        } catch (ConnectException ce) {  
	            ce.printStackTrace();  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	        return josnNode;
	    }  
	    
	    /** 
	     * 方法名：getWxConfig</br> 
	     * 详述：获取微信的配置信息 </br> 
	     * @param request 
	     * @return 说明返回值含义 
	     * @throws 说明发生此异常的条件 
	      */  
	    private static  Map<String, Object> getWxConfig(HttpServletRequest request) {  
	        Map<String, Object> ret = new HashMap<String, Object>();  
	        
	        String access_token = "";  
	        String jsapi_ticket = "";  
	        String timestamp = Long.toString(System.currentTimeMillis() / 1000); // 必填，生成签名的时间戳  
	        String nonceStr = UUID.randomUUID().toString(); // 必填，生成签名的随机串  
	        String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="+ AppId + "&secret=" + secret;  
	          
	        JsonNode json = httpRequest(url, "GET", null);  
	          
	        if (json != null) {  
	            //要注意，access_token需要缓存  
	            access_token = json.get("access_token").toString().replace("\"", "");  
	              
	            url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token="+ access_token + "&type=jsapi";  
	            json = httpRequest(url, "GET", null);  
	            if (json != null) {  
	                jsapi_ticket = json.get("ticket").toString().replace("\"", "");  
	            }  
	        }  
	        String signature = ""; 
	        String requestUrl = request.getRequestURL().toString();
	        // 注意这里参数名必须全部小写，且必须有序  
	        String sign = "jsapi_ticket=" + jsapi_ticket + "&noncestr=" + nonceStr+ "×tamp=" + timestamp + "&url=" + requestUrl;  
	        try {  
	            MessageDigest crypt = MessageDigest.getInstance("SHA-1");  
	            crypt.reset();  
	            crypt.update(sign.getBytes("UTF-8"));  
	            signature = byteToHex(crypt.digest());  
	        } catch (NoSuchAlgorithmException e) {  
	            e.printStackTrace();  
	        } catch (UnsupportedEncodingException e) {  
	            e.printStackTrace();  
	        }  
	        ret.put("appId", AppId);  
	        ret.put("timestamp", timestamp);  
	        ret.put("nonceStr", nonceStr);  
	        ret.put("signature", signature);
	        setNonceStr(nonceStr);
	        setSignature(signature);
	        setTimestamp(timestamp);
	        return ret;  
	    }  
	    
	    /** 
	     * 方法名：byteToHex</br> 
	     * 详述：字符串加密辅助方法 </br> 
	     * @param hash 
	     * @return 说明返回值含义 
	     * @throws 说明发生此异常的条件 
	      */  
	     private static String byteToHex(final byte[] hash) {  
	         Formatter formatter = new Formatter();  
	         for (byte b : hash) {  
	             formatter.format("%02x", b);  
	         }  
	         String result = formatter.toString();  
	         formatter.close();  
	         return result;  
	   
	     }  
	     
	     public static Map<String, Object> getConfig(HttpServletRequest request){
	    	 Map<String, Object> rst =null;
	    	 Date date  = new Date();
	    	 Long nowTime=date.getTime();
	    	 Long afterTime = localTime;
	    	 Long endTime = nowTime-afterTime;
	    	 endTime=endTime/1000;
	    	 if(endTime>7200){
	    		 setLocalTime(nowTime);
	    		 rst = getWxConfig(request);
	    	 }else{
	 	       rst.put("nonceStr", nonceStr);
	 	       rst.put("signature", signature);
	 	       rst.put("timestamp", timestamp);
	    	 }
	    	 return rst;
	     }
	     
	     public static String getTimestamp() {
			return timestamp;
		}

		public static void setTimestamp(String timestamp) {
			H5Util.timestamp = timestamp;
		}

		public static String getNonceStr() {
			return nonceStr;
		}

		public static void setNonceStr(String nonceStr) {
			H5Util.nonceStr = nonceStr;
		}

		public static String getSignature() {
			return signature;
		}

		public static void setSignature(String signature) {
			H5Util.signature = signature;
		}
		

		public static Long getLocalTime() {
			return localTime;
		}

		public static void setLocalTime(Long localTime) {
			H5Util.localTime = localTime;
		}

		public static void main(String[] args) {
			//H5Util.getWxConfig("http://localhost:8089/index.jsp");
			Date date = new Date();
			System.out.println(date.getTime());
		}
}
