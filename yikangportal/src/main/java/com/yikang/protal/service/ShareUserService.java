package com.yikang.protal.service;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.yikang.base.utils.AliasFactory;
import com.yikang.base.utils.InvitationCodeGnerateUtil;
import com.yikang.protal.entity.User;
import com.yikang.protal.entity.UserFrom;
import com.yikang.protal.manager.UserFromManager;
import com.yikang.protal.manager.UserManager;


@Component
public class ShareUserService {
	
	private final static Logger logger=Logger.getLogger(ShareUserService.class);

	@Autowired
	private UserManager userManager;
	
	@Autowired
	private UserFromManager userFromManager;
	
	
	
	/**
	 * @author liushuaic
	 * @date 2015/09/01 14:32
	 * **/
	public boolean saveShareUser(String mobileNumber,String userFromStr,HttpServletRequest request){
		
		User user0=userManager.getUserByLoginName(mobileNumber);
		
		if(null == user0){
			Long curentDateTime=Calendar.getInstance().getTimeInMillis();
			
			User user=new User();
			user.setLoginName(mobileNumber);
			user.setCreateTime(curentDateTime);
			user.setUserName(mobileNumber);
			user.setSalt("000000");
			user.setLoginPassword("99999999");
			user.setAccessTiket("999999999");
			user.setLoginTime(curentDateTime);
			
			int userCount=userManager.insertUserSelective(user);
			
			String requestURL=request.getRequestURL().toString();
			
			
			UserFrom userFrom=new UserFrom();
			userFrom.setFromUrl(requestURL);
			userFrom.setActiveTime(0l);
			userFrom.setUserId(user.getUserId());
			userFrom.setNumbers(0l);
			userFrom.setCreateTime(curentDateTime);
			userFrom.setUpdateTime(curentDateTime);
			userFrom.setUserFrom(userFromStr==null?"-1":userFromStr);
			
			int userFromCount=userFromManager.insertSelective(userFrom);
			
			if(userCount>0 && userFromCount>0 ){
				return true;
			}else{
				logger.error("数据保存过程中， 返回结果数据为0 。手机号码为:"+mobileNumber+" 数据来源为："+userFromStr);
			}
		}
		
		
		return false;
		
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2015/09/01 14:32
	 * **/
	public synchronized boolean saveShareUser(String mobileNumber,String userFromStr,HttpServletRequest request,String invitationCode){
		
		User user0=userManager.getUserByLoginName(mobileNumber);
		
		if(null == user0){
			Long curentDateTime=Calendar.getInstance().getTimeInMillis();
			
			User user=new User();
			user.setLoginName(mobileNumber);
			user.setCreateTime(curentDateTime);
			user.setUserName(mobileNumber);
			user.setSalt("000000");
			user.setLoginPassword("99999999");
			user.setAccessTiket("999999999");
			user.setLoginTime(curentDateTime);
			user.setInvitationCode("");
			user.setPushAlias("");
			
			int userCount=userManager.insertUserSelective(user);
			
			user.setUserName(null);
			user.setLoginName(null);
			user.setLoginPassword(null);
			user.setCreateTime(null);
			user.setSalt(null);
			user.setLoginTime(null);
			user.setPushAlias(AliasFactory.generateAliasByUser(user.getUserId().toString()));
			userManager.updateUser(user);  //修改用户推送
			
			String requestURL=request.getRequestURL().toString();
			//修改用户邀请码
			userManager.updateInvitationCodeByUserId(InvitationCodeGnerateUtil.generateInvitationCodeTwo(user), user.getUserId());
			
			
			UserFrom userFrom=new UserFrom();
			userFrom.setFromUrl(requestURL);
			userFrom.setActiveTime(0l);
			userFrom.setUserId(user.getUserId());
			userFrom.setNumbers(0l);
			userFrom.setCreateTime(curentDateTime);
			userFrom.setUpdateTime(curentDateTime);
			userFrom.setUserFrom(userFromStr==null?"-1":userFromStr);
			//设置邀请码
			userFrom.setInvitationCode(invitationCode == null ?"-2":invitationCode);
			
			userFrom.setUserStatus(Byte.valueOf("0"));
			int userFromCount=userFromManager.insertSelective(userFrom);
			
			if(userCount>0 && userFromCount>0 ){
				return true;
			}else{
				logger.error("数据保存过程中， 返回结果数据为0 。手机号码为:"+mobileNumber+" 数据来源为："+userFromStr);
			}
		}
		
		
		return false;
		
	}
	
	
}
