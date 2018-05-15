package cn.kgc.ssm.YDT.service.investorService.impl;

import cn.kgc.ssm.YDT.dao.biditem.BidItemMapper;
import cn.kgc.ssm.YDT.dao.investorRefundItem.InvestorRefundItemMapper;
import cn.kgc.ssm.YDT.pojo.BidItem;
import cn.kgc.ssm.YDT.pojo.InvestorRefundItem;
import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.service.investorService.InvestorService;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

import javax.annotation.Resource;


@Service("investorService")
public class InvestorServiceImpl implements InvestorService {

	@Autowired
	@Qualifier("bidItemMapper")
	private BidItemMapper bidItemMapper;
	
	@Resource(name="investorRefundItemMapper")
	private InvestorRefundItemMapper investorRefundItemMapper;

	/**
	 * @description  查询获取招标项目列表
	 * @param
	 * @return       List<BidItem>
	 */
	@Override
	public List<BidItem> findAllBidItem() {
		List<BidItem> bidItems = bidItemMapper.findAllBidItem();
		return bidItems;
	}

	/**
	 * @description  根据招标项目ID查询指定招标项目
	 * @param
	 * @return		 BidItem
	 */
	@Override
	public BidItem findBidItemByBidItemId(int bidItemId) {
		BidItem biditem = bidItemMapper.findBidItemByBidItemId(bidItemId);
		return biditem;
	}

	/**
	 * @description  新增投资者的收款项目
	 * @param 
	 * @param 
	 * @return
	 */
	@Override
	public boolean addRefundItem(int itemCommonId, int investorId) {
		int i =investorRefundItemMapper.addRefundItem(itemCommonId, investorId);
		if(i > 0) {
			return true;
		}else {
			return false;
		}
	}

	/**
	 * @description  根据收款项目ID查询指定收款项目信息
	 * @param refundItemId
	 * @return
	 */
	public InvestorRefundItem findRefundItemByRefundItemId(int refundItemId) {
		InvestorRefundItem investorRefundItem = investorRefundItemMapper.findRefundItemByRefundItemId(refundItemId);
		return investorRefundItem;
	}
	
	
	/**
	 * 
	 * @description  根据“我的投资”状态查询收款项目列表
	 * @param userId
	 * @param refundStatus    收款状态（收款中）
	 * @param fullScaleOrNot  满标状态（招标中）
	 * @param itemStatus      项目状态（已完成）
	 * @return
	 */
	/*@Override
	public List<InvestorRefundItem> findRefundItemByAllStatus(int investorid){
		List<InvestorRefundItem> investorRefundItems = investorRefundItemMapper.findRefundItemByAllStatus(1);
		return investorRefundItems;
		
	}*/

	

	

}
