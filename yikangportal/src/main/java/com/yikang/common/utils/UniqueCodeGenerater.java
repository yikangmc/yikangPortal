package com.yikang.common.utils;

import java.util.UUID;

public class UniqueCodeGenerater {

	private final static String SUFFIXFORUMPOSTEIDTORSTR="editor";
	
	
	/**
	 * @author liushuaic
	 * @date 2016-07-21 15:09
	 * @desc 获取一个uuid 剔除 中划线
	 * **/
	public static String gernerateForumPostEditorUUID(){
		return UUID.randomUUID().toString().replaceAll("-","")+SUFFIXFORUMPOSTEIDTORSTR;
	}
	
}
