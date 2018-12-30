/**
 * 
 */
package edu.yuying.dao;

import java.util.List;

import edu.yuying.entity.HistoryPostingRecord;
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
	public List<HistoryPostingRecord> commentWhoAndContentAndTime(String fromphone);
	
	//根据评论人的手机号 以及类型区分
	public List<HistoryPostingRecord> postSomeThing(String phone,int type);
    //根据评论人时间 指定时间  指定时间段
	public List<HistoryPostingRecord> postSomeThingByTime(String startTime,String endtime,String  phone);
	//插入评论记录
	int inserPost(HistoryPostingRecord HistoryPostingRecord);
	

}
