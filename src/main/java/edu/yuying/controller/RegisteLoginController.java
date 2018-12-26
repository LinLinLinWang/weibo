package edu.yuying.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
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
import org.springframework.web.servlet.ModelAndView;

import edu.yuying.entity.User;
import edu.yuying.service.imp.UserServiceImp;
import edu.yuying.util.Util;

@Controller

public class RegisteLoginController {
	@Resource
	private UserServiceImp userServiceImp;


	@RequestMapping("ajax/registe")
	public @ResponseBody Map<String, Object> registe(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, NoSuchAlgorithmException {
		//编码
		request.setCharacterEncoding("UTF-8");
		Map<String, Object> map = new HashMap<String, Object>();
		String phone = request.getParameter("phone");
	    String pwd = request.getParameter("password");
		String username = request.getParameter("name");
		String code=request.getParameter("code");
		//获取session中的验证码session.setAttribute("randStr", ranString);
	   String trueCode=(String) request.getSession().getAttribute("randStr");
	   if(code.equalsIgnoreCase(trueCode)){
		   System.out.println("验证码正确");
			User user=new User();
		    user.setPhone(phone);
	        //MD5加密、
			user.setPwd(Util.md5(pwd));
			user.setUserName(username);
		if(userServiceImp.registeUser(user)){
		   map.put("state", 0);//注册成功
	       return  map;
		}
		  map.put("state", 1);
	       return  map;//注册失败（原因不可知）
		
		   
		   
	   }else{
		   map.put("state",2);//验证码错误
		   System.out.println("验证码错误");
		  
	       return  map;
	   }

	}
                /***
                 * 登录 使用账户密码登录
                 * 
                 * */

	@RequestMapping("ajax/login_by_password")
	public @ResponseBody Map<String, Object> login_by_password(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, NoSuchAlgorithmException {
		//编码
		request.setCharacterEncoding("UTF-8");
		Map<String, Object> map = new HashMap<String, Object>();
		String phone = request.getParameter("phone");
	    String pwd = request.getParameter("password");
	System.out.println("登陆密码"+pwd);
		String state=request.getParameter("state");
		if(!userServiceImp.user_exist(phone)){
			//该账户尚未注册
			
			map.put("state", 0);
		
			
		}else{
			System.out.println("密码加密后"+Util.md5(pwd));
			if(!userServiceImp.user_exist(phone,Util.md5(pwd))){
				//密码错误
				map.put("state", 1);
				
				
				
			}else{
				//登录成功
				map.put("state", 2);
				
				//判断是否需要保存cookie
				System.out.println("state"+state);
				if("0".equals(state)){
					System.out.println("保存cookie");
					//保存cookie
					Util.setCookie(request, response, "session_name", phone);
					Util.setCookie(request, response, "session_password", Util.md5(pwd));
					System.out.println("cookie"+Util.searchCookie(request,response,"session_name"));
					System.out.println("cookie"+Util.searchCookie(request,response,"session_password"));
					
				}else{//为了防止登录漏洞 默认登录不保存密码  视为清除cookie
					System.out.println("清楚cookie");
					//对同一个request进行操作
					Util.deleteCookie(request, response, "session_name");
					Util.deleteCookie(request, response, "session_password");
					
					System.out.println("cookie"+Util.searchCookie(request,response,"session_name"));
					System.out.println("cookie"+Util.searchCookie(request,response,"session_password"));
					
					
				}
				
				
				
				
			}
			
			
			
		}
		
		  
		  
	       return  map;
	  

	}
}
