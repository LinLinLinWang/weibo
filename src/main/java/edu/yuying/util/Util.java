/**
 * 
 */
package edu.yuying.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;
import javax.resource.spi.RetryableUnavailableException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.yuying.service.imp.UserServiceImp;
import sun.misc.BASE64Encoder;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月25日 下午1:09:42
* 类说明
*/
/**
 * @author 王林
 *
 */

public class Util {

	public static String md5(String pwd) throws UnsupportedEncodingException, NoSuchAlgorithmException {

		MessageDigest md5 = MessageDigest.getInstance("MD5");
		BASE64Encoder base64en = new BASE64Encoder();
		// 加密后的字符串
		return base64en.encode(md5.digest(pwd.getBytes("utf-8")));

	}

	// 设置cookie
	public static void setCookie(HttpServletRequest request, HttpServletResponse response, String cookiename,
			String content) {
		String host = request.getServerName();
		System.out.println(cookiename + content);
		Cookie cookie = new Cookie(cookiename, content); // 保存用户名到Cookie
		cookie.setPath("/");
		cookie.setDomain(host);
		cookie.setMaxAge(99999999);
		response.addCookie(cookie);

	}

	// 查找cookie
	public static String searchCookie(HttpServletRequest request, HttpServletResponse response, String cookiename) {
		Cookie[] cookies = request.getCookies();
		String content = null;
		// 如果用户是第一次访问，那么得到的cookies将是null
		if (cookies != null) {

			for (int i = 0; i < cookies.length; i++) {
				Cookie cookie = cookies[i];
				if (cookiename.equals(cookie.getName())) {
					content = cookie.getValue();
				} else {

				}

			}

		}
		return content;
	}

	// cookie销毁
	public static void deleteCookie(HttpServletRequest request, HttpServletResponse response, String cookiename) {
		Cookie[] cookies = request.getCookies();
		String content = null;
		// 如果用户是第一次访问，那么得到的cookies将是null
		if (cookies != null) {

			for (int i = 0; i < cookies.length; i++) {
				Cookie cookie = cookies[i];
				if (cookiename.equals(cookie.getName())) {
					cookie.setMaxAge(0);
					cookie.setValue(null);
					cookie.setPath("/");
					response.addCookie(cookie);
				} else {

				}

			}

		}

	}

	// 每次点击判断用户状态是否合法
	// cookie销毁
	public static int  user_state (HttpServletRequest request, HttpServletResponse response,UserServiceImp userServiceImp){
		int flag=0;	
		 String  usernamefromcookie=searchCookie(request, response, "session_name");
			  String  passwordfromcookie= searchCookie(request, response, "session_password");
			String sessioname=(String)request.getSession().getAttribute("userphone");
				String sessionpassword=(String)request.getSession().getAttribute("userpwd");
			System.out.println("usernamefromcookie"+usernamefromcookie);	
			System.out.println("passwordfromcookie"+passwordfromcookie);	
			System.out.println("sessioname"+sessioname);	
			System.out.println("sessionpassword"+sessionpassword);
			
			
			
			  //先看cookie
		 if(null==usernamefromcookie||null==passwordfromcookie){
			 //cookie失效
			 //采用session
			 System.out.println("cookie+不完整");
			 if(null==sessioname||null==sessionpassword){
				 
				 //强制重新登录
				 flag=1;
				 System.out.println("cookie+不完整而且session也没有");
				 return flag;
				
				 
			 }else{
				 if(userServiceImp.user_exist(sessioname, sessionpassword)){
					 if(2==(userServiceImp.user_exist_returnUser(sessioname)).getUstate()){
							request.getSession().setAttribute("userphone",null);
							request.getSession().setAttribute("userpwd",null);
						 
						 //已被注销
						 flag=1;
						 return flag;
						 
					 }else{
						 
						 
						 //正常
						 flag=0;
						 return flag;
						 
						 
					 }
					 
			
				 }else{
					 //强制退出
					 request.getSession().setAttribute("userphone",null);
						request.getSession().setAttribute("userpwd",null);
					 flag=1;
					 return flag;
				 }
				 
				 
			 }
			 
			 
		 }else{
			 if(userServiceImp.user_exist(usernamefromcookie, passwordfromcookie)){
				 
				  if(2==(userServiceImp.user_exist_returnUser(usernamefromcookie)).getUstate()){
					  deleteCookie(request,response,usernamefromcookie);
						 deleteCookie(request,response,passwordfromcookie);
						 request.getSession().setAttribute("userphone",null);
							request.getSession().setAttribute("userpwd",null);
						 //已被注销
						 flag=1;
						 return flag;
						 
				  }else{
						 
						 //正常
						 flag=0;
						 return flag;
						 
				  }
			
			 }else{//cookie失效
				 deleteCookie(request,response,usernamefromcookie);
				 deleteCookie(request,response,passwordfromcookie);
				 
				 if(null==sessioname||null==sessionpassword){
					 
					 //强制重新登录
					 flag=1;
					 return flag;
					 
					 
				 }else{
					 if(userServiceImp.user_exist(sessioname, sessionpassword)){
						 if(2==(userServiceImp.user_exist_returnUser(sessioname)).getUstate()){
							 request.getSession().setAttribute("userphone",null);
								request.getSession().setAttribute("userpwd",null);
							 //已被注销
							 flag=1;
							 return flag;
							 
						 }else{
							 //正常
							 flag=0;
							 return flag;
							 
							 
						 }
						
					 }else{
						 request.getSession().setAttribute("userphone",null);
							request.getSession().setAttribute("userpwd",null);
						 //强制退出
						 flag=1;
						 return flag;
					 }
				 
				 
				 
				 
				 
			 }
			 
			 
			 
		 }
		 
		 
		
			
        }
			
	}
	//查看时间
	public static Date getNeedTime(int hour,int minute,int second,int addDay,int ...args){
	    Calendar calendar = Calendar.getInstance();
	    if(addDay != 0){
	        calendar.add(Calendar.DATE,addDay);
	    }
	    calendar.set(Calendar.HOUR_OF_DAY,hour);
	    calendar.set(Calendar.MINUTE,minute);
	    calendar.set(Calendar.SECOND,second);
	    if(args.length==1){
	        calendar.set(Calendar.MILLISECOND,args[0]);
	    }
	    return calendar.getTime();
	}


}