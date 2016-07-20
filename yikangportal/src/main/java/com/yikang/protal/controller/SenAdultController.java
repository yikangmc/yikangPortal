package com.yikang.protal.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SenAdultController {
	
	@RequestMapping
	public String senAdult(){
		return "senAdult/myworld";
	}
	
}
