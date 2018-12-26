package edu.yuying.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.yuying.dao.QueryUserDao;
import edu.yuying.dao.RegisteDao;
import edu.yuying.entity.User;
import edu.yuying.service.UserService;
@Service
public class UserServiceImp implements UserService {
	//继承userservice 标准 
	
  @Resource
  RegisteDao registeDao;
  @Resource
  QueryUserDao quertUserDao;
	/* (non-Javadoc)
	 * @see edu.grimm.service.UserService#registeUser(edu.grimm.entity.User)
	 */
  
  /**该方法接受前端数据，返回插入结果 registeRessult=true 插入成功 */
	@Override
	public boolean registeUser(User user) {
		// TODO Auto-generated method stub
		boolean registeRessult;
		
	
	
		if(user_exist(user.getPhone())){
			//用户存在时  也就是说插入失败
			System.out.println("插入失败");
			registeRessult=false;
			return  registeRessult ;
			
			
		}
		else{
			
			//用户不在时 插入
			String beforeInsertUserId=user.getPhone();
			int a= registeDao.registeUser(user);
			System.out.println("插入"+a+"条记录");
			System.out.println("插入的主键"+user.getPhone());
			String afterInsertUserId=user.getPhone();
		if((!afterInsertUserId.equals(beforeInsertUserId))&&a==1){
			//插入成功
			System.out.println("插入成功");
			registeRessult=true;
		}else{
			//插入失败	
			System.out.println("插入失败");
			registeRessult=false;
			
		}
			
			
			return  registeRessult ;
		
		
		}
		
		
	
		
	}

/* (non-Javadoc)
 * @see edu.yuying.service.UserService#user_exist(java.lang.String)
 */
@Override
public boolean user_exist(String phone) {
	// TODO Auto-generated method stub
	//存在返回true 不存在返回false
	if(null==quertUserDao.queryUserByPhone(phone)){
		
		return false;
		
	}
	
	return true;
	
}

/* (non-Javadoc)
 * @see edu.yuying.service.UserService#user_exist(java.lang.String, java.lang.String)
 */
@Override
public boolean user_exist(String phone, String pwd) {
	// TODO Auto-generated method stub
	//存在返回true 不存在返回false
		if(null==quertUserDao.queryUserByPhoneAndPassword(phone, pwd)){
			
			System.err.println("不存在");
			return false;
			
		}
		System.err.println("存在");
		return true;
}
	

}
