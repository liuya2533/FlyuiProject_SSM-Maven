package com.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Articleinfo;
import com.bean.Articletype;
import com.bean.PageLimitNum;
import com.bean.Userinfo;
import com.mapper.ArticleMapper;
import com.service.ArticleService;
import com.service.UserInfoService;
import com.util.SqlSessionFactoryUtil;
@Service
public class ArticleServiceImpl implements ArticleService {
	@Autowired
	ArticleMapper am;
	@Autowired
	UserInfoService us;
	@Override
	public List<Articletype> getArticleType() {
		// TODO Auto-generated method stub
		return am.getArticleType();
	}
	@Override
	//这里有两个提交操作，为了保持事务的原子性，对事务进行控制
	@Transactional
	public int addNewArticle(Articleinfo articleinfo,Userinfo userinfo) {
		
		us.updateKissNum(userinfo);
		int num=am.addNewArticle(articleinfo);
		return num;
	}
	@Override
	public List<Map<String, Object>> getCommentAticle() {
		System.out.println("=============================");
		return am.getCommentAticle();
	}
	@Override
	public List<Map<String, Object>> getGoodAticle() {
		// TODO Auto-generated method stub
		return am.getGoodAticle();
	}
	@Override
	public List<Map<String, Object>> getAllArticle(PageLimitNum pagelimitnum) {
		
		return am.getAllArticle(pagelimitnum);
	}
	@Override
	public int getArticleTotal() {
		// TODO Auto-generated method stub
		return am.getArticleTotal();
	}
	//看帖
	@Override
	@Transactional
	public Map<String, Object> getArticleById(int id) {
		//同时更新帖子的浏览量
		am.updateArticleVisitNum(id);

		return am.getArticleById(id);
	}
	@Override
	public int updateArticleRemarkNum(int artid) {
		// TODO Auto-generated method stub
		int num=am.updateArticleRemarkNum(artid);
		return num;
	}
	@Override
	public List<Map<String,Object>> getMyArticleById(int userid) {
		
		return am.getMyArticleById(userid);
	}
	@Override
	public List<Map<String, Object>> getMyremarkArticleById(int userid) {
		// TODO Auto-generated method stub
		return am.getMyremarkArticleById(userid);
	}
	

	

}
