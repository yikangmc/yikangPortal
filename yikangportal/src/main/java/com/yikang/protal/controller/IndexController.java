package com.yikang.protal.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yikang.base.utils.TOOLS;
import com.yikang.protal.service.ServiceItemService;

@Controller
public class IndexController {
	
	@Autowired
	private ServiceItemService serviceItemService;
	
	
	
	
	@RequestMapping(value="/")
	public String indexThree(ModelMap modelMap,HttpServletRequest request){
		Map<String,Object> resData=serviceItemService.listServiceItem();
		modelMap.put("data", resData.get("data"));
		if(TOOLS.JudgeIsMoblie(request)){
			return  "index/mindex";
		}else{
			return "index/index3";
		}
	}
	
	@RequestMapping
	public String declare(){
		return "index/declare";
	}
	
}
