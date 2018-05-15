package cn.kgc.ssm.YDT.service.itemcommon;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.pojo.Pawn;


public interface ItemCommonPawnService {
	
	
	/**
	 * 
	 * @Description 我是借款者 我要抵押贷款 添加抵押贷款信息
	 * @param itemCommon
	 * @return
	 */
	public boolean addItemCommom(ItemCommon itemCommon);
	
	/**
	 * 
	 * @Description   根据条件获取借贷者  项目名称（itemCommonId） 的抵押贷款 信息
	 * @param itemCommon
	 * @return
	 */
	public List<ItemCommon> getItemCommonList(@Param("iteTitle")Map<String, Object> map);

	/**
	 * 
	 * @Description  我的抵押物信息  我的房产添加信息
	 * @param itemCommon
	 * @return
	 */
	public boolean addItdPawn(Pawn pawn);
	
	
}