package cn.kgc.ssm.YDT.test;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.org.apache.xml.internal.security.Init;

import cn.kgc.ssm.YDT.pojo.BidItem;
import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.pojo.Notice;
import cn.kgc.ssm.YDT.pojo.Page;
import cn.kgc.ssm.YDT.service.manager.ManagerService;
import cn.kgc.ssm.YDT.service.manager.implement.ManagerServiceImplement;
/**
 * @Description 测试管理员的业务功能
 * @author dhp667
 */
public class ManagerMapperTest {
	
	private Logger logger = Logger.getLogger(ManagerMapperTest.class);
	private ApplicationContext ctx;
	private ManagerService managerService;
	@Before
	public void Init() {
		ctx=new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");		

	}
	
	
	/**
	 * @Description 测试管理员的添加公告的功能
	 */
	@Test
	public void addNoticeTest() {
		Notice notice = new Notice();
		notice.setNoticeTitle("2");
		notice.setNoticeFrom("杂志");
		notice.setNoticeContent("2");
		notice.setNoticeTypeId(2);
		managerService = (ManagerService) ctx.getBean("managerService");
		logger.debug(managerService.addNotice(notice));
		
	}
	
	/**
	 * @Description 测试管理员的修改公告功能
	 */
	@Test
	public void modifyNoticeByIdTest() {
		Notice notice = new Notice();
		notice.setNoticeId(2);
		notice.setNoticeTitle("3");
		notice.setNoticeFrom("杂志3");
		notice.setNoticeContent("3");
		notice.setNoticeTypeId(2);
		managerService = (ManagerService) ctx.getBean("managerService");
		logger.debug(managerService.modifyNoticeById(notice));
	}
	
	/**
	 * @Description 测试管理员的查询公告功能
	 */
	@Test
	public void getNoticeListByNoticeTypeIdTest() {
		managerService = (ManagerService) ctx.getBean("managerService");
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("noticeTypeId", 2);
		map.put("title","测试" );
		map.put("stime", "1992-01-01");
		map.put("etime", "2018-05-12");
		
		
		List<Notice> notices = managerService.getNoticeListByNoticeTypeId(map);
		for(Notice notice : notices) {
			logger.info(notice.getNoticeTitle());
		}
	}
	/**
	 * @Description 测试管理员的获取贷款申请项目列表
	 */
	@Test
	public void toApplyLoanListTest() {
		managerService = (ManagerService) ctx.getBean("managerService");
		int pageCurrentNo = 1;
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("currentCount", 2);
		map.put("pageSize", 5);
		List<ItemCommon> itemCommons = new ArrayList<ItemCommon>();
		itemCommons = managerService.getApplyItemCommonList(map);
		if(itemCommons == null) {
			System.out.println("为空");
		}else {
		System.out.println(itemCommons.size());
		}
		/*for(ItemCommon itemCommon : itemCommons) {
			System.out.println(itemCommon.getIteLimitYuan());
		}*/
		/*map.remove("currentCount");
		map.remove("pageSize");
		int totalCount = managerService.getCount(map);
		System.out.println(totalCount);
		Page page = new Page();
		page.setCurrentPageNo(pageCurrentNo);
		System.out.println(page.getTotalPageCount());*/
		
	}
	
	public Object addItemInfo(@RequestParam(value = "itemCommonId") String itemCommonId,Model model){
		model.addAttribute("itemCommonId",itemCommonId);
		return "admin/transferbiditem";
	}

	@Test
	public void updateIteStatusByItemCommonIdTest(){
		managerService = (ManagerService) ctx.getBean("managerService");
		BidItem bidItem = new BidItem();
		bidItem.setCreditLevel("1");
		managerService.addBidItemByItemCommon(bidItem);
		/*Map<String, Object> map = new HashMap<String,Object>();
		map.put("creditLevel","1");
		managerService.addBidItemByItemCommon(map);*/
		
		
	}
	
}
