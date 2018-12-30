/**
 * 
 */
package edu.yuying.service;

import java.util.List;

import edu.yuying.dao.ChatWithPeopleDao;
import edu.yuying.entity.ChatWithPeople;
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
	public List<ChatWithPeople> showUserChatHistoryByPhone(String phone);

	// 根据接收者跟发送者查看聊天记录
	public List<ChatWithPeople> showChatHistoryByWhoToWho(String sendPhone, String receivePhone);

	// 查看跟谁聊过天
	public List<ChatWithPeople> showChatWithWho(String sendPhone);

	// <!-- 查看时间段内聊天记录-->
	public List<ChatWithPeople> showChatHistoryDuringTime(String fromphone, String starttime, String endtime);

	// 根据时间列出跟谁聊过天
	public List<ChatWithPeople> chatWithWhoDringTime(String fromphone, String starttime, String endtime);

	// 插入聊天记录
	int insertChatDate(ChatWithPeople chatWithPeople);

}
