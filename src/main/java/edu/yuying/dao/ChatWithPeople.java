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
* @version 创建时间：2018年12月27日 下午6:32:10
* 类说明
*/
/**
 * @author 王林
 *
 */

public interface ChatWithPeople {
//根据自己手机号查询历史记录
	public List<User> chatToalHistory(String fromephone);
//根据接收者 筛选记录
	public List<User> chatToalHistoryByRecevice(String fromephone,String fromphone);
	//列出跟谁聊过天
	public List<User> chatWithWho(String fromphone);
	//指定时间段查看历史记录
	public List<User> chatFromTimeToTime(String  fromphone,String starttime,String endtime);
   //根据时间列出跟谁聊过天
	public List<User> chatchatWithWho(String fromphone ,String starttime,String endtime);
	//插入聊天记录
	int    insertChatDate(ChatWithPeople chatWithPeople);
}
