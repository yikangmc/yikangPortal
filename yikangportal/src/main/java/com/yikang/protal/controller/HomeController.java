package com.yikang.protal.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.fabric.Response;
import com.yikang.protal.service.AppPageService;

@Controller
public class HomeController {

	@RequestMapping(value="/")
	public String editorCode(){
		return "appPage/textEditorCode";
	}
	
}
