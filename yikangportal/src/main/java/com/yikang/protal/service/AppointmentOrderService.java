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
			String dataSource,String dataGroup,String linkUserName,Long serviceUserId,Long timeQuantumId,
			String appointmentDateTime,String phoneNumber){
		
		Map<String,Object>  paramData=new HashMap<String,Object>();
		paramData.put("serviceItemId", serviceItemId);
		paramData.put("medicinalApparatusId", medicinalApparatusId);
		paramData.put("mapPositionAddress", mapPositionAddress);
		//paramData.put("districtCode", districtCode);
		paramData.put("detailAddress", detailAddress);
		paramData.put("dataSource", dataSource);
		paramData.put("dataGroup", dataGroup);
		paramData.put("linkUserName", linkUserName);
		paramData.put("timeQuantumId", timeQuantumId);
		paramData.put("appointmentDateTime", appointmentDateTime);
		paramData.put("phoneNumber", phoneNumber);
		
		
		try {
			
			ServiceItem serviceItem=new ServiceItem();
			return SendRequest.sendPostRetureMap("00-21-03", paramData,serviceItem.getClass());
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
		
	}

	
	/**
	 * 
	 * @author liushuaic
	 * @date 2015/11/09 15:18
	 * @desc 查询服务人员
	 * 
	 * */
	public Map<String,Object> getServicerInfo(
			String serviceDate,Long custumerTimeQuantumId,
			String mapPositionAddress,String districtCode,
			String detailAddress){
		
		Map<String,Object>  paramData=new HashMap<String,Object>();
		paramData.put("serviceDate",serviceDate);
		paramData.put("custumerTimeQuantumId", custumerTimeQuantumId);
		paramData.put("mapPositionAddress", mapPositionAddress);
		paramData.put("districtCode", districtCode);
		paramData.put("detailAddress", detailAddress);
		
		try{
			
			ServiceItem serviceItem=new ServiceItem();
			return SendRequest.sendPostRetureMap("00-22-01", paramData,serviceItem.getClass());
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	
	
}
