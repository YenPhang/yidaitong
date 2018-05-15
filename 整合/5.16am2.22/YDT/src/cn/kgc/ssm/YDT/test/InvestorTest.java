package cn.kgc.ssm.YDT.test;

import cn.kgc.ssm.YDT.pojo.BidItem;
import cn.kgc.ssm.YDT.pojo.InvestorRefundItem;
import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.service.investorService.InvestorService;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

import static org.junit.Assert.*;
/**
 * @Description 测试投资项目列表查询功能
 */
public class InvestorTest {
	
	private Logger logger = Logger.getLogger(InvestorTest.class);
	private ApplicationContext ctx;
	private InvestorService investorService;
	@Before
	public void Init() {
		ctx=new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
	}

    /**
     * @Description 测试查询招标列表功能
     */
	@Test
    public void findAllBidItemTest(){
        investorService = (InvestorService) ctx.getBean("investorService");
        List<BidItem> bidItems = investorService.findAllBidItem();
        for(BidItem bidItem:bidItems) {
            logger.info(bidItem.getBidItemId());
        }
    }
	
	/**
     * @Description 测试查询招标项目详细信息功能
     */
	@Test
	public void findBidItemByBidItemIdTest(){
		investorService = (InvestorService) ctx.getBean("investorService");
		BidItem bidItem = investorService.findBidItemByBidItemId(2);
		logger.info(bidItem);
	}

	/**
	 * 
	 * @description  测试添加收款项目
	 */
	@Test
	public void addRefundItemTest() {
		investorService =  (InvestorService) ctx.getBean("investorService");
		boolean flag =investorService.addRefundItem(10, 3);
		logger.info(flag);
	}
	
	/**
	 * 
	 * @description  根据收款项目ID查看收款项目明细
	 */
	@Test
	public void findRefundItemByRefundItemId() {
		investorService = (InvestorService) ctx.getBean("investorService");
		InvestorRefundItem investorRefundItem = investorService.findRefundItemByRefundItemId(1);
		logger.info(investorRefundItem);
	}
}
