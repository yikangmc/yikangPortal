package com.yikang.protal.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yikang.protal.service.AppPageService;

@Controller
public class AppPageController {

	@Autowired
	private AppPageService service;

	/**
	 * 免责声明
	 * 
	 * @return
	 */
	@RequestMapping
	public String operation() {
		return "appPage/operationQualification";
	}

	/**
	 * 个人认证
	 * 
	 * @return
	 */
	@RequestMapping
	public String personal() {
		return "appPage/personalQualification";
	}

	/**
	 * 机构认证
	 * 
	 * @return
	 */
	@RequestMapping
	public String organization() {
		return "appPage/organizationQualification";
	}

	/**
	 * 标签页面
	 * 
	 * @return
	 */
	@RequestMapping
	public String lablePost(ModelMap response) {
		Map<String, Object> lpData = service.postList(1);
		//校验 999999系统错误		
		if (lpData.containsKey("status") && lpData.get("status").equals("000000")) {
			response.put("responsData", lpData.get("data"));
		}
		return "appPage/lablePost";
	}

	/**
	 * 活动页面
	 * 
	 * @return
	 */
	@RequestMapping(value="/appPage/activity/{activetyId}")
	public String activity(ModelMap response,@PathVariable(value="activetyId") Long activetyId) {
		if(null ==  activetyId){
			activetyId=1l;
		}
		Map<String, Object> alData = service.activetyList(activetyId);
		if (alData.containsKey("status") && alData.get("status").equals("000000")) {
			response.put("responsData", alData.get("data"));
		}
		return "appPage/activity";
	}

	/**
	 * 专业回答
	 * 
	 * @return
	 */
	@RequestMapping
	public String majorsAnswer() {
		return "appPage/majorsAnswer";
	}

	/**
	 * 问答问题页
	 * 
	 * @param response
	 * @return
	 */
	@RequestMapping
	public String userAnswer(ModelMap response) {
		Map<String, Object> audData = service.answerUserData(1);
		if (audData.containsKey("status") && audData.get("status").equals("000000")) {
			response.put("responseData", audData.get("data"));
		}
		return "appPage/userAnswer";
	}
	
	/**
	 * 回答详情页
	 * 
	 * @return
	 */
	@RequestMapping
	public String detailsAnswer() {
		return "appPage/detailsAnswer";
	}
	
	/***
	 * 编辑器Code
	 * @return
	 */
	@RequestMapping
	public String editorCode() {
		
		return "appPage/textEditorCode";
	}
	
	/**
	 * 文本编辑器部分
	 * 
	 * @return null
	 */
	@RequestMapping
	public String textEditor() {
		
		return "appPage/textEditor";
	}
	
	@RequestMapping
	public String textEditorExpert() {
		
		return "appPage/textEditorExpert";
	}
	
	
	@RequestMapping
	public String invitation() {
		
		return "appPage/invitation";
	}
	
}
