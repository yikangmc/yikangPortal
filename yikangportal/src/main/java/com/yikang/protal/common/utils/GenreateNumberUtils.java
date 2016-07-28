package com.yikang.protal.common.utils;

import java.util.UUID;

import org.springframework.stereotype.Repository;



/**
 * @author liushuaic
 * @date 2015/07/31 19:46
 * @desc 生成编号
 * */
@Repository
public class GenreateNumberUtils {
	
	
	
	/**
	 * @author liushuaic
	 * @date 2016-06-20 19:32
	 * @desc 生成唯一的认证标识
	 * */
	public static String getForumPostEditorUniqueCode(){
		return UUID.randomUUID().toString().replace("-", "");
	}
	
	
}
