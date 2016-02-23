package com.yikang.protal.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yikang.protal.service.ServiceItemService;

@Controller
public class IndexController {
	
	@Autowired
	private ServiceItemService serviceItemService;
	
	
	
	
	@RequestMapping(value="/")
	public String indexThree(ModelMap modelMap){
		Map<String,Object> resData=serviceItemService.listServiceItem();
		modelMap.put("data", resData.get("data"));
		return "index/index3";
	}

	@RequestMapping
	public String mindex(ModelMap modelMap){
		Map<String,Object> resData=serviceItemService.listServiceItem();
		modelMap.put("data", resData.get("data"));
		return "index/mindex";
	}
	
}
