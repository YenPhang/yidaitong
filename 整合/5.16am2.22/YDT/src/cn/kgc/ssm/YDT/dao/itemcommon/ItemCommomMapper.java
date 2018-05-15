package cn.kgc.ssm.YDT.dao.itemcommon;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;


import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.pojo.Pawn;



public interface ItemCommomMapper {
	
	/**
	 * @Description  我是借款者 添加房产抵押贷的信息
	 * @param itemCommon
	 * @return
	 */
	public int addItemCommom(ItemCommon itemCommon);
	
	

	/**
	 * @Description   根据条件获取借贷者  项目名称（itemCommonId） 的抵押贷款 信息
	 * @param itemCommon
	 * @return
	 */
	public List<ItemCommon> getItemCommonList(Map<String, Object> map);

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
	public int updateIteStatusByItemCommonId(ItemCommon itemCommon);
	
	/**
	 * 
	 * @Description  我的抵押物信息  我的房产添加信息
	 * @param itemCommon
	 * @return
	 */
	public int addItdPawn(Pawn pawn);
	
}
