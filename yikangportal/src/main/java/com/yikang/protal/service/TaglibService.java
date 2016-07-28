package com.yikang.protal.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yikang.protal.entity.Taglib;
import com.yikang.protal.manager.TaglibManager;

@Service
public class TaglibService {
	
	
	@Autowired
	private TaglibManager taglibManager;
	
	
	private final static Logger logger=Logger.getLogger(ShareUserService.class);
	
	
	
	
	/**
	 * @author liushuaic
	 * @date 2016-07-27 16:58
	 * @desc 获取所有标签列表
	 * **/
	public List<Taglib> getTaglibs(){
		return taglibManager.getAllTag(null);
		 
	}

}
