package cn.kgc.ssm.YDT.dao.notice;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.kgc.ssm.YDT.pojo.Notice;
import cn.kgc.ssm.YDT.pojo.Page;
/**
 * 
 * @Description 管理员的特有业务类 
 * @author dhp667
 */
public interface NoticeMapper {
	/**
	 * @Description 根据前台传入的公告增加到数据库中
	 * @param notice
	 * @return
	 */
	public int addNotice( Notice notice);
	
	/**
	 * @Description 根据前台传入的noticeId对公告进行修改
	 * @param notice 
	 * @return 受影响的行数
	 */
	public int modifyNoticeById(Notice notice);
	
	
	
	/**
	 * @Description 查询某个版块下的所有公告
	 * @param noticeTypeId:公告版块种类
	 * @return
	 */
	public List<Notice> getNoticeListByNoticeTypeId(Map<String, Object> map);
	
	/**
	 * @Description 根据传入的noticeId删除notice
	 * @param notice
	 * @return
	 */
	public int deleteNoticeByNoticeId(Notice notice);
	

}
