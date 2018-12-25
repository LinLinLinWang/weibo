/**
 * 
 */
package edu.yuying.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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
	
	
}
