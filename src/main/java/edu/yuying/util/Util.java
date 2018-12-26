/**
 * 
 */
package edu.yuying.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.resource.spi.RetryableUnavailableException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	 public static String md5(String pwd) throws UnsupportedEncodingException, NoSuchAlgorithmException{
		
		 
		 MessageDigest md5=MessageDigest.getInstance("MD5");
	     BASE64Encoder base64en = new BASE64Encoder();
	     //加密后的字符串
	     return base64en.encode(md5.digest(pwd.getBytes("utf-8")));
		 
		 
		 
	 }
	 //设置cookie
	 public static void  setCookie (HttpServletRequest request, HttpServletResponse response,String cookiename,String content){
		 String host = request.getServerName();
		 System.out.println(cookiename+content);
			Cookie cookie = new Cookie(cookiename, content); // 保存用户名到Cookie
			cookie.setPath("/");
			cookie.setDomain(host);
			cookie.setMaxAge(99999999);
			response.addCookie(cookie);

			
        }
	 //查找cookie
	 public static String  searchCookie (HttpServletRequest request, HttpServletResponse response,String cookiename){
		 Cookie[] cookies = request.getCookies();
		 String content=null;
         //如果用户是第一次访问，那么得到的cookies将是null
        if (cookies!=null) {
           
            for (int i = 0; i < cookies.length; i++) {
              Cookie    cookie = cookies[i];
                  if(cookiename.equals(cookie.getName())){
                	  content=cookie.getValue();
                  }else{
                	  
                  }
                
                  
          
            }
            
        }
        return content;
        }
	 //cookie销毁
	 public static void  deleteCookie (HttpServletRequest request, HttpServletResponse response,String cookiename){
		 Cookie[] cookies = request.getCookies();
		 String content=null;
         //如果用户是第一次访问，那么得到的cookies将是null
        if (cookies!=null) {
           
            for (int i = 0; i < cookies.length; i++) {
              Cookie    cookie = cookies[i];
                  if(cookiename.equals(cookie.getName())){
                	 cookie.setMaxAge(0);
                	 cookie.setValue(null);
                	 response.addCookie(cookie);
                  }else{
                	  
                  }
                
                  
          
            }
            
        }

			
        }
}