package com.yikang.protal.service;

import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.yikang.base.SendRequest;
import com.yikang.base.response.ResponseMessage;
import com.yikang.protal.entity.User;
import com.yikang.protal.manager.UserManager;


/**
 * 
 * @author liushuaic
 * @date 2015/01/09 15:08
 * 
 * 
 * **/

@Component
public class UserService {
	
	@Autowired
	private UserManager userManager;
	
	public boolean validateMoblieNumber(String mobileNumber){
		User user=userManager.getUserByLoginName(mobileNumber);
		if(null == user){
			return true;
		}else{
			return false;
		}
	}
	
	public List<Map<String,Object>> getUserLinkUserStatus(){
		return userManager.getUserLinkUserStatus();
	}
	
	/**
	 *修改用户的联系状态
	 * */
	public int updateUserLinkStatus(Long userId){
		return userManager.updateUserLinkStatus(userId);
	}

	
	/**
	 * 
	 * @param userInvite
	 * @return User
	 * @date 2015/12/8 19:50
	 * @desc 获取用户信息
	 */
	public User getUserByInvitationCode(String userInvite) {
		return userManager.getUserByInvitationCode(userInvite);
	}
	
	/**
     * @author liushuaic
     * @date 2015/12/22 10:17
     * @desc 登陆
     * @param loginName 登陆名
     * @param loginPassword 密码
     * **/
    public User loginUserByLoginNameAndLoginPassword(String loginName,String loginPassword){
    	return userManager.loginUserByLoginNameAndLoginPassword(loginName,loginPassword);
    }
    
    
    
    /**
     * @author liushuaic
     * @date 2015/12/31 10:56
     * @desc 注册用户
     * **/
    public ResponseMessage registerUser(String loginName,String loginPassword){
    	
    	Map<String,Object> paramData=new HashMap<String,Object>();
    	paramData.put("loginName", loginName);
    	paramData.put("loginPassword", loginPassword);
		try {
			return SendRequest.sendPostRetureResponseMessage("00-17-08", paramData, Map.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
    	
    }
    
    
 
}
