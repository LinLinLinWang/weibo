/**
 * 
 */
package edu.yuying.entity;

import java.math.BigInteger;
import java.sql.Timestamp;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月25日 上午11:19:37
* 类说明
*/
/**
 * 历史发帖记录表
 *
 */

public class HistoryPostingRecord {
  private long id;
  private String phone;
  private String content;
  private  int  contentType;
  private Timestamp time;
  private User user; //一条记录对用一个发表的人
/**
 * @return the id
 */
public long getId() {
	return id;
}
/**
 * @param id the id to set
 */
public void setId(long id) {
	this.id = id;
}
/**
 * @return the phone
 */
public String getPhone() {
	return phone;
}
/**
 * @param phone the phone to set
 */
public void setPhone(String phone) {
	this.phone = phone;
}
/**
 * @return the content
 */
public String getContent() {
	return content;
}
/**
 * @param content the content to set
 */
public void setContent(String content) {
	this.content = content;
}
/**
 * @return the contentType
 */
public int getContentType() {
	return contentType;
}
/**
 * @param contentType the contentType to set
 */
public void setContentType(int contentType) {
	this.contentType = contentType;
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
 * @return the user
 */
public User getUser() {
	return user;
}
/**
 * @param user the user to set
 */
public void setUser(User user) {
	this.user = user;
}

	
}
