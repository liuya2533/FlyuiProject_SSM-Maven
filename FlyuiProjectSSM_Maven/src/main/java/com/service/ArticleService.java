package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.bean.Articleinfo;
import com.bean.Articletype;
import com.bean.PageLimitNum;
import com.bean.Userinfo;

public interface ArticleService {
	//获取发帖页面的帖子类型
	List<Articletype> getArticleType();
	//添加文章
	int addNewArticle(Articleinfo articleinfo,Userinfo userinfo);
	//查询普通帖子信息
	List<Map<String,Object>> getCommentAticle();
	//查询加精贴
	List<Map<String,Object>> getGoodAticle();
	//
	List<Map<String,Object>> getAllArticle(PageLimitNum pagelimitnum);
	//获取帖子总数
	int getArticleTotal();
	//查看帖子
	Map<String,Object> getArticleById(int id);
	//更新帖子回复数
	int updateArticleRemarkNum(int artid);
	//查询个人所有提问的帖子
	List<Map<String,Object>> getMyArticleById(int userid);
	//查询个人最近回答的帖子
	List<Map<String,Object>> getMyremarkArticleById(int userid);
}
