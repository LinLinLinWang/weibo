package edu.yuying.controller;

import java.io.IOException;
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
import edu.yuying.entity.HistoryPostingRecord;
import edu.yuying.entity.User;
import edu.yuying.service.imp.ChatServiceImp;
import edu.yuying.service.imp.HistoryPostingRecordServiceImp;
import edu.yuying.service.imp.UserServiceImp;
import edu.yuying.util.PhoneCode;
import edu.yuying.util.Util;

@Controller

public class HistoryPostingRecordController {
	@Resource
	private UserServiceImp userServiceImp;
	@Resource
	private ChatServiceImp chatServiceImp;
	@Resource
	private HistoryPostingRecordServiceImp historyPostingRecordServiceImp;
	@RequestMapping("ajax/showPostingHistory.mvc")
	public @ResponseBody Map<String, Object> getChatTotalHistory(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		Map<String, Object> map = new HashMap<String, Object>();
		
		String phone=(String)request.getSession().getAttribute("userphone");
		List<HistoryPostingRecord> HistoryPostingRecord=historyPostingRecordServiceImp.showHistoryPost(phone);
		
		return map;

	}

	@RequestMapping("ajax/insertPostingHistory.mvc")
	public @ResponseBody Map<String, Object> insertPostingHistory(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		Map<String, Object> map = new HashMap<String, Object>();
		
	//	String phone=(String)request.getSession().getAttribute("userphone");
		String type=request.getParameter("type");
		String content=request.getParameter("content");
		System.out.println(type+content);
		
	   Timestamp time = new Timestamp(System.currentTimeMillis()); 
	   HistoryPostingRecord historyPostingRecord=new HistoryPostingRecord();
	   historyPostingRecord.setContent(content);
	   historyPostingRecord.setPhone("15964245533");
	   historyPostingRecord.setContentType(Integer.valueOf(type));
	   historyPostingRecord.setTime(time);
	   if(1==historyPostingRecordServiceImp.insertPost(historyPostingRecord)){
		   System.out.println("插入成功");
			return map;
		   
	   }
		
		return map;

	}
//根据id删帖
	@RequestMapping(value = "ajax/deletePosting.mvc")
	public @ResponseBody Map<String, Object>  deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		Map<String, Object> map = new HashMap<String, Object>();
		String id=request.getParameter("id");
		System.out.println("帖子"+id);
	if(1==historyPostingRecordServiceImp.deletePostingById(Long.parseLong(id))){		
		//删除成功
		
	}else{
		
	}
		
		return  map;
		}
		
	//显示详情页
	
	@RequestMapping(value = "showPostDetail.mvc")
	public @ResponseBody ModelAndView showPostDetail(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html");
		//ModelAndView mav = new ModelAndView();
		//Map<String, Object> map = new HashMap<String, Object>();
		String id=request.getParameter("postid");
	     HistoryPostingRecord historyPostingRecord=	historyPostingRecordServiceImp.showPostById(Integer.valueOf(id));
		// System.out.println(historyPostingRecord.getReviewList().get(0).getFromuser().getuName());
	     ModelAndView mav = new ModelAndView();
		mav.setViewName("/showpostdetail");
	    mav.addObject("historyPostingRecord", historyPostingRecord);
		return  mav;
		}
		
	
}
