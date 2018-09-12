package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Articleinfo;
import com.bean.Userinfo;
import com.service.ArticleService;
import com.service.UserInfoService;
import com.util.MD5;
import com.util.MailUtil;
import com.util.TimeUtil;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserInfoService us;
	@Autowired
	ArticleService as;
	
	@RequestMapping("/checkemil")
	public void checkEmail(String email,HttpServletResponse response) throws IOException {
		//ͨ��ajax���������
		int num=us.checkEmail(email);
		response.getWriter().println(num);
	}
	
	@RequestMapping("/reg")
	public String userReg(Userinfo user) {
		
		
		String emailcode=String.valueOf(new Date().getTime());
	    try {
	        // date.getTime()+""为验证码
	        MailUtil.sendActiveMail(user.getEmail(), emailcode);
	        user.setActivecode(emailcode);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		//����
		user.setPassword(MD5.MD5(user.getPassword()));
		us.addUserInfo(user);
		return "redirect:/page/login";
	}
	
	//记得修改com.util.MailUtil.java下的activeUrl正确的路径
	@RequestMapping("/activeemail")
	public void activeEmail(String mailcode,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		long nowtime=new Date().getTime();
		long codetime=Long.valueOf(mailcode);
		long time=60*1000;
		Boolean msg=null;
		if((nowtime-codetime) > time) {
			us.DeleteOneUser(mailcode);
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("/jsp/emailpage.jsp").forward(request, response);
		}else {
			us.ActiveUserinfo(mailcode);
			msg=true;
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("/jsp/emailpage.jsp").forward(request, response);
		}
	}
	
	@RequestMapping(value="/login",method= {RequestMethod.POST})
	public String userLogin(Userinfo user,HttpSession session,Model model) {
		user.setPassword(MD5.MD5(user.getPassword()));
		user=us.checkUserLogin(user);
		if(user!=null) {
			//�����û��Ƿ�ǩ��
			Calendar now=Calendar.getInstance();
			now.setTime(new Date());
			now.set(now.HOUR, 0);
			now.set(now.MINUTE, 0);
			now.set(now.SECOND, 0);
			now.set(now.MILLISECOND, 0);
			Calendar date=Calendar.getInstance();
			date.setTime(user.getSignintime());
			if(now.before(date)) {
				user.setSignflg(1);
			}
			session.setAttribute("userinfo",user);
			return "redirect:/page/index";
		}else {
			session.setAttribute("msg", "��������˺Ŵ���");
			return "jsp/loginpage";
		}
	}
	//������Ϣ
	@RequestMapping("/userinfo/{userid}")
	public ModelAndView goUserInfo(@PathVariable("userid") Integer userid) {
		ModelAndView mav=new ModelAndView();
		//��ȡ�û���Ϣ
		Userinfo user=us.getUserinfoById(userid);
		//request.setAttribute("user", user);
		mav.addObject("user", user);
		//��ȡ�û��������ʵ�����
		List<Map<String,Object>> articlelist =as.getMyArticleById(userid);
		for(Map<String,Object> map:articlelist) {
			map.put("releasetime", TimeUtil.calculateTime((Date)map.get("releasetime")));
		}
		mav.addObject("myArticle", articlelist);
		//��ȡ�û����лش�
		List<Map<String,Object>> remarklist=as.getMyremarkArticleById(userid);
		for(Map<String,Object> map:remarklist) {
			map.put("remarktime", TimeUtil.calculateTime((Date)map.get("remarktime")));
		}
		mav.addObject("ramarklist", remarklist);
		//request.getRequestDispatcher("/jsp/myinfopage.jsp").forward(request, response);
		mav.setViewName("jsp/myinfopage");
		return mav;
	}
	//�û��������
	@RequestMapping("/addArticle")
	public String addArticle(Articleinfo article,HttpServletRequest request,HttpSession session) {
		//��õ�ǰ��¼����Ϣ
		Userinfo user =(Userinfo)session.getAttribute("userinfo");
		if(user==null) {
			return "redirect:/jsp/loginpage.jsp";
		}
		int userid=user.getId();
		article.setUserid(userid);
		//��Ⱦ��html����
		article.setTopic_markdown_html(request.getParameter("test-editormd-html-code"));
		//����û�ʣ��ķ�����
		user.setKissnum(user.getKissnum()-article.getPaykiss());
		//�����Ӻ��û�һ�𴫸�service��
		as.addNewArticle(article,user);
		return "redirect:/page/index";
	}
	//����û��Ƿ��ڵ�¼״̬
	@RequestMapping("/checkuser")
	public String checkLoginUser(HttpSession session) {
		Userinfo user =(Userinfo)session.getAttribute("userinfo");
		if(user!=null) {
			return "redirect:/page/gorelease";
		}else {
			return "redirect:/user/login";
		}
	}
	//�ϴ�ͷ�񣬿���ϴ��ļ��򵥶���
	@RequestMapping("/loadup")
	public void loadupPhoto(MultipartFile file,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		//��ȡ�ļ���
		String filename=file.getOriginalFilename();
		System.out.println(filename);
		//��ȡ�洢·��
		String savepath = request.getRealPath("/upload");
		System.out.println(savepath);
		// ��Ϊ���ǵķ������ϲ�ȷ���Ƿ���upload������
		File files = new File(savepath);
		if (!files.exists()) {
			files.mkdirs();
		}
		//Ϊ���ϴ��ļ�������
		String newName=UUID.randomUUID()+filename;
		File finalFile =new File(savepath+File.separator+newName);
		//�ϴ���ָ��·��
		file.transferTo(finalFile);
		//����session
		Userinfo user=(Userinfo)request.getSession().getAttribute("userinfo");
		user.setHead_url(newName);
		request.getSession().setAttribute("userinfo", user);
		//�������ݿ�
		us.updateUserinfo(user);
		//��Ӧ��ǰ̨
	    response.getWriter().println(request.getContextPath()+"/upload/"+newName);
	}
	//�޸ĸ�����Ϣ
	@RequestMapping("/modifyinfo")
	public String modifyInof(Userinfo userinfo,HttpSession session) {
		
		Userinfo user=(Userinfo)session.getAttribute("userinfo");
		user.setNickname(userinfo.getNickname());
		user.setCity(userinfo.getCity());
		user.setSign(userinfo.getSign());
		user.setSex(userinfo.getSex());
		session.setAttribute("userinfo", user);
		us.updateUserinfo(user);
		return "redirect:/page/setpage";
	}
	@RequestMapping("/modifypassword")
	public void modifyPassword(String password,HttpSession session,HttpServletResponse response) throws IOException {
		Userinfo user=(Userinfo)session.getAttribute("userinfo");
	    user.setPassword(MD5.MD5(password));
		int num=us.modifyPassword(user);
		response.getWriter().print(num);
	}
	@RequestMapping("/qiandao")
	public void qianDao(HttpSession session,HttpServletResponse response) throws IOException {
		Userinfo user=(Userinfo)session.getAttribute("userinfo");
		user.setSignintime(new Date());
		user.setSignflg(1);
		int num=us.updateSignIn(user);
		session.setAttribute("userinfo", user);
		response.getWriter().print(num);
	}
	//�û��˳�
	@RequestMapping("/loginout")
	public String userLoginOut(HttpSession session) {
		//�û��˳������洢�û���session
		session.invalidate();
		return "redirect:/page/index";
	}
}
