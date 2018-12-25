package edu.yuying.service;

import java.util.List;

import edu.yuying.entity.User;



public interface UserService {
	//用户插入是否成功
	public boolean registeUser(User user);
   //用户是否已经存在 根据phone
	public boolean user_exist(String phone);
	

	 
}
