package com.yikang.protal.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.yikang.base.SendRequest;
import com.yikang.protal.entity.ServiceItem;

@Component
public class ServiceItemService {
	
	
	public Map<String,Object> listServiceItem(){
		
		Map<String,Object> paramData=new HashMap<String,Object>();
		
		try{
			return SendRequest.sendPostRetureMap("01-01-01", paramData, List.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	public Map<String,Object> serviceItemDesc(Long serviceItemId){
		
		Map<String,Object> paramData=new HashMap<String,Object>();
		paramData.put("serviceItemId",serviceItemId);
		
		ServiceItem rtnDataType=new  ServiceItem();
		
		try {
			return SendRequest.sendPostRetureMap("01-01-02", paramData, rtnDataType.getClass());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	

}
