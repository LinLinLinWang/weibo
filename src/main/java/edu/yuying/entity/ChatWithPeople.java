/**
 * 
 */
package edu.yuying.entity;

import java.sql.Timestamp;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月27日 下午5:54:47
* 类说明
*/
/**
 * @author 王林
 *
 */

public class ChatWithPeople {
 private    String 	SendPhone ;
 private	String  ReceivePhone ;
 private String  Content  ;
 private Timestamp  time ; 
 private User fromuser; //一条记录对用一个接收人
 private  User  toUser;
/**
 * @return the sendPhone
 */
public String getSendPhone() {
	return SendPhone;
}
/**
 * @param sendPhone the sendPhone to set
 */
public void setSendPhone(String sendPhone) {
	SendPhone = sendPhone;
}
/**
 * @return the receivePhone
 */
public String getReceivePhone() {
	return ReceivePhone;
}
/**
 * @param receivePhone the receivePhone to set
 */
public void setReceivePhone(String receivePhone) {
	ReceivePhone = receivePhone;
}
/**
 * @return the content
 */
public String getContent() {
	return Content;
}
/**
 * @param content the content to set
 */
public void setContent(String content) {
	Content = content;
}
/**
 * @return the time
 */
public Timestamp getTime() {
	return time;
}
/**
 * @param time the time to set
 */
public void setTime(Timestamp time) {
	this.time = time;
}
/**
 * @return the fromuser
 */
public User getFromuser() {
	return fromuser;
}
/**
 * @param fromuser the fromuser to set
 */
public void setFromuser(User fromuser) {
	this.fromuser = fromuser;
}
/**
 * @return the toUser
 */
public User getToUser() {
	return toUser;
}
/**
 * @param toUser the toUser to set
 */
public void setToUser(User toUser) {
	this.toUser = toUser;
}

}
