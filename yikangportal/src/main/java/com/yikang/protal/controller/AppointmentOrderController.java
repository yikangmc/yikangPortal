package com.yikang.protal.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yikang.base.response.ResponseMessage;
import com.yikang.common.error.ExceptionConstants;
import com.yikang.common.utils.DateUtils;
import com.yikang.protal.common.utils.map.MapUtils;
import com.yikang.protal.common.utils.map.model.assistant.MapResponseAssistant;
import com.yikang.protal.entity.CustumerTimeQuantum;
import com.yikang.protal.entity.Dictionary;
import com.yikang.protal.manager.DictionaryManager;
import com.yikang.protal.service.AppointmentOrderService;
import com.yikang.protal.service.ServiceItemService;
import com.yikang.protal.service.TimeQuantumService;

@Controller
public class AppointmentOrderController {
	
	
	@Autowired
	private AppointmentOrderService appointmentOrderService;
	
	@Autowired
	private TimeQuantumService timeQuantumService;
	
	@Autowired
	private ServiceItemService serviceItemServicer;
	
	@Autowired
	private DictionaryManager dictionaryManager;
	
	
	
	
	
	
	@RequestMapping("/appointmentOrder")
	public String appointmentOrder(ModelMap modelMap){
		
		modelMap.put("timeQuantums", timeQuantumService.getAllTimeQuantum());
		
		
		return "appointmentOrder/appointmentOrder";
		
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2015/11/03 17:02
	 * @desc 保存定单
	 * 
	 * **/
	@RequestMapping
	@ResponseBody
	public ResponseMessage saveAppointmentOrder(HttpServletRequest rquest,
			Long serviceItemId,Long[] medicinalApparatusId,
			String mapPositionAddress,String detailAddress,String dataSource,String dataGroup,
			String linkUserName,String districtCode,Long custumerTimeQuantumId,
			String appointmentDateTime,String phoneNumber,
			Long serviceUserId){

		
		ResponseMessage responseMessage=new ResponseMessage();
		HttpSession session=rquest.getSession();
		Long userId=(Long)session.getAttribute("userId");
		if(null != userId){
			if(
				   null != serviceItemId
				&& null != mapPositionAddress
				&& null != detailAddress
				&& null != custumerTimeQuantumId
				&& null != appointmentDateTime
				&& null != linkUserName
				&& null != phoneNumber
				&& null != districtCode
				&& null != serviceUserId
			){
				
				 dataSource="1";
				 dataGroup="1";
				
				Map<String,Object> res=appointmentOrderService.saveAppointmentOrder(
						serviceItemId, medicinalApparatusId, mapPositionAddress, 
						districtCode, detailAddress, dataSource, dataGroup, linkUserName,serviceUserId, 
						custumerTimeQuantumId,appointmentDateTime,phoneNumber,userId);
				if(null != res && res.get("status").toString().equals("000000")){
					responseMessage.setStatus(ExceptionConstants.responseSuccess.responseSuccess.code);
					responseMessage.setMessage("您好，您的服务预订成功！稍后会有工作人员联系您！");
				}else{
					responseMessage.setStatus(res.get("status").toString());
					responseMessage.setMessage(res.get("message").toString());
				}
				
			}else{
				responseMessage.setStatus(ExceptionConstants.parameterException.parameterException.errorCode);
				responseMessage.setMessage(ExceptionConstants.parameterException.parameterException.errorMessage);
			}
			
		}else{
			responseMessage.setStatus(ExceptionConstants.loginException.userNotLogin.errorCode);
			responseMessage.setMessage(ExceptionConstants.loginException.userNotLogin.errorMessage);
		}
		
		return responseMessage;
		
	}
	
	
	
	/**
	 * @author liushuaic
	 * @date 2015k/11/02 14:45 
	 * @desc 列表
	 * */
	@RequestMapping
	public String listServiceItem(ModelMap modelMap){
		
		Map<String,Object> data=serviceItemServicer.listServiceItem();
		
		modelMap.put("data", data.get("data"));
		
		return "Serve/serviceItemList";
	}
	
	
	/**
	 * 
	 * @author liushuaic
	 * @date 2015/11/02 18:15
	 * @desc 查询服务详情
	 * 
	 * **/
	@RequestMapping
	public String serviceItemDetail(ModelMap modelMap,Long serviceItemId){
		
		Map<String,Object>  rtnData=serviceItemServicer.serviceItemDesc(serviceItemId);
		modelMap.put("data", rtnData.get("data"));
		
		return "Serve/serviceItemDetail";
	}

	/**
	 * @author liushuaic
	 * @date 2015/11/04 15:14
	 * @desc 跳转到选择时间
	 * **/
	@RequestMapping
	public String appointmentTime(ModelMap modelMap,String serviceDate){
		
		//DateUtils;
		if(null == serviceDate){
			serviceDate=DateUtils.getCurrentDateStr();
		}
		
		Map<String,Object> custumerTimeQuantums=timeQuantumService.getCustumerTimeQuantums(serviceDate);
		List<CustumerTimeQuantum> serviceDateList=DateUtils.getCanSelectedDateTime();

		for(int i=0;i<serviceDateList.size();i++){
			if(serviceDateList.get(i).getDateStr().equals(serviceDate)){
				serviceDateList.get(i).setIsSelected(true);
			}
		}
		
		
		modelMap.put("serviceDateList", serviceDateList);
		modelMap.put("custumerTimeQuantums", custumerTimeQuantums.get("data"));
		
		
		return "Serve/AppointmentTime";
	}
	
	
	
	/**
	 * 
	 * @author liushuaic
	 * @date 2015/11/04 15:16
	 * @desc 填写个人信息
	 * 
	 * **/
	@RequestMapping
	public String reserveInfomation(ModelMap modelMap){
		
		List<Dictionary> ageBrackets=dictionaryManager.getAgeBracket();
		List<Dictionary> appellations=dictionaryManager.getAppellation();
		
		modelMap.put("ageBrackets", ageBrackets);
		modelMap.put("appellations", appellations);
		
		return "Serve/ReserveInformation";
		
	}
	
	
	@RequestMapping
	public String reserveInfomation2(ModelMap modelMap){
		
		List<Dictionary> ageBrackets=dictionaryManager.getAgeBracket();
		List<Dictionary> appellations=dictionaryManager.getAppellation();
		
		modelMap.put("ageBrackets", ageBrackets);
		modelMap.put("appellations", appellations);
		
		return "Serve/ReserveInformation2";
		
	}
	
	
	
	/**
	 * @author liushuaic
	 * @date 2015/11/09 14:52
	 * @desc 填写个人信息
	 * 返回服务人员信息
	 * 
	 * **/
	@RequestMapping
	@ResponseBody
	public Map<String,Object> getServicerInfo(ModelMap modelMap,
			String appointmentDateTime,Long custumerTimeQuantumId,
			String mapPositionAddress,String districtCode,String detailAddress){
		
		Map<String,Object> rtnData=appointmentOrderService.getServicerInfo(
				appointmentDateTime, custumerTimeQuantumId,
				mapPositionAddress, districtCode, detailAddress);
		
		
		return rtnData;
		
	}
	
	
	/**
	 * 
	 * @author liushuaic
	 * @date 2015/11/10 16:00
	 * @desc 获取搜索地址
	 * 
	 * **/
	public Map<String,Object> getMapPositionAddress(String mapPositionAddress,String city){
		Map<String,Object> rtnMap=new HashMap<String,Object>();
		try {
			MapResponseAssistant res=MapUtils.getAssistantInputtips(mapPositionAddress, null, "北京");
			List<LinkedHashMap<String, Object>>  data=res.getTips();
			rtnMap.put("mapPositionList", data);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return rtnMap;
		
	}
	
	/**
	 * @author liushuaic
	 * @date 2015/12/14 17:12
	 * @desc 到填写个人信息页面
	 * */
	@RequestMapping
	@ResponseBody
	public ResponseMessage storeMyOrder(ModelMap modelMap, HttpServletRequest rquest,Long serviceItemId,Long[] medicinalApparatusId){
		ResponseMessage responseMessage=new ResponseMessage();
		if(null != serviceItemId){
			modelMap.put("serviceItemId", serviceItemId);
			if(null != medicinalApparatusId){
				modelMap.put("medicinalApparatusId", medicinalApparatusId);
			}
			responseMessage.setStatus(ExceptionConstants.responseSuccess.responseSuccess.code);
			responseMessage.setMessage(ExceptionConstants.responseSuccess.responseSuccess.message);
		}else{
			responseMessage.setStatus(ExceptionConstants.parameterException.parameterException.errorCode);
			responseMessage.setMessage(ExceptionConstants.parameterException.parameterException.errorMessage);
		}
		return responseMessage;
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2015/12/14 17:42
	 * @desc 进入填写个人信息页面
	 * 
	 * **/
	@RequestMapping
	public String toReviceInfomation(ModelMap modelMap, HttpServletRequest rquest,String serviceDate,Long serviceItemId,Long[] medicinalApparatusId ){
		
		
		List<Dictionary> ageBrackets=dictionaryManager.getAgeBracket();
		List<Dictionary> appellations=dictionaryManager.getAppellation();
		
		if(null != serviceItemId){
			modelMap.put("serviceItemId", serviceItemId);
			if(null != medicinalApparatusId){
				modelMap.put("medicinalApparatusId", medicinalApparatusId);
			}
		}
		
		
		modelMap.put("ageBrackets", ageBrackets);
		modelMap.put("appellations", appellations);
		
		
		if(null == serviceDate){
			serviceDate=DateUtils.getCurrentDateStr();
		}
		
		Map<String,Object> custumerTimeQuantums=timeQuantumService.getCustumerTimeQuantums(serviceDate);
		List<CustumerTimeQuantum> serviceDateList=DateUtils.getCanSelectedDateTime();

		for(int i=0;i<serviceDateList.size();i++){
			if(serviceDateList.get(i).getDateStr().equals(serviceDate)){
				serviceDateList.get(i).setIsSelected(true);
			}
		}
		
		
		modelMap.put("serviceDateList", serviceDateList);
		modelMap.put("custumerTimeQuantums", custumerTimeQuantums.get("data"));
		modelMap.put("serviceDate",serviceDate);
		
		
		return "Serve/reserveInformation";
	}
	
	
	
	
	/**
	 * @author liushuaic
	 * @date 2015/12/15 15:08
	 * */
	@RequestMapping
	public String selectMapPosition(ModelMap modelMap){
		return "Serve/selectMapPosition";
	}
	
	
}
