package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.bean.Userinfo;

public interface UserInfoService {
	//�������
	   int checkEmail(String email);
	   //ע��һ���û�
	   int addUserInfo(Userinfo userinfo);
	   //��֤�û����
	   Userinfo checkUserLogin(Userinfo userinfo);
	   //�����û����ĵķ�����
	   int updateKissNum(Userinfo userinfo);
	   //��ȡ�����ܰ�
	   List<Map<String,Object>> getUserReplyNum();
	   //����һ���û�
	   int ActiveUserinfo(String emailcode);
	   //ɾ��һ��δ������û�
	   int DeleteOneUser(String emailcode);
	   //�޸�����
	   int modifyPassword(Userinfo userinfo);
	   //�޸ĸ�����Ϣ
	   int updateUserinfo(Userinfo userinfo);
	   //ͨ��id����û���Ϣ
	   Userinfo getUserinfoById(int id);
	   //ǩ��
	   int updateSignIn(Userinfo userinfo);
}
