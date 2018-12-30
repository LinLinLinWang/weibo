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

public class ChatController {
	@Resource
	private UserServiceImp userServiceImp;
	@Resource
	private ChatServiceImp chatServiceImp;

	@RequestMapping("ajax/chattotalhistory.mvc")
	public @ResponseBody Map<String, Object> getChatTotalHistory(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		String phone = request.getParameter("phone");
		System.out.println(phone + "想看他跟别人的聊天记录");
		Map<String, Object> map = new HashMap<String, Object>();
		List<ChatWithPeople> userlist = chatServiceImp.showUserChatHistoryByPhone(phone);
		System.out.println("长度" + userlist.size());
		System.out.println("接受信息的人的手机号" + userlist.get(0).getToUser().getuName());

		return map;

	}

	@RequestMapping("ajax/chatWithWho.mvc")
	public @ResponseBody Map<String, Object> chatWithWho(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, NoSuchAlgorithmException {
		String phone = request.getParameter("phone");

		Map<String, Object> map = new HashMap<String, Object>();
		List<ChatWithPeople> userlist = chatServiceImp.showChatWithWho(phone);
		System.out.println("长度" + userlist.size());
		System.out.println("接受信息的人的名字" + userlist.get(0).getToUser().getuName());

		return map;

	}

	@RequestMapping("ajax/insertChatHistory.mvc")
	public @ResponseBody Map<String, Object> insertChatHistory(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, NoSuchAlgorithmException {
		String phone=request.getParameter("phone");
	    Map<String, Object> map = new HashMap<String, Object>();
        String  sendPhone=(String)request.getSession().getAttribute("userphone");
        String  receivePhone=request.getParameter("receivePhone");
        String content=request.getParameter("content");
        Timestamp time = new Timestamp(System.currentTimeMillis()); 
        ChatWithPeople chatWithPeople=new ChatWithPeople();
        chatWithPeople.setContent(content);
        chatWithPeople.setReceivePhone(receivePhone);
        chatWithPeople.setTime(time);
        chatWithPeople.setSendPhone(sendPhone);
        if(1== chatServiceImp.insertChatDate(chatWithPeople)){
        	System.out.println("插入会话成功");
        	
        	
        }else{
        	
        	System.out.println("插入会话不成功");
        }
       
			
  return map;
			
		
		
		
	

	}
	
		
		
	

}
