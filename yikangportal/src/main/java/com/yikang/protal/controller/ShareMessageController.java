package com.yikang.protal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author liushuaic
 * @date 2016/1/14 17:44
 * @desc 信息分享
 * */

@Controller
public class ShareMessageController {
	
	
	
	/**
	 * @author liushuaic
	 * @date 2016/1/14 17:46
	 * @desc 瘦腿分享
	 * **/
	@RequestMapping
	public String shouTui(){
		
		
		
		return "shareMessage/shouTui";
	}

}
