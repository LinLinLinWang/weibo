/**
 * 
 */
package edu.yuying.entity;



import java.util.List;

import javax.persistence.Entity;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月25日 上午11:12:37
* 类说明
*/
/**
 * 用户实体类
 *
 */


public class User {
	
 private String phone;
 private String userName;
 private String pwd;
 private String ugender;
 private String uphoto;
 private  int uage;
 private String Uconnect;
 //一个用户多次发表帖子
 private List<HistoryPostingRecord> historyPosingRecord;
 //一个用户发表的评论
 private List<RecordHistoricalChanges> recordHistoricalChanges;
 //一个用户的聊天记录
 private List<ChatWithPeople> chatWithPeople;
 
 
 
 
 
 
/**
 * @return the uconnect
 */
public String getUconnect() {
	return Uconnect;
}
/**
 * @param uconnect the uconnect to set
 */
public void setUconnect(String uconnect) {
	Uconnect = uconnect;
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
 * @return the userName
 */
public String getUserName() {
	return userName;
}
/**
 * @param userName the userName to set
 */
public void setUserName(String userName) {
	this.userName = userName;
}
/**
 * @return the pwd
 */
public String getPwd() {
	return pwd;
}
/**
 * @param pwd the pwd to set
 */
public void setPwd(String pwd) {
	this.pwd = pwd;
}
/**
 * @return the ugender
 */
public String getUgender() {
	return ugender;
}
/**
 * @param ugender the ugender to set
 */
public void setUgender(String ugender) {
	this.ugender = ugender;
}
/**
 * @return the uphoto
 */
public String getUphoto() {
	return uphoto;
}
/**
 * @param uphoto the uphoto to set
 */
public void setUphoto(String uphoto) {
	this.uphoto = uphoto;
}
/**
 * @return the uage
 */
public int getUage() {
	return uage;
}
/**
 * @param uage the uage to set
 */
public void setUage(int uage) {
	this.uage = uage;
}

  

}
