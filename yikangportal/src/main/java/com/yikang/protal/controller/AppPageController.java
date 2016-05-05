package com.yikang.protal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yikang.protal.entity.User;

@Controller
public class AppPageController {
	
	@RequestMapping
	public String operation(){
		return "appPage/operationProtocol";
	}
	
}
