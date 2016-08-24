package com.yikang.protal.service;

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
import javax.sound.midi.Synthesizer;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.yikang.protal.entity.SenAdult;


/**
 * 
 * @author liushuaic
 * @date 2015/01/09 15:08
 * **/

@Service
public class SendAdultService {
	
	
	private Logger logger =LoggerFactory.getLogger(getClass());
	
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
	    public static JsonNode httpRequest(String requestUrl,String requestMethod, String outputStr) {  
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
	    public static  Map<String, Object> getWxConfig() {  
	        Map<String, Object> ret = new HashMap<String, Object>(); 
	        SenAdult senAdult = new SenAdult();
	        String access_token = "";  
	        String jsapi_ticket = "";  
	        String timestamp = Long.toString(System.currentTimeMillis() / 1000); // 必填，生成签名的时间戳  
	        System.err.println("timestamp:"+timestamp);
	        String nonceStr = UUID.randomUUID().toString(); // 必填，生成签名的随机串  
	        System.err.println("nonceStr:"+nonceStr);
	        String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="+ senAdult.getAppId() + "&secret=" + senAdult.getSecret();  
	          
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
	        String requestUrl = "http://www.jjkangfu.cn/senAdnt/";
	        System.err.println("requestUrl:"+requestUrl);
	        // 注意这里参数名必须全部小写，且必须有序  
	        String sign = "jsapi_ticket=" + jsapi_ticket + "&noncestr=" + nonceStr+ "&timestamp=" + timestamp + "&url=" + requestUrl;  
	        System.err.println("sign:"+sign);
	        try {  
	            MessageDigest crypt = MessageDigest.getInstance("SHA-1");  
	            crypt.reset();  
	            crypt.update(sign.getBytes("UTF-8"));  
	            signature = byteToHex(crypt.digest()); 
	            System.err.println("signature:"+signature);
	        } catch (NoSuchAlgorithmException e) {  
	            e.printStackTrace();  
	        } catch (UnsupportedEncodingException e) {  
	            e.printStackTrace();  
	        }  
	        ret.put("appId", senAdult.getAppId());  
	        ret.put("timestamp", timestamp);  
	        ret.put("nonceStr", nonceStr);  
	        ret.put("signature", signature);
	        senAdult.setNonceStr(nonceStr);
	        senAdult.setSignature(signature);
	        senAdult.setTimestamp(timestamp);
	        return ret;  
	    }  
	    
	    /** 
	     * 方法名：byteToHex</br> 
	     * 详述：字符串加密辅助方法 </br> 
	     * @param hash 
	     * @return 说明返回值含义 
	     * @throws 说明发生此异常的条件 
	      */  
	     public static String byteToHex(final byte[] hash) {  
	         Formatter formatter = new Formatter();  
	         for (byte b : hash) {  
	             formatter.format("%02x", b);  
	         }  
	         String result = formatter.toString();  
	         formatter.close();  
	         return result;  
	   
	     }  
	     
	     public Map<String, Object> getConfig(){
	    	 Map<String, Object> rst = new HashMap<String, Object>();
	    	 SenAdult senAdult = new SenAdult();
	    	 Date date  = new Date();
	    	 Long nowTime=date.getTime();
	    	 Long afterTime = senAdult.getLocalTime();
	    	 Long endTime = nowTime-afterTime;
	    	 endTime=endTime/1000;
	    	 if(endTime>7200){
	    		 senAdult.setLocalTime(nowTime);
	    		 rst = getWxConfig();
	    	 }else{
	 	       rst.put("nonceStr",senAdult.getNonceStr() );
	 	       rst.put("signature", senAdult.getSignature());
	 	       rst.put("timestamp", senAdult.getTimestamp());
	    	 }
	    	 return rst;
	     }
	
}
