/**
 * 
 */
package edu.yuying.entity;

import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.List;

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

public class HotPosting {
  private long id;
 
  private String content;
 private int  num;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}

	
}
