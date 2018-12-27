/**
 * 
 */
package edu.yuying.dao;

import edu.yuying.entity.User;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月26日 下午1:38:39
* 类说明
*/
/**
 * @author 王林
 *
 */

public interface UpdateUserDao {
	//更新图片 
	int upadeUserInfo(User user);
	//更新手机号
	int upadeUserPhone(String phone,String afterPhone);

}
