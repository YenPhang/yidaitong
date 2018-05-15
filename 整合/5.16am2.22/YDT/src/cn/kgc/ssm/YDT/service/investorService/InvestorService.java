package cn.kgc.ssm.YDT.service.investorService;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import cn.kgc.ssm.YDT.pojo.BidItem;
import cn.kgc.ssm.YDT.pojo.InvestorRefundItem;
import cn.kgc.ssm.YDT.pojo.InvestorTransferItem;
import cn.kgc.ssm.YDT.pojo.ItemCommon;

public interface InvestorService {
	/**
	 * @description  查询获取招标项目列表
	 * @param 
	 * @return       List<BidItem>
	 */
	public List<BidItem> findAllBidItem();
	
	
	/**
	 * @description  根据招标项目ID查询指定招标项目
	 * @param	     bidItemId 投资项目ID
	 * @return		 BidItem 
	 */
	public BidItem findBidItemByBidItemId(int bidItemId);
	
	/**
	 * @description  新增投资者的收款项目
	 * @param 
	 * @param 
	 * @return
	 */
	public boolean addRefundItem(int itemCommonId,int investorId);
	

	/**
	 * @description  根据收款项目ID查询指定收款项目信息
	 * @param refundItemId
	 * @return
	 */
	public InvestorRefundItem findRefundItemByRefundItemId(int refundItemId);
	
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
}
