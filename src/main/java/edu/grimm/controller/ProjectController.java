package edu.grimm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import edu.grimm.entity.Project;
import edu.grimm.service.imp.ProjectServiceImp;

@Controller
@RequestMapping("/user")
public class ProjectController {
	@Resource
	private ProjectServiceImp projectServiceImp;
	
	 @RequestMapping("/userList")    
	 public String projectList(HttpServletRequest request,HttpServletResponse response){
		
		
		   response.setCharacterEncoding("utf-8");
		 String id=request.getParameter("name");
		 System.err.println("查看id"+id);
		 try {if(null==id){
				request.setAttribute("list", null);
	               return "../failed";
			 }else{
				
			int idd=	 Integer.valueOf(id);
				 List<Project> uList = new ArrayList<>();
				 uList=projectServiceImp.getAllProject(idd);
				 System.out.println("ddddddd"+uList.size());
				 request.setAttribute("list", uList);
				 return "../success";
			 }
			
		} catch (Exception e) {
			// TODO: handle exception
			  return "../failed";
		}
		 
		
		
		 
	 } 
	 
	
	
	
}
