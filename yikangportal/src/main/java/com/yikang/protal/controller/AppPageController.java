package com.yikang.protal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yikang.protal.entity.User;

@Controller
public class AppPageController {
	
	/**
	 * 免责声明
	 * @return
	 */
	@RequestMapping
	public String operation(){
		return "appPage/operationQualification";
	}
	
	/**
	 * 个人认证
	 * @return
	 */
	@RequestMapping
	public String personal(){
		return "appPage/personalQualification";
	}
	
	
	/**
	 * 机构认证
	 * @return
	 */
	@RequestMapping
	public String organization(){
		return "appPage/organizationQualification";
	}
	
	
	/**
	 * 回答页面
	 * @return
	 */
	@RequestMapping
	public String details() {
		return "appPage/templateDetails";
	}
	
	/**
	 * 活动页面
	 * @return
	 */
	@RequestMapping
	public String activity() {
		return "appPage/activity";
	}
	
}
