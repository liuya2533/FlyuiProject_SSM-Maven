package com.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Articleinfo;
import com.bean.Articletype;
import com.bean.Commentinfo;
import com.bean.PageLimitNum;
import com.bean.Userinfo;
import com.mapper.CommentMapper;
import com.service.ArticleService;
import com.service.CommentService;
import com.util.SqlSessionFactoryUtil;
@Service
public class CommentServiceImpl  implements CommentService {

	@Autowired
	CommentMapper cm;
	@Autowired
	ArticleService as;
	@Override
	@Transactional
	public int addNewReply(Commentinfo commentinfo) {
		int num=cm.addNewReply(commentinfo);
		//同时更新帖子回复数
		as.updateArticleRemarkNum(commentinfo.getArtorcommid());
		return num;
	}
	@Override
	public List<Map<String, Object>> getCommentById(int id) {
		// TODO Auto-generated method stub
		return cm.getCommentById(id);
	}
	@Override
	public List<Map<String, Object>> getThisWeekComment() {
		// TODO Auto-generated method stub
		return cm.getThisWeekComment();
	}
	
}
