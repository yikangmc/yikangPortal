package com.yikang.protal.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.yikang.protal.dao.DictionaryDao;
import com.yikang.protal.entity.Dictionary;

@Component
public class DictionaryManager {
	
	@Autowired
	private DictionaryDao dictionaryDao;
	
	
    /**
     * @author liushuaic
     * @date 2015/11/06 16:50
     * @desc 获取年龄段
     * **/
	public List<Dictionary> getAgeBracket(){
		return dictionaryDao.getAgeBracket();
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2015/11/06 16:50
	 * @desc 获取称谓
	 ***/
	public List<Dictionary> getAppellation(){
		return null;
	}
	

}
