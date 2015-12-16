package com.yikang.protal.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.yikang.base.response.ResponseMessage;
import com.yikang.common.error.ExceptionConstants;
import com.yikang.protal.service.ServicerService;

@Controller
public class ServicerController {

	@Autowired
	private ServicerService servicerService;
	
	
	
	
	/**
	 * @author liushuaic
	 * @date 2015/12/16 19:14
	 * @desc 获取服务人员
	 * */
	public ResponseMessage getAssessmentService(String districtCode,String mapPositionAddress
			,String detailAddress,String serviceDate,String custumerTimeQuantumId){
		ResponseMessage responseMessage=new ResponseMessage();
		Map<String,Object> res=servicerService.getAssessmentService( districtCode, mapPositionAddress, detailAddress, serviceDate, custumerTimeQuantumId);
		responseMessage.setData(res.get("data"));
		responseMessage.setStatus(ExceptionConstants.responseSuccess.responseSuccess.code);
		responseMessage.setMessage(ExceptionConstants.responseSuccess.responseSuccess.message);
		return responseMessage;
	}
}
