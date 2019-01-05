/**
 * 
 */
package edu.yuying.dao;

import java.sql.Timestamp;
import java.util.List;

import edu.yuying.entity.ChatWithPeople;
import edu.yuying.entity.User;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月27日 下午6:32:10
* 类说明
*/
/**
 * @author 王林
 *
 */

public interface ChatWithPeopleDao {
//根据自己手机号查询历史记录
	public List<ChatWithPeople> chatToalHistory(String fromephone);
//根据接收者 筛选记录
	public List<ChatWithPeople> chatToalHistoryByRecevice(String fromephone,String receivephone);
	//列出跟谁聊过天
	public List<ChatWithPeople> chatWithWho(String fromphone);
	//指定时间段查发送人的历史记录
	public List<ChatWithPeople> chatFromTimeToTime(String  fromphone,Timestamp starttime,Timestamp endtime);
   //根据时间列出跟谁聊过天
	public List<ChatWithPeople>  chatWithWhoDringTime(String fromphone ,String starttime,String endtime);
	//插入聊天记录
	int    insertChatDate(ChatWithPeople chatWithPeople);
}
