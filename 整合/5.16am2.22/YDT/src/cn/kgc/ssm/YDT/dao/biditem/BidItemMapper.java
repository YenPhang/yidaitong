/**
 * 
 */
package cn.kgc.ssm.YDT.dao.biditem;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.kgc.ssm.YDT.pojo.BidItem;
import cn.kgc.ssm.YDT.pojo.ItemCommon;

/**
 * @description  招标项目
 */
public interface BidItemMapper {
	/**
	 * @description  查询获取招标项目列表
	 * @param 
	 * @return       List<BidItem>
	 */
	public List<BidItem> findAllBidItem();
	
	/**
	 * @description  根据项目ID查询指定招标项目
	 * @param
	 * @return		 BidItem
	 */
	public BidItem findBidItemByBidItemId(@Param("bidItemId") Integer bidItemId);
	
	

}
