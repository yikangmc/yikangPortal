package com.yikang.protal.dao;

import java.util.List;

import com.yikang.protal.entity.Dictionary;

public interface DictionaryDao {
    int deleteByPrimaryKey(Long dictionaryId);

    int insert(Dictionary record);

    int insertSelective(Dictionary record);

    Dictionary selectByPrimaryKey(Long dictionaryId);

    int updateByPrimaryKeySelective(Dictionary record);

    int updateByPrimaryKey(Dictionary record);
    
    /**
     * @author liushuaic
     * @date 2015/11/06 16:50
     * @desc 获取年龄段
     * 
     * **/
    List<Dictionary> getAgeBracket();
    
}