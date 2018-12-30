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
 private String uName;
 private String upwd;
 private String ugender;
 private String uphoto;
 private  int uage;
 private String Uconnect;
 private int Ustate;
/**
 * @return the ustate
 */
public int getUstate() {
	return Ustate;
}
/**
 * @param ustate the ustate to set
 */
public void setUstate(int ustate) {
	Ustate = ustate;
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
 * @return the uName
 */
public String getuName() {
	return uName;
}
/**
 * @param uName the uName to set
 */
public void setuName(String uName) {
	this.uName = uName;
}
/**
 * @return the upwd
 */
public String getUpwd() {
	return upwd;
}
/**
 * @param upwd the upwd to set
 */
public void setUpwd(String upwd) {
	this.upwd = upwd;
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

 
  

}
