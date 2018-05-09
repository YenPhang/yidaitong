package cn.kgc.ssm.YDT.test;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Repository;

import com.sun.org.apache.xml.internal.security.Init;

import cn.kgc.ssm.YDT.pojo.Notice;
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
		List<Notice> notices = managerService.getNoticeListByNoticeTypeId(2);
		for(Notice notice : notices) {
			logger.info(notice.getNoticeFrom());
		}
	}
}
