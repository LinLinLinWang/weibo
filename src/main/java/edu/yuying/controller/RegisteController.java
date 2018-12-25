package edu.yuying.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.yuying.entity.User;
import edu.yuying.service.imp.UserServiceImp;
import edu.yuying.util.Util;

@Controller
@RequestMapping("/user")
public class RegisteController {
	@Resource
	private UserServiceImp userServiceImp;


	@RequestMapping("/userList")
	public ModelAndView registe(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, NoSuchAlgorithmException {
		//编码
		request.setCharacterEncoding("UTF-8");
		
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
			ModelAndView modelAndView = new ModelAndView("login_by_password");  
	       return  modelAndView;
		}
		ModelAndView modelAndView = new ModelAndView("registe");  
	       return  modelAndView;
		
		   
		   
	   }else{
		   System.out.println("验证码错误");
		   ModelAndView modelAndView = new ModelAndView("registe");  
	       return  modelAndView;
	   }

	}

}
