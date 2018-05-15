package cn.kgc.ssm.YDT.dao.investorRefundItem;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import cn.kgc.ssm.YDT.pojo.BidItem;
import cn.kgc.ssm.YDT.pojo.InvestorRefundItem;
import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.pojo.User;

public interface InvestorRefundItemMapper {
	/**
	 * @description  新增投资者的收款项目
	 * @param 
	 * @param 
	 * @return
	 */
	public int addRefundItem(@Param("itemCommonId")int itemCommonId,@Param("investorId")int investorId);

	
	/**
	 * @description  根据收款项目ID查询指定收款项目信息
	 * @param refundItemId
	 * @return
	 */
	public InvestorRefundItem findRefundItemByRefundItemId(@Param("refundItemId")int refundItemId);
	
	
	/**
	 * 
	 * @description  根据“我的投资”状态查询收款项目列表
	 * @param userId
	 * @param refundStatus    收款状态（收款中）
	 * @param fullScaleOrNot  满标状态（招标中）
	 * @param itemStatus      项目状态（已完成）
	 * @return
	 */
	//public List<InvestorRefundItem> findRefundItemByAllStatus(int investorid);

	/**
	 * 
	 * @description  “我的收款”根据输入项目关键字、收款日期区间查询待\已收款项目列表
	 * @param userId 用户ID、refundStatus收款状态
	 * @param iteTitle 项目关键字、startDate\endDate收款日期
	 * @return
	 */
	/*public List<InvestorRefundItem> findRefundItem(int userId, int refundStatus, Date startTime, Date endTime,
			String iteTitle) ;*/

	
	
	
}
