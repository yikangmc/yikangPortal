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
	
	
	
	
//	@RequestMapping(value="/")
//	public String indexThree(ModelMap modelMap,HttpServletRequest request){
//		Map<String,Object> resData=serviceItemService.listServiceItem();
//		modelMap.put("data", resData.get("data"));
//		
//		if(TOOLS.JudgeIsMoblie(request)){
//			return  "index/indexM";
//		}else{
//			return "index/index3";
//		}
//	}
	
	@RequestMapping(value="/")
	public String indexThree(){
		return "index/index3";
	}
	
	@RequestMapping
	public String declare(ModelMap modelMap,HttpServletRequest request){
		Map<String,Object> resData=serviceItemService.listServiceItem();
		modelMap.put("data", resData.get("data"));
		return "index/declare";
	}
	
	@RequestMapping
	public String productFooter() {
		return "index/productFooter";
	}
	
	/**
	 * 小佳说
	 * @return
	 */
	@RequestMapping
	public String social() {
		return "index/social";
	}
	
	/**
	 * 小佳说-详情
	 * @return
	 */
	@RequestMapping
	public String socialDetails() {
	 	return "index/socialDetails";
	}
	
}
