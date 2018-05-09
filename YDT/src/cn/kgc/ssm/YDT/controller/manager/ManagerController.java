package cn.kgc.ssm.YDT.controller.manager;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.kgc.ssm.YDT.pojo.Notice;
import cn.kgc.ssm.YDT.service.manager.ManagerService;

@Controller
@RequestMapping(value = "/manager")
public class ManagerController {
	@Autowired
	private ManagerService managerService;
	
	@RequestMapping(value = "/tonoticelist.html")
	public String toNoticeList(@RequestParam(value = "noticeTypeId",required = false) String noticeTypeId,Model model) {
		List<Notice> notices = new ArrayList<Notice>();
		int typeId = 0;
		if(noticeTypeId != null) {
			typeId = Integer.parseInt(noticeTypeId);
		}
		notices = managerService.getNoticeListByNoticeTypeId(typeId);
		System.out.println(notices.get(1).getNoticeFrom());
		model.addAttribute("notices",notices);
		return "admin/noticelist";
	}
	

}
