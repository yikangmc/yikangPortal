package com.yikang.protal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yikang.protal.entity.User;
import com.yikang.protal.manager.UserManager;

@Controller
public class InviteController {

	@Autowired
	private UserManager userManage;
	
	@RequestMapping
	public String inviteRegister(ModelMap modelMap,String inviteCode){
		User userData = userManage.getUserByInvitationCode(inviteCode);
		modelMap.put("inviteCode" ,inviteCode);
		modelMap.put("user" ,userData);
		return "invite/servePrecept";
	}
	@RequestMapping
	public String knowhulingjia(){
		return "invite/knowhulingjia";
	}
	@RequestMapping
	public String serveOnnew(ModelMap modelMap,String inviteCode){
		User userData = userManage.getUserByInvitationCode(inviteCode);
		modelMap.put("inviteCode", inviteCode);
		modelMap.put("user", userData);
		return "invite/serveOnnew";
	}
}

