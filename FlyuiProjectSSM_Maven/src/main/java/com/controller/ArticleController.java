package com.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.bean.Articletype;
import com.bean.Commentinfo;
import com.bean.PageLimitNum;
import com.bean.PageNumInfo;
import com.bean.Userinfo;
import com.service.ArticleService;
import com.service.CommentService;
import com.service.JedisClient;
import com.util.TimeUtil;
/*
 * ר���������ӵĿ�����
 */
@Controller
@RequestMapping("/article")
public class ArticleController {

	@Autowired
	ArticleService as;
	@Autowired
	CommentService cs;
	@Autowired
	JedisClient jedisClient;
	 // 前缀
    private final String REDIS_ITEM_PRE = "artid";
    // 默认生命周期
    private final Integer ITEM_CACHE_EXPIRE = 100;
	//����
	@RequestMapping(value="/info/{artid}",method= {RequestMethod.GET})
	//������ͨ��get��url����ƴ��ֵ����������ƴ�����ַ��������ǿ��Ϊ�����Զ�ת���ˣ����Ǳ���Ϊnull�������ֱ����Integer
	//����ƴ�ӵ�ʱ��û����ԭ��������artid=****��������Ҫ��@PathVariableע��
	public String goArticle(@PathVariable("artid") Integer artid,Model model) {
		
		
		String str=jedisClient.get(REDIS_ITEM_PRE+":"+artid);
		if(str!=null && !str.isEmpty()) {
			Map<String,Object> map=JSON.parseObject(str,new TypeReference<Map<String,Object>>(){});
			model.addAttribute("detail_map", map);
			return "/jsp/replypage";
		}
		
		Map<String,Object> map=as.getArticleById(artid);
		map.put("releasetime", TimeUtil.calculateTime((Date)map.get("releasetime")));
		model.addAttribute("detail_map", map);
	    
		if(map!=null) {
			//存入redis
			jedisClient.set(REDIS_ITEM_PRE+":"+artid, JSON.toJSONString(map));
			//设置过期时间
			jedisClient.expire(REDIS_ITEM_PRE+":"+artid, ITEM_CACHE_EXPIRE);
		}
		List<Map<String,Object>> list=cs.getCommentById(artid);
		for(Map<String,Object> listmap:list) {
			listmap.put("remarktime", TimeUtil.calculateTime((Date)listmap.get("remarktime")));
		}
		model.addAttribute("remarkinfo", list);
		if(list!=null) {
			//存入redis
			jedisClient.set(REDIS_ITEM_PRE+":"+artid, JSON.toJSONString(list));
			//设置过期时间
			jedisClient.expire(REDIS_ITEM_PRE+":"+artid, ITEM_CACHE_EXPIRE);
		}
		
		 List<Map<String,Object>> weeklist=cs.getThisWeekComment();
		 model.addAttribute("thisweek", weeklist);
		 if(weeklist!=null) {
				//存入redis
				jedisClient.set(REDIS_ITEM_PRE+":"+artid, JSON.toJSONString(weeklist));
				//设置过期时间
				jedisClient.expire(REDIS_ITEM_PRE+":"+artid, ITEM_CACHE_EXPIRE);
			}
		
		return "/jsp/replypage";
	}
	
	@RequestMapping(value="/reply",method= {RequestMethod.POST})
	public void goArticle(Commentinfo comminfo,HttpServletRequest request,HttpServletResponse response) throws IOException {
		//�ظ����ӣ��ж��Ƿ��¼״̬
		Userinfo user =(Userinfo)request.getSession().getAttribute("userinfo");
		if(user==null) {
			response.sendRedirect(request.getContextPath()+"/jsp/loginpage.jsp");
		}
		int num=cs.addNewReply(comminfo);
		response.getWriter().println(num);
	}
	
	@RequestMapping("/type")
	public void loadArticleType(HttpServletResponse response) throws IOException {
		
		List<Articletype> list=as.getArticleType();
		response.getWriter().println(JSON.toJSONString(list));
	}
	
	@RequestMapping("/partpage")
    public void loadPartpage(Integer pageSize,Integer pageIndex,HttpServletResponse response) throws IOException {
		PageLimitNum pagelimtnum=new PageLimitNum();
		pagelimtnum.setPageSize(pageSize);
		pagelimtnum.setPageindex(pageIndex*pageSize);
		
		//��ȡ��ҳ��Ϣ
		List<Map<String,Object>> list=as.getAllArticle(pagelimtnum);
		//����ʱ���ʽ
		for(Map<String,Object> map:list) {
					String s=TimeUtil.calculateTime((Date)map.get("releasetime")); 
					map.put("releasetime",s);
				}
		//��ȡ��������
		int num=as.getArticleTotal();
		PageNumInfo pageNuminfo=new PageNumInfo();
		pageNuminfo.setList(list);
		pageNuminfo.setTotal(num);
		response.getWriter().println(JSON.toJSONString(pageNuminfo));
	}
}
