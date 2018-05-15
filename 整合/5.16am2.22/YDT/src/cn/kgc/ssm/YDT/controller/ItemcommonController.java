package cn.kgc.ssm.YDT.controller;



import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.pojo.Pawn;
import cn.kgc.ssm.YDT.pojo.User;
import cn.kgc.ssm.YDT.service.itemcommon.ItemCommonPawnService;
import cn.kgc.ssm.YDT.tool.Constants;



@Controller
@RequestMapping(value="/icps")
public class ItemcommonController {
	private Logger logger = Logger.getLogger(LoginController.class);
	@Resource (name="itemCommonPawnServic")
	private ItemCommonPawnService icps;

	//新增加抵押物品
	@RequestMapping(value="/addpawn.html")
	public String addpawn(){
		logger.debug("LoginController welcome YDT==================");
		return "/myloan/addpawn";
	}

	@RequestMapping("/addpawn.html")
	public String addpawn(Pawn pawn,HttpSession session
			){
		//登陆人的id
		long   loginerid   = ((User)(session.getAttribute(Constants.USER_SESSION))).getUserId();  

		if(icps.addItdPawn(pawn)){
			return "success";
			//return "redirect:/bill/billlist.html";
		}
		return "/myloan/addpawn";
	}


	//申请信用抵押
	@RequestMapping(value="/applyloanitem.html")
	public String applyloanitem(@ModelAttribute ItemCommon itemCommon){
		logger.debug("LoginController welcome YDT==================");
		return "/myloan/applyloanitem";
	}


	@RequestMapping("/addicn.html")
	public String addItemCommon(ItemCommon itemCommon,HttpSession session
			){
		//登陆人的id
		long   loginerid   = ((User)(session.getAttribute(Constants.USER_SESSION))).getUserId();  

		if(icps.addItemCommom(itemCommon)){
			return "success";
			//return "redirect:/bill/billlist.html";
		}
		return "/myloan/applyloanitem";
	}

	/*
	//进入订单列表
	@RequestMapping("/billlist.html")
	public String billlist(
			@RequestParam(value = "queryProductName",required = false)String productName,
			@RequestParam(value = "queryProviderId",required = false) String providerid,
			@RequestParam(value = "queryIsPayment",required = false) String isPayment,
			@RequestParam(value = "pageIndex",required = false) String pageIndex,
			Model m ){
		int _providerid =0;  //供应商id
		int _isPayment = 0;    //是否付款
		if(productName ==null){
			productName ="";
		}
		if(providerid != null && !providerid.equals("")){
			_providerid = Integer.parseInt(providerid);
		}
		if (isPayment!=null && !isPayment.equals("")){
			_isPayment = Integer.parseInt(isPayment);
		}
		int currentpage = 1; //当前页   //默认从第一页开始
		int pageSize = Constants.pageSize; //页面容量
		if(pageIndex!=null){
			try {
				currentpage = Integer.valueOf(pageIndex);
			} catch (NumberFormatException e) {
				//否则就跳转到错误页面
				return  "redirect:/user/syserror.html";
			}
		}
		PageSupport pages=new PageSupport();
		pages.setCurrentPageNo(currentpage);//当前页
		pages.setPageSize(pageSize); //页面容量
		int totalcount=billservice.getcount(productName,_providerid, _isPayment);
		pages.setTotalCount(totalcount);//总记录数
		int totalPageCount = pages.getTotalPageCount(); //总页数
		//控制首页和尾页
		if(currentpage < 1){   //如果当前页码小于1 就等于1
			currentpage = 1;
		}else if(currentpage > totalPageCount){ //如果当前页码大于总页数  就等于总页数
			currentpage = totalPageCount;
		}
		List<Bill> billlist= billservice.billlist(productName, _providerid, _isPayment, ((currentpage-1)*pageSize), pageSize);
		m.addAttribute("bill",billlist);
		m.addAttribute("queryProductName",productName );//用于数据回显    用户名
		m.addAttribute("queryProviderId",_providerid); //用于数据回显    角色id
		m.addAttribute("queryIsPayment", _isPayment);// 总页数
		m.addAttribute("totalPageCount", totalPageCount); //总页数
		m.addAttribute("totalCount",totalcount); //查找到的总记录数
		m.addAttribute("currentPageNo",currentpage);//当前页码	
		return "billlist";
	}
	//进入添加订单列表
	@RequestMapping("/billadd.html")
	public String billadd(@ModelAttribute Bill bill){
		return "billadd";
	}
	//把要添加的订单保存到数据库‘
	@RequestMapping("/savebill.html")
	public String savebill(Bill bill,HttpSession session
			){
		//登陆人的id
		long   loginerid   = ((User)(session.getAttribute(Constants.SESSION))).getId();  
		bill.setCreatedBy(loginerid);
		//创建时间
		bill.setCreationDate( new  Date());
		if(billservice.savebill(bill)==1){
			return "redirect:/bill/billlist.html";
		}
		return "billadd";
	}
*/







}


















