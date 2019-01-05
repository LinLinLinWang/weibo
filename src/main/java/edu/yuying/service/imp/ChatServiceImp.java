/**
 * 
 */
package edu.yuying.service.imp;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.yuying.dao.ChatWithPeopleDao;
import edu.yuying.entity.ChatWithPeople;
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
	  ChatWithPeopleDao chatWithPeopleDao;
	/* (non-Javadoc)
	 * @see edu.yuying.service.ChatService#showUserChatHistoryByPhone(java.lang.String)
	 */
	@Override
	public List<ChatWithPeople> showUserChatHistoryByPhone(String phone) {
		// TODO Auto-generated method stub
		List<ChatWithPeople> historyChatList=
			chatWithPeopleDao.chatToalHistory(phone);
		
		return 	chatWithPeopleDao.chatToalHistory(phone);
	}
	/* (non-Javadoc)
	 * @see edu.yuying.service.ChatService#showChatHistoryByWhoToWho(java.lang.String, java.lang.String)
	 */
	//两人之间的聊天记录
	@Override
	public List<ChatWithPeople> showChatHistoryByWhoToWho(String sendPhone, String receivePhone) {
		// TODO Auto-generated method stub
		return chatWithPeopleDao.chatToalHistoryByRecevice(sendPhone, receivePhone);
	}
	/* (non-Javadoc)
	 * @see edu.yuying.service.ChatService#showChatWithWho(java.lang.String)
	 */
	//查看你跟谁聊过天
	@Override
	public List<ChatWithPeople> showChatWithWho(String sendPhone) {
		// TODO Auto-generated method stub
		return chatWithPeopleDao.chatWithWho(sendPhone);
	}
	/* (non-Javadoc)
	 * @see edu.yuying.service.ChatService#showChatHistoryDuringTime(java.lang.String, java.lang.String, java.lang.String)
	 */
	//指定时间段内查看历史聊天
	@Override
	public List<ChatWithPeople> showChatHistoryDuringTime(String fromphone, Timestamp starttime, Timestamp endtime) {
		// TODO Auto-generated method stub
		return chatWithPeopleDao.chatFromTimeToTime(fromphone, starttime, endtime);
	}
	/* (non-Javadoc)
	 * @see edu.yuying.service.ChatService#chatWithWhoDringTime(java.lang.String, java.lang.String, java.lang.String)
	 */
	@Override
	public List<ChatWithPeople> chatWithWhoDringTime(String fromphone, String starttime, String endtime) {
		// TODO Auto-generated method stub
		return chatWithPeopleDao.chatWithWhoDringTime(fromphone, starttime, endtime);
	}
	/* (non-Javadoc)
	 * @see edu.yuying.service.ChatService#insertChatDate(edu.yuying.entity.ChatWithPeople)
	 */
	@Override
	public int insertChatDate(ChatWithPeople chatWithPeople) {
		// TODO Auto-generated method stub
		return chatWithPeopleDao.insertChatDate(chatWithPeople);
	}

}
