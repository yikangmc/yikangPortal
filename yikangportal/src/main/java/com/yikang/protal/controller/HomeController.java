package com.yikang.protal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yikang.base.response.ResponseMessage;
import com.yikang.common.utils.UniqueCodeGenerater;
import com.yikang.protal.entity.ForumPostTxtEditor;
import com.yikang.protal.service.HomeService;

@Controller
public class HomeController {

	@Autowired
	private HomeService homeService;

	@RequestMapping(value = "/")
	public String editorCode(HttpServletRequest req, ModelMap modelMap) {

		// 生成唯一标识
		String uniqueCode = UniqueCodeGenerater.gernerateForumPostEditorUUID();

		int rowCount = homeService.addFormedit(uniqueCode);

		if (rowCount == 1) {
			req.getSession().setAttribute("uniqueCode", uniqueCode);
		} else {
			return "redirct:/home/";
		}

		return "appPage/textEditorCode";
	}

	/**
	 * @author liushuaic
	 * @date 2016-07-21 15:32
	 * @desc 获取重定向url
	 **/
	@RequestMapping
	@ResponseBody
	public ResponseMessage<String> getRedirctUrl(HttpServletRequest req) {
		
		ResponseMessage<String> resMap=new ResponseMessage<String>();
		HttpSession session = req.getSession();
		String uniqueCode = session.getAttribute("uniqueCode").toString();
		if (null != uniqueCode) {
			ResponseMessage<ForumPostTxtEditor> responseMessage = homeService.getForumPostTxtByUniqueCode(uniqueCode);
			if (null != responseMessage && responseMessage.getStatus().equals("000000")) {
				ForumPostTxtEditor fpte = responseMessage.getData();
				int editoryType = fpte.getEditorType();
				if (editoryType == 1) {
					resMap.setData("appPage/editorExpert");
				} else if (editoryType == 2) {
					resMap.setData("");
				} else if (editoryType == 3) {
					resMap.setData("appPage/editorAnswer");
				}else{
					resMap.setStatus("000001");
					resMap.setData("");
				}
			}
		}else{
			resMap.setStatus("home/");
		}

		return resMap;
	}

}
