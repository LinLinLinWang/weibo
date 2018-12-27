/**
 * 
 */
package edu.yuying.service;

import java.util.List;

import edu.yuying.entity.User;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月27日 下午8:10:34
* 类说明
*/
/**
 * @author 王林
 *
 */

public interface ChatService {
	public List<User> showUserChatHistoryByPhone(String phone);
	
	

}
