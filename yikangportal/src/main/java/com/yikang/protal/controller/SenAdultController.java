package com.yikang.protal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SenAdultController {
	
	@RequestMapping
	public String senAdult(){
		return "senAdult/myworld";
	}
	
}
