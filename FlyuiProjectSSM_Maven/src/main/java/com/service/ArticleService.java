package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.bean.Articleinfo;
import com.bean.Articletype;
import com.bean.PageLimitNum;
import com.bean.Userinfo;

public interface ArticleService {
	//��ȡ����ҳ�����������
	List<Articletype> getArticleType();
	//�������
	int addNewArticle(Articleinfo articleinfo,Userinfo userinfo);
	//��ѯ��ͨ������Ϣ
	List<Map<String,Object>> getCommentAticle();
	//��ѯ�Ӿ���
	List<Map<String,Object>> getGoodAticle();
	//
	List<Map<String,Object>> getAllArticle(PageLimitNum pagelimitnum);
	//��ȡ��������
	int getArticleTotal();
	//�鿴����
	Map<String,Object> getArticleById(int id);
	//�������ӻظ���
	int updateArticleRemarkNum(int artid);
	//��ѯ�����������ʵ�����
	List<Map<String,Object>> getMyArticleById(int userid);
	//��ѯ��������ش������
	List<Map<String,Object>> getMyremarkArticleById(int userid);
}
