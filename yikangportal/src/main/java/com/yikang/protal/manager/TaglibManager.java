package com.yikang.protal.manager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.yikang.protal.dao.TaglibDao;
import com.yikang.protal.entity.Taglib;

@Component
public class TaglibManager {

	@Autowired
	private TaglibDao taglibDao;
	
	
	/**
	 * @author liushuaic
	 * @date 2015-04-26 14:22
	 * @desc 获取标签列表
	 * **/
	public List<Taglib> getTaglibs(String tagName){
		return taglibDao.getTaglibs(tagName);
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2016-05-11 16:49
	 * @desc 获取推荐的二级标签
	 * */
	public List<Taglib>  getRecommendTaglib(Long userId){
		Map<String,Object> paramMap=new HashMap<String,Object>();
		paramMap.put("userId", userId);
		return taglibDao.getRecommendTaglib(paramMap);
	}
	
	/**
	 * @author liushuaic
	 * @date 2016-05-12 10:20
	 * @desc 获取一极列表标签
	 * **/
	public  List<Taglib> getFristTaglib(){
		return taglibDao.getFristTaglib();
	}
	
	
	/**
	 * @author liushuaic
	 * @date 2016-05-12 10:31
	 * @desc 查询出所有的二级标签 根据  parentId
	 * **/
	public  List<Taglib> getSecondTaglibByParentId(Long parentId,Long userId){
		Map<String,Object> paramMap=new HashMap<String,Object>();
		paramMap.put("parentId", parentId);
		paramMap.put("userId", userId);
		return taglibDao.getSecondTaglibByParentId(paramMap);
	}
	
	
	 /**
     * @author liushuaic
     * @date 2016-05-19 16:03
     * @desc 获取所有的标签
     * */
	public List<Taglib> getAllTag(Long userId){
		Map<String,Object> paramMap=new HashMap<String,Object>();
		paramMap.put("userId", userId);
    	return taglibDao.getAllTag(paramMap);
    }
	
	
	 /**
     * @author liushuaic
     * @date 2016-06-01 09:27
     * @desc  获取我关注的标签
     * */
    public List<Taglib> getMyWatchTaglibsByUserid(Long userId){
    	return taglibDao.getMyWatchTaglibsByUserid(userId);
    }
    
    /**
     * @author liushuaic
     * @date 2016-06-01 14:07
     * @desc 获取所有的二级标签
     * **/
    public  List<Taglib> getSecondAllTaglib(){
    	return taglibDao.getSecondAllTaglib();
    }
	
    /**
     * @author liushuaic
     * @date 2016-06-16 19:35
     * @desc 查询某个文章的所有标签
     * **/
    public List<Taglib> getTaglibsByForumPostId(Long fourmPostId){
    	return taglibDao.getTaglibsByFormPostId(fourmPostId);
    }
    
}
