package cn.kgc.ssm.YDT.controller.manager;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.sun.org.apache.xpath.internal.operations.Mod;

import cn.kgc.ssm.YDT.pojo.BidItem;
import cn.kgc.ssm.YDT.pojo.DataDirectory;
import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.pojo.Notice;
import cn.kgc.ssm.YDT.pojo.Page;
import cn.kgc.ssm.YDT.service.manager.ManagerService;

@Controller
@RequestMapping(value = "/manager")
public class ManagerController {
	@Autowired
	private ManagerService managerService;
	/**
	 * @Description 根据传入的版块种类显示所有的公告到前台
	 * @param noticeTypeId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/tonoticelist")
	public String toNoticeList(@RequestParam(value = "noticeTypeId",required = false)
	String noticeTypeId,@RequestParam(value = "stime",required = false)
	String stime,@RequestParam(value = "etime",required = false)
	String etime,@RequestParam(value = "title",required = false)
	String title,  Model model) {
		List<Notice> notices = new ArrayList<Notice>();
		int typeId = 0;
		Map<String, Object> map = new HashMap<String,Object>();
		if(noticeTypeId != null) {
			typeId = Integer.parseInt(noticeTypeId);
			map.put("noticeTypeId", typeId);
		}
		map.put("title",title );
		map.put("stime", stime);
		map.put("etime", etime);
		notices = managerService.getNoticeListByNoticeTypeId(map);
		model.addAttribute("notices",notices);
		DataDirectory dataDirectory = new DataDirectory();
		dataDirectory.setTypeCode("noticeType");
		List<DataDirectory> dataDirectories = managerService.getDataByDirectory(dataDirectory);
		model.addAttribute("dataDirectories", dataDirectories);
		return "admin/noticelist";
	}
	
	/**
	 * @Description 根据前台传入的公告信息增加到数据库中
	 * @param notice
	 * @return
	 */
	@RequestMapping(value = "/addnotice")
	public String addNotice(Notice notice) {
		if(notice == null) {
			System.out.println("未能传入参数");
			
		}
		if(managerService.addNotice(notice)) {
			System.out.println("添加公告成功");
			
		}
		return "redirect:/manager/tonoticelist";
	};
	
	/**
	 * @Description 根据传入的noticeId查找到对应的公告的详细信息
	 * @param notice
	 * @return
	 */
	@RequestMapping(value="/toviewnotice")
	public String viewNotice(@RequestParam("noticeId")String noticeId,Model model) {
		int id = 0;
		Map<String, Object> map = new HashMap<String,Object>();
		if(noticeId != null) {
			id = Integer.parseInt(noticeId);
			map.put("noticeId", id);
		}
		Notice notice = managerService.getNoticeListByNoticeTypeId(map).get(0);
		System.err.println(notice.getNoticeTypeName());
		model.addAttribute("notice",notice);
		
		return "admin/viewnotice";
	}
	
	/**
	 * @Description 根据前台传入的noticeId查找到对应的公告显示在前台默认值提示进行修改
	 * @param noticeId
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/tomodifynotice")
	public String toModifyNoticce(@RequestParam("noticeId")String noticeId,Model model) {
		int id = 0;
		Map<String, Object> map = new HashMap<String,Object>();
		if(noticeId != null) {
			id = Integer.parseInt(noticeId);
			map.put("noticeId", id);
		}
		Notice notice = managerService.getNoticeListByNoticeTypeId(map).get(0);
		System.err.println(notice.getNoticeTypeName());
		model.addAttribute("notice",notice);
		DataDirectory dataDirectory = new DataDirectory();
		dataDirectory.setTypeCode("noticeType");
		List<DataDirectory> dataDirectories = managerService.getDataByDirectory(dataDirectory);
		model.addAttribute("dataDirectories", dataDirectories);
		return "admin/modifynotice";
	}
	
	/**
	 * @Description 通过前台传入的notice对相同noticeId的公告进行修改
	 * @param notice
	 * @return
	 */
	@RequestMapping(value="/modifynotice")
	public String modifyNotice(Notice notice) {
		System.err.println(notice.getNoticeTime());
		if(managerService.modifyNoticeById(notice)) {
			System.out.println("修改成功");
		}
		return "redirect:/manager/tonoticelist";
	}
	
	@RequestMapping(value="deletenotice")
	public String deleteNoticeByNoticeId(Notice notice) {
		if(managerService.deleteNoticeByNoticeId(notice)) {
			System.err.println("删除公告成功");
		}
		return "redirect:/manager/tonoticelist";
	}
	/**
	 * @Description 根据参数获得贷款申请项目列表
	 * @param iteStatus
	 * @param stime
	 * @param etime
	 * @param title
	 * @param pageNo
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/toapplyloanlist")
	public Object toApplyLoanList(@RequestParam(value = "iteStatus",required = false) String iteStatus,@RequestParam(value = "stime",required = false)String stime,
			@RequestParam(value = "etime",required = false)String etime,@RequestParam(value = "title",required = false)String title,@RequestParam(value = "pageNo",required= false) String pageNo,Model model) {
		int pageCurrentNo = 1;
		if(pageNo != null && !("".equals(pageNo))) {
			pageCurrentNo = Integer.parseInt(pageNo);
		}
		Integer currentCount = (pageCurrentNo - 1) * 5;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("iteStatus", iteStatus);
		map.put("stime", stime);
		map.put("etime", etime);
		map.put("title", title);
		map.put("currentCount", currentCount);
		map.put("pageSize", 1);
		model.addAttribute("previousselect", map);
		List<ItemCommon> itemCommons = managerService.getApplyItemCommonList(map);
		map.remove("pageNo");
		map.remove("pageSize");
		int totalCount = managerService.getCount(map);
		Page page = new Page();
		page.setCurrentPageNo(pageCurrentNo);
		page.setTotalCount(totalCount);
		System.err.println(itemCommons.size());
		model.addAttribute("itemCommons",itemCommons);
		model.addAttribute("page",page);
		DataDirectory dataDirectory = new DataDirectory();
		dataDirectory.setTypeCode("iteStatus");
		List<DataDirectory> dataDirectories = managerService.getDataByDirectory(dataDirectory);
		model.addAttribute("dataDirectories", dataDirectories);
		model.addAttribute("iteStatus", iteStatus);
		model.addAttribute("stime", stime);
		model.addAttribute("etime", etime);
		model.addAttribute("title", title);
		return "admin/applyloanlist";
	}
	
	/**
	 * @Description 根据前台传入的项目id和项目状态对项目的状态进行更改
	 * @param itemCommonId
	 * @param iteStatus
	 * @return
	 */
	@RequestMapping(value="/updateIteStatus")
	@ResponseBody
	public Object updateIteStatusByItemCommonId(@RequestParam(value = "itemCommonId") String itemCommonId,@RequestParam(value = "iteStatus") String iteStatus){
		ItemCommon itemCommon = new ItemCommon();
		if(itemCommonId != null && !("" .equals(itemCommonId))) {
			
		itemCommon.setItemCommonId(Integer.parseInt(itemCommonId));
		}
		
		itemCommon.setIteStatus(iteStatus);
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(managerService.updateIteStatusByItemCommonId(itemCommon)) {
			map.put("result", "success");
		}else {
			map.put("result", "error");
		}
		return JSONArray.toJSON(map);
	}
	
	/**
	 * @Description 跳转到完善资料页面，完善项目资料
	 * @param itemCommonId
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/totransferapplyloantobiditem")
	public Object addItemInfo(@RequestParam(value = "itemCommonId") String itemCommonId,Model model){
		model.addAttribute("itemCommonId",itemCommonId);
		return "admin/transferbiditem";
	}
	
	/**
	 * @Description 经过管理员审核进行初始化招标项目
	 * @param bidItem
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/transferbiditem")
	public Object updateIteStatusByItemCommonId(BidItem bidItem,Model model){
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("itemCommonId", bidItem.getItemCommonId());
		List<ItemCommon> itemCommons = managerService.getApplyItemCommonList(map);
		
		
		ItemCommon itemCommon = itemCommons.get(0);
		itemCommon.setIteStatus("3");
		//将贷款申请项目状态改成已完结
				managerService.updateIteStatusByItemCommonId(itemCommon);
		bidItem.setRaiseDays(itemCommon.getIteBidDate()*24*60*60);
		bidItem.setCanInvestCash(itemCommon.getIteBidSum());
		if(managerService.addBidItemByItemCommon(bidItem)) {
			System.err.println("初始化招标项目成功");
			return "redirect:/manager/toapplyloanlist";
		}else {
			System.err.println("初始化招标项目失败");
			return "redirect:/manager/toapplyloanlist";
		}
		
	}
	@RequestMapping(value="/toaddpawn")
	public String toAddPawn() {
		return "admin/addpawn";
	}
	
	/*
	@RequestMapping(value="/appinfoaddsave",method=RequestMethod.POST)
	public String addSave(AppInfo appInfo,HttpSession session,HttpServletRequest request,
					@RequestParam(value="a_logoPicPath",required= false) MultipartFile attach){		
		
		String logoPicPath =  null;
		String logoLocPath =  null;
		if(!attach.isEmpty()){
			String path = request.getSession().getServletContext().getRealPath("statics"+java.io.File.separator+"uploadfiles");
			System.err.println("uploadFile path: " + path);
			String oldFileName = attach.getOriginalFilename();//原文件名
			String prefix = FilenameUtils.getExtension(oldFileName);//原文件后缀
			int filesize = 500000;
			if(attach.getSize() > filesize){//上传大小不得超过 50k
				request.setAttribute("fileUploadError", Constants.FILEUPLOAD_ERROR_4);
				return "developer/appinfoadd";
            }else if(prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") 
			   ||prefix.equalsIgnoreCase("jepg") || prefix.equalsIgnoreCase("pneg")){//上传图片格式
				 String fileName = appInfo.getAPKName() + ".jpg";//上传LOGO图片命名:apk名称.apk
				 File targetFile = new File(path,fileName);
				 if(!targetFile.exists()){
					 targetFile.mkdirs();
				 }
				 try {
					attach.transferTo(targetFile);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					request.setAttribute("fileUploadError", Constants.FILEUPLOAD_ERROR_2);
					return "developer/appinfoadd";
				} 
				 logoPicPath = request.getContextPath()+"/statics/uploadfiles/"+fileName;
				 logoLocPath = path+File.separator+fileName;
			}else{
				request.setAttribute("fileUploadError", Constants.FILEUPLOAD_ERROR_3);
				return "developer/appinfoadd";
			}
		}
		appInfo.setCreatedBy(((DevUser)session.getAttribute(Constants.DEV_USER_SESSION)).getId());
		appInfo.setCreationDate(new Date());
		appInfo.setLogoPicPath(logoPicPath);
		appInfo.setLogoLocPath(logoLocPath);
		appInfo.setDevId(((DevUser)session.getAttribute(Constants.DEV_USER_SESSION)).getId());
		appInfo.setStatus(1);
		try {
			if(appInfoService.add(appInfo)){
				return "redirect:/dev/flatform/app/list";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "developer/appinfoadd";
	}*/
	
}
