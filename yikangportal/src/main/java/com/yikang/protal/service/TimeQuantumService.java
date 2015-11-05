package com.yikang.protal.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yikang.base.SendRequest;
import com.yikang.protal.entity.TimeQuantum;
import com.yikang.protal.manager.TimeQuantumManager;

@Service
public class TimeQuantumService {
	
	
	@Autowired
	private TimeQuantumManager timeQuantumManager;
	
	
	
	/**
	 * @author liushuaic
	 * @date 2015/09/25 11:42
	 * 获取所有的时间段
	 * ***/
	public List<TimeQuantum> getAllTimeQuantum(){
		return timeQuantumManager.getAllTimeQuantum();
	}

	
	

	/**
	 * 
	 * @author liushuaic
	 * @date 2015/11/05 10:28
	 * @desc 查询某一天的可选时间段
	 * 
	 * */
	public Map<String,Object> getCustumerTimeQuantums(String serviceDate){
		
		List<HashMap<String, Object>> returnDataType=new ArrayList<HashMap<String,Object>>();
		Map<String,Object> paramData=new HashMap<String,Object>();
		paramData.put("serviceDate", serviceDate);
		try {
			return 	SendRequest.sendPostRetureMap("00-20-01", paramData, returnDataType.getClass());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	
}
