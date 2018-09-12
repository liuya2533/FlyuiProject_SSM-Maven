package com.mapper;

import java.util.List;
import java.util.Map;

import com.bean.Userinfo;

public interface UserInfoMapper {
	//������������service��ķ���һ��
	   int checkEmail(String email);
	   //ע��һ���û�
	   int addUserInfo(Userinfo userinfo);
	   //��֤�û���¼
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
