package cn.kgc.ssm.YDT.service.manager;

import java.util.List;

import cn.kgc.ssm.YDT.pojo.Notice;

public interface ManagerService {
	
	
	/**
	 * @Description 将前台传入的公告添加到数据库中
	 * @param notice 公告对象
	 * @return 添加成功为true
	 */
	public boolean addNotice(Notice notice);
	
	/**
	 * @Description 根据前台传入的公告的id对公告进行修改
	 * @param notice
	 * @return 修改成功为true
	 */
	public boolean modifyNoticeById(Notice notice);
	
	/**
	 * @Description 根据前台传入的版块种类查询所有公告
	 * @param noticeTypeId:公告版块种类id
	 * @return
	 */
	public List<Notice> getNoticeListByNoticeTypeId(int noticeTypeId);
}
