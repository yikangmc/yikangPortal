package com.yikang.protal.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.yikang.base.SendRequest;
import com.yikang.base.response.ResponseMessage;
import com.yikang.protal.entity.ForumPostTxtEditor;

@Service
public class HomeService {

	
	private static final Logger log=LoggerFactory.getLogger(HomeService.class);
	
	
	/**
	 * @author liushuaic
	 * @date 2016-07-21 14:21
	 * */
	public int addFormedit(String uniqueCode){
		
		Map<String,String> paramMap=new HashMap<String, String>();
		paramMap.put("uniqueCode", uniqueCode);
		ResponseMessage<String> resMessage=new ResponseMessage<String>();
		try {
			resMessage=SendRequest.sendPostRetureResponseMessage("00-43-02", paramMap, Map.class);
			if(null != resMessage && resMessage.status.equals("000000")){
				return 1;
			}
			return 0;
		} catch (IOException e) {
			e.printStackTrace();
			log.error(e.getMessage());
			return 0;
		}
	}
	
	/**
	 * @author liushuaic
	 * @date 2016-07-21 15:28
	 * @desc 查询某个一个二维码的，数据url
	 * **/
	public ResponseMessage<ForumPostTxtEditor> getForumPostTxtByUniqueCode(String uniqueCode){
		Map<String,Object> paramMap=new HashMap<String,Object>();
		paramMap.put("uniqueCode", uniqueCode);
		ResponseMessage<ForumPostTxtEditor> resMessage=new ResponseMessage<ForumPostTxtEditor>();
		try{
			resMessage=SendRequest.sendPostRetureResponseMessage("00-43-03", paramMap, ForumPostTxtEditor.class);
		}catch(Exception e){
			e.printStackTrace();
		}
		return resMessage;
	}
	
	
	
}
