package com.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.bean.PageLimitNum;
import com.bean.PageNumInfo;
import com.service.ArticleService;
import com.service.CommentService;
import com.service.UserInfoService;
import com.util.TimeUtil;
/*
 * ��������Ϊ�˰�ȫ����������е�jsp���ŵ�WEB-INF�£�ֱ��ͨ������ҳƴ��ַ���ܷ������ǵ�jsp
 * ���Ա���Ҫ����ת�����ܽ���jsp��
 * ���Դ˿�����ר����ת��ҳ��
 */
@Controller
@RequestMapping("/page")
public class PageController {
	@Autowired
	 UserInfoService us;
	@Autowired
	 ArticleService as;
	@Autowired
	 CommentService cm;
	 
	//��תע��ҳ��
	@RequestMapping("/reg")
	public String goReg() {
		return "jsp/regpage";
	}
	@RequestMapping("/login")
	public String goLogin() {
		return "jsp/loginpage";
	}
	//������ҳ��
	@RequestMapping("/gorelease")
	public String goReleaseArticle() {
		return "jsp/releasepage";
	}
	//����ҳ���
	@RequestMapping("/partpage")
	public String goPartpage() {
		return "jsp/pagepart";
	}
	//��������
	@RequestMapping("/setpage")
	public String goSetpage() {
		return "jsp/setpage";
	}
	
	//������ҳ
	@RequestMapping("/index")
	//@RequestMapping("/index")
	public ModelAndView goIndex() {
		
		 //�����bug
		 ModelAndView mav=new ModelAndView();
		 List<Map<String,Object>> commentlist=null;
		 commentlist=as.getCommentAticle();
		 //��ʽʱ��
		 for(Map<String,Object> map:commentlist) {
			 String s=TimeUtil.calculateTime((Date)map.get("releasetime")); 
			 map.put("releasetime",s);
		 }
		 List<Map<String,Object>> goodlist=as.getGoodAticle();
		//��ʽʱ�� 
		 for(Map<String,Object> map:goodlist) {
			 String s=TimeUtil.calculateTime((Date)map.get("releasetime")); 
				map.put("releasetime",s);
		 }
		 List<Map<String,Object>> userlist=us.getUserReplyNum();
		 //������ͨ����
		 mav.addObject("commentlist", commentlist);
		 //�����ö�����
		 mav.addObject("goodlist", goodlist);
		 //���ػ����ܰ�
		 mav.addObject("userlist", userlist);
		 //���ر�������
		 
		 List<Map<String,Object>> weeklist=cm.getThisWeekComment();
		 mav.addObject("thisweek",weeklist);
		 mav.setViewName("jsp/loginsuccess");
		 return mav;
	}
}
