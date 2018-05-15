package cn.kgc.ssm.YDT.service.manager.implement;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import cn.kgc.ssm.YDT.dao.biditem.BidItemMapper;
import cn.kgc.ssm.YDT.dao.datadirectory.DataDirectoryMapper;
import cn.kgc.ssm.YDT.dao.itemcommon.ItemCommomMapper;
import cn.kgc.ssm.YDT.dao.notice.NoticeMapper;
import cn.kgc.ssm.YDT.pojo.BidItem;
import cn.kgc.ssm.YDT.pojo.DataDirectory;
import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.pojo.Notice;
import cn.kgc.ssm.YDT.service.manager.ManagerService;

@Service("managerService")
public class ManagerServiceImplement implements ManagerService {
	
	@Autowired
	@Qualifier("noticeMapper")
	private NoticeMapper noticeMapper;
	
	@Resource
	private DataDirectoryMapper dataDirectoryMapper;
	
	@Resource
	private ItemCommomMapper itemCommonMapper;
	
	@Resource
	private BidItemMapper bidItemMapper;
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
	public List<Notice> getNoticeListByNoticeTypeId(Map<String, Object> map) {
		List<Notice> notices =  noticeMapper.getNoticeListByNoticeTypeId(map);
		return notices;
	}
	
	/**
	 * @Description 根据传入的noticeId删除notice
	 * @return
	 */
	@Override
	public boolean deleteNoticeByNoticeId(Notice notice) {
		if(noticeMapper.deleteNoticeByNoticeId(notice) > 0) {
			return true;
		}
		return false;
	}
	
	/**
	 * @Description 根据前台传入的数据字典信息查到对应的记录
	 * @param dataDirectory
	 * @return
	 */
	@Override
	public List<DataDirectory> getDataByDirectory(DataDirectory dataDirectory) {
		List<DataDirectory> dataDirectories = dataDirectoryMapper.getDataByDirectory(dataDirectory);
		return dataDirectories;
	}

	/**
	 * @Description 根据条件获得申请贷款项目 
	 * @param map
	 * @return
	 */
	@Override
	public List<ItemCommon> getApplyItemCommonList(Map<String, Object> map) {
		List<ItemCommon> itemCommons = itemCommonMapper.getApplyItemCommonList(map);
		return itemCommons;
	}

	/**
	 * @Description 得到记录总条数
	 * @return
	 */
	@Override
	public int getCount(Map<String, Object> map) {
		int totalCount = itemCommonMapper.getCount(map);
		return totalCount;
	}

	/**
	 * @Description 根据项目id改变项目审核状态
	 * @param itemCommon
	 * @return
	 */
	@Override
	public boolean updateIteStatusByItemCommonId(ItemCommon itemCommon) {
		if(itemCommonMapper.updateIteStatusByItemCommonId(itemCommon) > 0) {
			return true;
		}
		return false;
	}
	
	
	/**
	 * @Description 根据传入的biditem增加一个招标项目
	 * @param bidItem
	 * @return
	 */
	/*@Override
	public boolean addBidItemByItemCommon(Map<String, Object> map) {
		if(bidItemMapper.addBidItemByItemCommon(map) > 0) {
			return true;
		}
		return false;
	}*/
	@Override
	public boolean addBidItemByItemCommon(BidItem bidItem) {
		if(bidItemMapper.addBidItemByItemCommon(bidItem) > 0) {
			return true;
		}
		return false;
	}

	

}
