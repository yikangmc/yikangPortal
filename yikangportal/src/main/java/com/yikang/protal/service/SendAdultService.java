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
import javax.servlet.http.HttpServletRequest;
import javax.sound.midi.Synthesizer;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONObject;
import org.junit.Test;
import org.omg.CORBA.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.yikang.common.error.ExceptionConstants.systemException;
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
	    public static  Map<String, Object> getWxConfig(HttpServletRequest req) {
	    //public static  Map<String, Object> getWxConfig(String reqUrl) {
	    	String reqUrl = req.getRequestURL().toString();
	        Map<String, Object> ret = new HashMap<String, Object>(); 
	        SenAdult senAdult = SenAdult.getInstance();
	        String access_token = "";  
	        String jsapi_ticket = "";  
	        String timestamp = Long.toString(System.currentTimeMillis() / 1000); // 必填，生成签名的时间戳  
	        //String timestamp = String.valueOf(System.currentTimeMillis());
	        String nonceStr = UUID.randomUUID().toString(); // 必填，生成签名的随机串  
	        String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="+ senAdult.getAppId() + "&secret=" + senAdult.getSecret();  
	          System.err.println("AppId:"+senAdult.getAppId());
	          System.err.println("Secret:"+senAdult.getSecret());
	        JsonNode json = httpRequest(url, "GET", null);  
	          
	        if (json != null) {  
	            //要注意，access_token需要缓存  
	            access_token = json.get("access_token").toString().replace("\"", "");  
	            System.err.println("access_token:"+access_token);  
	            url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token="+ access_token + "&type=jsapi";  
	            json = httpRequest(url, "GET", null);
	            System.err.println("ticket json : "+json);
	            if (json != null) {  
	                jsapi_ticket = json.get("ticket").toString().replace("\"", "");
	                System.err.println("jsapi_ticket:"+jsapi_ticket);
	            }  
	        }  
	        String signature = ""; 
	        //String requestUrl = "http://192.168.3.98:8089/senAdult";
	        // 注意这里参数名必须全部小写，且必须有序  
	        String sign = "jsapi_ticket=" + jsapi_ticket + "&noncestr=" + nonceStr+ "&timestamp=" + timestamp + "&url=" + reqUrl;  
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
	        System.err.println("参数："+sign);
	        System.err.println("signature:"+signature);
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
	    public static String SHA1(String decript) {  
	        try {  
	            MessageDigest digest = java.security.MessageDigest.getInstance("SHA-1");  
	            digest.update(decript.getBytes());  
	            byte messageDigest[] = digest.digest();  
	            // Create Hex String  
	            StringBuffer hexString = new StringBuffer();  
	            // 字节数组转换为 十六进制 数  
	                for (int i = 0; i < messageDigest.length; i++) {  
	                    String shaHex = Integer.toHexString(messageDigest[i] & 0xFF);  
	                    if (shaHex.length() < 2) {  
	                        hexString.append(0);  
	                    }  
	                    hexString.append(shaHex);  
	                }  
	                return hexString.toString();  
	       
	            } catch (NoSuchAlgorithmException e) {  
	                e.printStackTrace();  
	            }  
	            return "";  
	    }  
	    
	    private static String byteToHex(final byte[] hash) {  
	        Formatter formatter = new Formatter();  
	        for (byte b : hash) {  
	            formatter.format("%02x", b);  
	        }  
	        String result = formatter.toString();  
	        formatter.close();  
	        return result;  
	  
	    }  
	     
	     public Map<String, Object> getConfig(HttpServletRequest req){
	   // public static Map<String, Object> getConfig(String url){
	    	 Map<String, Object> rst = new HashMap<String, Object>();
	    	 SenAdult senAdult = SenAdult.getInstance();
	    	 Date date  = new Date();
	    	 Long nowTime=date.getTime();
	    	 Long afterTime = senAdult.getLocalTime();
	    	 Long endTime = nowTime-afterTime;
	    	 endTime=endTime/1000;
	    	 if(endTime>7100){
	    		 senAdult.setLocalTime(nowTime);
	    		 rst = getWxConfig(req);
	    		 //rst = getWxConfig(url);
	    	 }else{
	 	       rst.put("nonceStr",senAdult.getNonceStr() );
	 	       System.out.println("nonceStr:"+senAdult.getNonceStr());
	 	       rst.put("signature", senAdult.getSignature());
	 	       System.out.println("signature"+senAdult.getSignature());
	 	       rst.put("timestamp", senAdult.getTimestamp());
	 	       System.out.println("timestamp"+senAdult.getTimestamp());
	 	       System.err.println("---------------------------------------------------------------");
	    	 }
	    	 return rst;
	     }
	   /* 
	    @Test
	    public void test1(){
	    	getConfig("http:www.baidu.com");
	    	getConfig("http:www.baidu.com");
	    	getConfig("http:www.baidu.com");
	    	getConfig("http:www.baidu.com");
	    	getConfig("http:www.baidu.com");
	    }*/
}
