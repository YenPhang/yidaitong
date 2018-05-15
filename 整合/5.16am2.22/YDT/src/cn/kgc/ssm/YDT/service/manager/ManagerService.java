package cn.kgc.ssm.YDT.service.manager;

import java.util.List;
import java.util.Map;

import cn.kgc.ssm.YDT.pojo.BidItem;
import cn.kgc.ssm.YDT.pojo.DataDirectory;
import cn.kgc.ssm.YDT.pojo.ItemCommon;
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
	 * @Description 根据前台传入的各种参数种类查询所有公告
	 * @param map
	 * @return
	 */
	public List<Notice> getNoticeListByNoticeTypeId(Map<String, Object> map);

	/**
	 * @Description 根据传入的noticeId删除notice
	 * @return
	 */
	public boolean deleteNoticeByNoticeId(Notice notice);
	
	/**
	 * @Description 根据前台传入的数据字典信息查到对应的记录
	 * @param dataDirectory
	 * @return
	 */
	public List<DataDirectory> getDataByDirectory(DataDirectory dataDirectory);

	/**
	 * @Description 根据条件获得申请贷款项目 
	 * @param map
	 * @return
	 */
	public List<ItemCommon> getApplyItemCommonList(Map<String, Object> map);
	
	/**
	 * @Description 得到记录总条数
	 * @return
	 */
	public int getCount(Map<String, Object> map);
	
	/**
	 * @Description 根据项目id改变项目审核状态
	 * @param itemCommon
	 * @return
	 */
	public boolean updateIteStatusByItemCommonId(ItemCommon itemCommon);
	
	/**
	 * @Description 根据传入的biditem增加一个招标项目
	 * @param map
	 * @return
	 */
//	public boolean addBidItemByItemCommon(Map<String, Object> map);
	public boolean addBidItemByItemCommon(BidItem bidItem);
}
