package com.yikang.protal.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yikang.protal.entity.SenAdult;
import com.yikang.protal.service.SendAdultService;

@Controller
public class SenAdultController {
	
	@Autowired
	private SendAdultService sendAdultService;
	
	@RequestMapping
	public String senAdult(ModelMap modelMap,SenAdult senAdult,HttpServletRequest req){
		//String sBuffer = req.getRequestURL().toString().split("#")[0];
		Map<String, Object> senAdultRst = sendAdultService.getConfig(req);
		senAdult.setNonceStr(senAdultRst.get("nonceStr").toString());
		senAdult.setSignature(senAdultRst.get("signature").toString());
		senAdult.setTimestamp(senAdultRst.get("timestamp").toString());
		modelMap.put("senAdult", senAdult);
		return "senAdult/myworld";
	}
	
}
