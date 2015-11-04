package com.yikang.protal.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yikang.base.SendRequest;
import com.yikang.protal.entity.AppointmentOrder;
import com.yikang.protal.entity.ServiceItem;
import com.yikang.protal.manager.AppointmentOrderManager;

@Service
public class AppointmentOrderService {
	
	
	@Autowired
	private AppointmentOrderManager appointmentOrderManager;
	
	/**
	 * 
	 * @author liushuaic
	 * @date 2015/09/25 14:38
	 * @desc 添加预约定单
	 * 
	 * */
	public int insertSelective(AppointmentOrder record){
		return appointmentOrderManager.insertSelective(record);
	}

	
	/**
	 * @author liushuaic
	 * @date 2015/09/25 14:38
	 * @desc 保存订单
	 * **/
	public Map<String,Object> saveAppointmentOrder(Long serviceItemId,Long[] medicinalApparatusId,String mapPositionAddress,
			String districtCode,String detailAddress,
			String dataSource,String dataGroup,String linkUserName,Long serviceUserId){
		
		Map<String,Object>  paramData=new HashMap<String,Object>();
		paramData.put("serviceItemId", serviceItemId);
		paramData.put("medicinalApparatusId", medicinalApparatusId);
		paramData.put("mapPositionAddress", mapPositionAddress);
		paramData.put("districtCode", districtCode);
		paramData.put("detailAddress", detailAddress);
		paramData.put("dataSource", dataSource);
		paramData.put("dataGroup", dataGroup);
		paramData.put("linkUserName", linkUserName);
		paramData.put("linkUserName", linkUserName);
		
		
		try {
			
			ServiceItem serviceItem=new ServiceItem();
			return SendRequest.sendPostRetureMap("00-21-03", paramData,serviceItem.getClass());
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
		
	}

}
