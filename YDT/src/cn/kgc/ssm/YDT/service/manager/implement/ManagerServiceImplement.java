package cn.kgc.ssm.YDT.service.manager.implement;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import cn.kgc.ssm.YDT.dao.notice.NoticeMapper;
import cn.kgc.ssm.YDT.pojo.Notice;
import cn.kgc.ssm.YDT.service.manager.ManagerService;

@Service("managerService")
public class ManagerServiceImplement implements ManagerService {
	
	@Autowired
	@Qualifier("noticeMapper")
	private NoticeMapper noticeMapper;

	/**
	 * @Description 将前台传入的公告添加到数据库中
	 * @param notice 公告对象
	 * @return 添加成功为true
	 */
	@Override
	public boolean addNotice(Notice notice) {
		int i = noticeMapper.addNotice(notice);
		if(i > 0) {
			return true;
		}else {
			return false;
		}
	}

	/**
	 * @Description 根据前台传入的公告的id对公告进行修改
	 * @param notice
	 * @return 修改成功为true
	 */
	@Override
	public boolean modifyNoticeById(Notice notice) {
		if(noticeMapper.modifyNoticeById(notice) > 0) {
			return true;
		}
		return false;
	}

	/**
	 * @Description 根据前台传入的版块种类查询所有公告
	 * @param noticeTypeId:公告版块种类id
	 * @return
	 */
	@Override
	public List<Notice> getNoticeListByNoticeTypeId(int noticeTypeId) {
		List<Notice> notices =  noticeMapper.getNoticeListByNoticeTypeId(noticeTypeId);
		return notices;
	}

}
