/**
 * 
 */
package edu.yuying.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.yuying.dao.ChatWithPeople;
import edu.yuying.entity.User;
import edu.yuying.service.ChatService;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月27日 下午8:12:33
* 类说明
*/
/**
 * @author 王林
 *
 */
@Service
public class ChatServiceImp implements ChatService {
	  @Resource
	  ChatWithPeople chatWithPeople;
	/* (non-Javadoc)
	 * @see edu.yuying.service.ChatService#showUserChatHistoryByPhone(java.lang.String)
	 */
	@Override
	public List<User> showUserChatHistoryByPhone(String phone) {
		// TODO Auto-generated method stub
		List<User> historyChatList=
		chatWithPeople.chatToalHistory(phone);
		
		return historyChatList;
	}

}
