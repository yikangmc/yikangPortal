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
import com.yikang.protal.entity.User;
import com.yikang.protal.service.HomeService;
import com.yikang.protal.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private HomeService homeService;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/")
	public String editorCode(HttpServletRequest req, ModelMap modelMap) {

		// 生成唯一标识
		String uniqueCode = UniqueCodeGenerater.gernerateForumPostEditorUUID();

		int rowCount = homeService.addFormedit(uniqueCode);

		if (rowCount == 1) {
			req.getSession().setAttribute("uniqueCode", uniqueCode);
		} else {
			return "redirect:/home/";
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

		ResponseMessage<String> resMap = new ResponseMessage<String>();
		HttpSession session = req.getSession();
		if (null != session.getAttribute("uniqueCode")) {
			String uniqueCode = session.getAttribute("uniqueCode").toString();
			if (null != uniqueCode) {
				ResponseMessage<ForumPostTxtEditor> responseMessage = homeService
						.getForumPostTxtByUniqueCode(uniqueCode);
				if (null != responseMessage && responseMessage.getStatus().equals("000000")) {
					ForumPostTxtEditor fpte = responseMessage.getData();
					int editoryType = fpte.getEditorType();
					Long userId = fpte.getOwnUserId();
					Long dataId=fpte.getDataId();
					if(null != dataId && (!dataId.equals(-2l))){
						User user = userService.getUserByUserId(userId);
						req.getSession().setAttribute("user", user);
						if (editoryType == 1) {
							resMap.setData("appPage/editorExpert");
							session.setAttribute("forumPostId", dataId);
						} else if (editoryType == 2) {
							resMap.setData("");
						} else if (editoryType == 3) {
							session.setAttribute("questionId",dataId);
							resMap.setData("appPage/editorAnswer");
						} else {
							resMap.setStatus("000001");
							resMap.setData("");
						}
					}else{
						//等待
						resMap.setStatus("000001");
					}
				} else {
					resMap.setStatus("999999");
				}
			} else {
				resMap.setStatus("999999");
			}
		} else {
			resMap.setStatus("999999");
		}

		return resMap;
	}

}
