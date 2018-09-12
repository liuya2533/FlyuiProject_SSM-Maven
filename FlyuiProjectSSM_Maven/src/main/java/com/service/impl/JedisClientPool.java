package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.service.JedisClient;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class JedisClientPool implements JedisClient{

	JedisPool jedisPool;
	
	public JedisPool getJedisPool() {
		Jedis jedis=jedisPool.getResource();
        return jedisPool;
    }
    // 设置连接池
    public void setJedisPool(JedisPool jedisPool) {
    	Jedis jedis=jedisPool.getResource();
        this.jedisPool = jedisPool;
    }

	@Override
	public String set(String key, String value) {
		Jedis jedis=jedisPool.getResource();
		String result=jedis.set(key, value);
		jedis.close();
		return result;
	}

	@Override
	public String get(String key) {
		// TODO Auto-generated method stub
		Jedis jedis=jedisPool.getResource();
		String value=jedis.get(key);
		jedis.close();
		return value;
	}

	//查看key是否存在
	@Override
	public Boolean exists(String key) {
		// TODO Auto-gnerated method stub
		Jedis jedis=jedisPool.getResource();
		Boolean result=jedis.exists(key);
		jedis.close();
		return result;
	}

	//设置key的生命时间
	@Override
	public Long expire(String key, int seconds) {
		// TODO Auto-generated method stub
		Jedis jedis=jedisPool.getResource();
	   Long result=jedis.expire(key, seconds);
	   jedis.close();
		return result;
	}

	//查看key的剩余时间
	@Override
	public Long ttl(String key) {
		Jedis jedis=jedisPool.getResource();
		Long result=jedis.ttl(key);
		   jedis.close();
			return result;
	}

	/*
	 * 增1:incr key
                     减1:decr key
                   注意， 虽然redis存储形式都是字符串，但是自增减的时候要求value必须能解析成数值类型，比如你的value是”1ad”那就不行。
                      示例：先添加键值对 str1 3,再自增就成了4
	 */
	@Override
	public Long incr(String key) {
		Jedis jedis=jedisPool.getResource();
		Long result=jedis.incr(key);
		   jedis.close();
			return result;
	}

	@Override
	public Long hset(String key, String field, String value) {
		Jedis jedis=jedisPool.getResource();
		Long result=jedis.hset(key,field,value);
		   jedis.close();
			return result;
	}

	@Override
	public String hget(String key, String value) {
		Jedis jedis=jedisPool.getResource();
		// TODO Auto-generated method stub
		String result=jedis.hget(key,value);
		   jedis.close();
			return result;
	}

	@Override
	public Long hdel(String key, String value) {
		Jedis jedis=jedisPool.getResource();
		Long result=jedis.hdel(key,value);
		   jedis.close();
			return result;
	}

	@Override
	public Boolean hexists(String key, String field) {
		Jedis jedis=jedisPool.getResource();
		Boolean result=jedis.hexists(key,field);
		   jedis.close();
			return result;
	}

	@Override
	public List<String> hvals(String field) {
		Jedis jedis=jedisPool.getResource();
		List<String> result=jedis.hvals(field);
		   jedis.close();
			return result;
	}
	@Override
	public Long del(String key) {
		Jedis jedis=jedisPool.getResource();
		Long result=jedis.del(key);
		   jedis.close();
			return result;
	}
}
