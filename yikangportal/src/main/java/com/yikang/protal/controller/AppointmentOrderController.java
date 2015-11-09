package com.yikang.protal.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yikang.common.utils.DateUtils;
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
	public Map<String,Object> saveAppointmentOrder(HttpServletRequest rquest,Long serviceItemId,Long[] medicinalApparatusId,
			String mapPositionAddress,String detailAddress,String dataSource,String dataGroup,
			String linkUserName,String districtCode,Long timeQuantumId,String appointmentDateTime){
		
		Map<String,Object> rtnMap=new HashMap<String, Object>();
		
		HttpSession session=rquest.getSession();
		
		Long userId=(Long)session.getAttribute("userId");
		
		appointmentOrderService.saveAppointmentOrder(serviceItemId, medicinalApparatusId, mapPositionAddress, 
				districtCode, detailAddress, dataSource, dataGroup, linkUserName,userId, timeQuantumId,appointmentDateTime);
		
		return rtnMap;
		
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
		
		return "Serve/ServeProject";
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
		
		return "Serve/ServiceIntroduce";
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
	
	
}
