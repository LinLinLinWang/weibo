package edu.yuying.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.parser.deserializer.StringFieldDeserializer;
import com.mysql.cj.conf.HostInfo;

import edu.yuying.entity.ChatWithPeople;
import edu.yuying.entity.HotPosting;
import edu.yuying.entity.User;
import edu.yuying.service.imp.ChatServiceImp;
import edu.yuying.service.imp.HistoryPostingRecordServiceImp;
import edu.yuying.service.imp.UserServiceImp;
import edu.yuying.util.PhoneCode;
import edu.yuying.util.Util;

@Controller

public class IndexController {
	@Resource
	private UserServiceImp userServiceImp;
	@Resource
	private ChatServiceImp chatServiceImp;
	@Resource
	private HistoryPostingRecordServiceImp historyPostingRecordServiceImp;

	@RequestMapping("ajax/index.mvc")
	public @ResponseBody ModelAndView  getIndexPage(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		//String [][]showlis=new String[5][3];
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index");
		if(0==Util.user_state(request, response, userServiceImp)){
			//用户一切正常
			
			 String  usernamefromcookie=Util.searchCookie(request, response, "session_name");
			  String  passwordfromcookie= Util.searchCookie(request, response, "session_password");
			String sessioname=(String)request.getSession().getAttribute("userphone");
				String sessionpassword=(String)request.getSession().getAttribute("userpwd");
			System.out.println("usernamefromcookie"+usernamefromcookie);	
			System.out.println("passwordfromcookie"+passwordfromcookie);	
			System.out.println("sessioname"+sessioname);	
			System.out.println("sessionpassword"+sessionpassword);
			//显示热帖
			//System.out.println("帖子评论"+historyPostingRecordServiceImp.showHotPosting().size());
			List<HotPosting> hotpostlist=historyPostingRecordServiceImp.showHotPosting();
			Iterator<HotPosting> iter = null;
			HotPosting hot=new HotPosting();
		        for (iter = hotpostlist.iterator(); iter.hasNext(); ) {
		        	hot = iter.next();
		            System.out.println(hot.getNum() + hot.getContent());}
			
			
			//返回热门帖子信息
			if(usernamefromcookie==null){
				//返回用户信息
				
				 mav.addObject("userdetail", userServiceImp.user_exist_returnUser(sessioname));
				 //热门帖子
				 mav.addObject("hotpostlist", historyPostingRecordServiceImp.showHotPosting());
				return mav;
			}else{
				 mav.addObject("userdetail", userServiceImp.user_exist_returnUser(usernamefromcookie));
				 mav.addObject("hotpostlist", hotpostlist);
				 return mav;
				
			}
			
			
		}else{
			
			return mav;
		}
		
	   
	

	}
	

	
}
