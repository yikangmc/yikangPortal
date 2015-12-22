package com.yikang.base.cache;

import org.springframework.data.redis.core.RedisTemplate;



public class RedisExample{
	
	private RedisTemplate<String, String> template;
	
	//private ListOperations<String, String> listOps;
	
	
	public void save(String key,String value){
		template.opsForList().leftPush(key, value);
	}

	
	public String get(String key){
		return template.opsForList().leftPop(key);
	}
}
