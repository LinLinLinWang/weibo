
package edu.yuying.entity;

import java.math.BigInteger;
import java.sql.Timestamp;
/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月25日 上午11:29:39
* 类说明
*/
/**
 * @author 王林
 *
 */

public class RecordHistoricalChanges {
	private   BigInteger id;//在谁的说说下？
	private String sendPhone;
	private String receivePhone;
    private	String Content;
    private Timestamp time;
	/**
	 * @return the sendPhone
	 */
	public String getSendPhone() {
		return sendPhone;
	}
	/**
	 * @return the id
	 */
	public BigInteger getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(BigInteger id) {
		this.id = id;
	}
	/**
	 * @param sendPhone the sendPhone to set
	 */
	public void setSendPhone(String sendPhone) {
		this.sendPhone = sendPhone;
	}
	/**
	 * @return the receivePhone
	 */
	public String getReceivePhone() {
		return receivePhone;
	}
	/**
	 * @param receivePhone the receivePhone to set
	 */
	public void setReceivePhone(String receivePhone) {
		this.receivePhone = receivePhone;
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
    
}

