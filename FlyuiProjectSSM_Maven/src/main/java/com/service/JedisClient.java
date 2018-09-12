package com.service;

import java.util.List;

public interface JedisClient {

	public String set(String key,String value);
	public String get(String key);
	public Boolean exists(String key);
	public Long expire(String key,int second);
	public Long ttl(String key);
	public Long incr(String key);
	Long hset(String key,String field,String value);
	String hget(String key,String value);
	Long hdel(String key,String value);
	Boolean hexists(String key,String field);
	List<String > hvals(String field);
	Long del(String key);
}
