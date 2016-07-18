package com.yikang.protal.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.yikang.base.SendRequest;
@Component
public class AppPageService {
	
	public Map<String, Object> postList(int detailspPostId) {
		Map<String, Object> paramData = new HashMap<String,Object>();
		paramData.put("forumPostId", detailspPostId);
		try {
			return SendRequest.sendPostRetureMap("00-28-02", paramData, Map.class);	
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public Map<String, Object> answerUserData(int answerId){
		Map<String, Object> paramData = new HashMap<String,Object>();
		paramData.put("questionId", answerId);
		
		try {
			return SendRequest.sendPostRetureMap("00-29-04", paramData, Map.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	/**
	 * 活动
	 * @param Id
	 * @return
	 */
	public Map<String, Object> activetyList(Long Id){
		Map<String, Object> paramData = new HashMap<String,Object>();
		paramData.put("activetyId", Id);
		
		try {
			return SendRequest.sendPostRetureMap("00-31-02", paramData, Map.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * @author liushuaic
	 * @date 2016-06-27 15:47
	 * @desc 查询专业回答
	 * **/
	public Map<String,Object> professionalAnswer(Long id){
		Map<String, Object> paramData = new HashMap<String,Object>();
		paramData.put("answerId", id);
		
		try {
			return SendRequest.sendPostRetureMap("00-29-04", paramData, Map.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}


