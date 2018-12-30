/**
 * 
 */
package edu.yuying.dao;


import java.util.List;

import edu.yuying.entity.User;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月25日 下午12:07:59
* 类说明
*/
/**
 * @author 王林
 *
 */

public interface QueryUserDao {
	//根据手机号查询用户 返回 
	public User queryUserByPhone(String phone);
	//根据用户手机号以及密码
	public User queryUserByPhoneAndPassword(String phone,String password);
	//
	public List<User> queryALlUser();
	//根据用户手机号以及密码
	public User user_exist_returnUser_byCOnnect(String connect);

}
