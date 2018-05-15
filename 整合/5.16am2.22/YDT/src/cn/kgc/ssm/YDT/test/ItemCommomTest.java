package cn.kgc.ssm.YDT.test;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.pojo.Pawn;
import cn.kgc.ssm.YDT.service.itemcommon.ItemCommonPawnService;

/**
 * @Description 测试管理员的业务功能
 * @author dhp667
 */
public class ItemCommomTest {

	private Logger logger = Logger.getLogger(ItemCommomTest.class);
	private ApplicationContext ctx;
	
	private ItemCommonPawnService itemCommonPawnServic;
	
	@Before
	public void Init() {
		ctx=new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");		

	}

	/**
	 * @Description 申请抵押物  添加抵押信息功能
	 */
	@Test
	public void ItemCommomMapperTest() {
		ItemCommon itemCommon=new ItemCommon();
		itemCommon.setIteLimitYuan(100000);
		itemCommon.setIteYearRate(0.13f);
		itemCommon.setIteRepayInterval("买车");
		itemCommon.setIteReason("贷款买房");
		itemCommon.setIteBidMin(10000);
		itemCommon.setIteRepayCount(10);
		itemCommon.setIteBidSum(100000);
		itemCommon.setIteRepayType("等额本息");
		itemCommon.setIteBidDate(180);
		itemCommon.setIteTitle("抵押贷款申请，资金周转");
		itemCommon.setItdContent("我需要钱");
		itemCommonPawnServic=(ItemCommonPawnService) ctx.getBean("itemCommonPawnServic");
		logger.debug(itemCommonPawnServic.addItemCommom(itemCommon));
	}
	
	
	/**
	 * @Description 我要贷款 添加抵押物信息
	 */
	
	@Test
	public void ItdPawnTest() {
		Pawn pawn =new Pawn();
		pawn.setTitleName("贷款申请");
		pawn.setItdContent("需要钱");
	
		itemCommonPawnServic=(ItemCommonPawnService) ctx.getBean("itemCommonPawnServic");
		logger.debug(itemCommonPawnServic.addItdPawn(pawn));
	}

	
	
	/**
	 * @Description 模糊查询关键字
	 */
	@Test
	public void getItemCommonListTest() {
		itemCommonPawnServic=(ItemCommonPawnService) ctx.getBean("itemCommonPawnServic");
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("iteTitle", "资金");
		
		
		
		List<ItemCommon> itemCommons = itemCommonPawnServic.getItemCommonList(map);
		for(ItemCommon itemCommon : itemCommons) {
			logger.info(itemCommon.getIteTitle());
		}
	}

}
