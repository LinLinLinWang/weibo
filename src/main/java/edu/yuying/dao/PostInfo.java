/**
 * 
 */
package edu.yuying.dao;

import java.util.List;

import edu.yuying.entity.HistoryPostingRecord;
import edu.yuying.entity.User;

/**
* @author 王林
* @englishname:Grimm
* @githubcount LinLinLinWang
* @version 创建时间：2018年12月27日 下午7:45:21
* 类说明
*/
/**
 * @author 王林
 *
 */

public interface PostInfo {
	//查看自己上传过的所有
   public List<User> showPost(String phone);
   //查看指定类型的说说
   public List<User> showPost(String phone,int  state);
   //查看自己指定时间的说说
   public List<User> showPost(String starttime,String   endtime);
   //插入
   int  insertPost(HistoryPostingRecord historyPostingRecord);
   
    
}
