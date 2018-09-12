package com.service.impl;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Userinfo;
import com.mapper.UserInfoMapper;
import com.service.UserInfoService;
import com.util.SqlSessionFactoryUtil;
@Service
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	UserInfoMapper um;
	@Override
	public int checkEmail(String email) {
		
			int num=um.checkEmail(email);
			return num;
	}
	@Override
	public int addUserInfo(Userinfo userinfo) {
		int num=um.addUserInfo(userinfo);
		//记得增删改要提交事务
		return num;
	}
	@Override
	public Userinfo checkUserLogin(Userinfo userinfo) {
		
		return um.checkUserLogin(userinfo);
	}
	@Override
	public int updateKissNum(Userinfo userinfo) {
		int num=um.updateKissNum(userinfo);
		return num;
	}
	@Override
	public List<Map<String,Object>> getUserReplyNum() {
		
		return um.getUserReplyNum();
	}
	@Override
	public int ActiveUserinfo(String emailcode) {
		int n=um.ActiveUserinfo(emailcode);
		return n; 
	}
	@Override
	public int DeleteOneUser(String emailcode) {
		
		int n=um.DeleteOneUser(emailcode);
		
		return n;
	}
	@Override
	public int modifyPassword(Userinfo userinfo) {
		int num=um.modifyPassword(userinfo);
		
		return num;
	}
	@Override
	public int updateUserinfo(Userinfo userinfo) {
		int num=um.updateUserinfo(userinfo);
		
		return num;
	}
	@Override
	public Userinfo getUserinfoById(int id) {
		
		return um.getUserinfoById(id);
	}
	@Override
	public int updateSignIn(Userinfo userinfo) {
		int num=um.updateSignIn(userinfo);
		return num;
	}

}
