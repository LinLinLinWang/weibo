/**
 * 
 */
package edu.yuying.dao;

import java.util.List;

import edu.yuying.entity.RecordHistoricalChanges;
import edu.yuying.entity.User;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月27日 下午5:22:02
* 类说明
*/
/**
 * @author 王林
 *
 */
//
public interface CommentDao {
	//根据评论人手机号返回所有评论  显示你给谁评论过 // 内容 ：被评论者的姓名，内容，时间
	public List<User> commentWhoAndContentAndTime(String fromphone);
	
	//根据评论人的手机号 查看历史发表记录 根据图片 视频 文字进行区分
	public List<User> postSomeThing(String phone);
    //根据评论人时间 指定时间  指定时间段
	public List<User> postSomeThingByTime(String startTime,String endtime);
	//插入评论记录
	int insertRecordHistoricalChanges(RecordHistoricalChanges recordHistoricalChanges);
	

}
