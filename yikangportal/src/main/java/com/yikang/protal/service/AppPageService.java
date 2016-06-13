package com.yikang.protal.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.yikang.base.SendRequest;
@Component
public class AppPageService {
	
	public Map<String, Object> postList(int detailspPostId) {
//		List<Map<String, Object>> restDataType = new ArrayList<Map<String, Object>>();
		Map<String, Object> paramData = new HashMap<>();
		paramData.put("forumPostId", detailspPostId);
		try {
			return SendRequest.sendPostRetureMap("00-28-02", paramData, Map.class);	
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public Map<String, Object> answerUserData(int answerId){
		Map<String, Object> paramData = new HashMap<>();
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
	public Map<String, Object> activetyList(int Id){
		Map<String, Object> paramData = new HashMap<>();
		paramData.put("activetyId", Id);
		
		try {
			return SendRequest.sendPostRetureMap("00-31-02", paramData, Map.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}


