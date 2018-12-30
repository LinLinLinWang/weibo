package edu.yuying.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
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

import edu.yuying.entity.ChatWithPeople;
import edu.yuying.entity.User;
import edu.yuying.service.imp.ChatServiceImp;
import edu.yuying.service.imp.UserServiceImp;
import edu.yuying.util.PhoneCode;
import edu.yuying.util.Util;

@Controller

public class IndexController {
	@Resource
	private UserServiceImp userServiceImp;
	@Resource
	private ChatServiceImp chatServiceImp;

	@RequestMapping("ajax/index.mvc")
	public @ResponseBody ModelAndView  getIndexPage(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {

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
			if(usernamefromcookie==null){
				//返回用户信息
				
				 mav.addObject("userdetail", userServiceImp.user_exist_returnUser(sessioname));
				return mav;
			}else{
				 mav.addObject("userdetail", userServiceImp.user_exist_returnUser(usernamefromcookie));
				 return mav;
				
			}
			
			
		}else{
			
			return mav;
		}
		
	   
	

	}
	

	
}
