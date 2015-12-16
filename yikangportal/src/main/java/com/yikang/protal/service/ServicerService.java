package com.yikang.protal.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.yikang.base.SendRequest;

@Component
public class ServicerService {

	
	
	/**
	 * @author liushuaic
	 * @date 2015/12/16 18:41
	 * @desc 获取项目服务人员
	 * **/
	public  Map<String,Object> getAssessmentService(String districtCode,String mapPositionAddress
			,String detailAddress,String serviceDate,String custumerTimeQuantumId){
		
		Map<String,Object> paramData=new HashMap<String,Object>();
		paramData.put("districtCode", districtCode);
		paramData.put("mapPositionAddress", mapPositionAddress);
		paramData.put("detailAddress", detailAddress);
		paramData.put("serviceDate", serviceDate);
		paramData.put("custumerTimeQuantumId", custumerTimeQuantumId);
				
		try{
			return  SendRequest.sendPostRetureMap("00-22-01", paramData, Map.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
