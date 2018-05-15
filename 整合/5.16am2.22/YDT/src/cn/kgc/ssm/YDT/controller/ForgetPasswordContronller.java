package cn.kgc.ssm.YDT.controller;

import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.kgc.ssm.YDT.pojo.User;
import cn.kgc.ssm.YDT.service.user.UserService;
import cn.kgc.ssm.YDT.tool.Constants;
import cn.kgc.ssm.YDT.tool.SendMessage;

@Controller
public class  ForgetPasswordContronller {
	private Logger logger = Logger.getLogger(ForgetPasswordContronller.class);

	@Resource(name="UserServiceImpl")
	private UserService userService;

	@RequestMapping(value="/fpsw.html")
	public String forgetPassword(){
		logger.debug("ForgetPasswordContronller welcome YDT==================");
		return "findPassWord";
	}

	@RequestMapping(value="/fpsw")
	public String userInfo(@RequestParam String userInp,String logPsw,
			@RequestParam String imgCodeInp,
			Model model,HttpSession session) throws Exception{  
		logger.debug(userInp+"==================="+imgCodeInp);
		HashMap<String, String> resultMap = new HashMap<String, String>();
		//判断是邮箱还是手机号的正则表达式  
		String em = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";  
		String ph = "^[1][34578]\\d{9}$";  
		String verifyCodeValue=(String) session.getAttribute("verifyCodeValue");
		if(userInp.matches(ph)){//手机号登录  
			if(userService.loginisExitbyph(userInp)==0){
				model.addAttribute("error", "手机号码不存在，请重新确认");
				return("error");
			}else{
				if(!verifyCodeValue.equals(imgCodeInp.toUpperCase())){
					model.addAttribute("error", "验证码错误，请重新确认");
					return("error"); 
				}else{
					User ph_member = null;  
					ph_member = userService.getLoginUserbyphuserInp(userInp, logPsw);
					session.setAttribute(Constants.USER_SESSION, ph_member);
					return "findInfo";
				}  
			}
		}else if(userInp.matches(em)){//邮箱登录   
			if(userService.loginisExitbyem(userInp)==0){
				model.addAttribute("error", "邮箱不存在，请重新确认");
				return("error");
			}else{
				if(!verifyCodeValue.equals(imgCodeInp.toUpperCase())){
					model.addAttribute("error", "验证码错误，请重新确认");
					return("error"); 
				}else{ 
					User em_member = null;  
					em_member = userService.getLoginUserbyemuserInp(userInp, logPsw);
					session.setAttribute(Constants.USER_SESSION, em_member);
					return "findInfo";
				}  
			}
		}else{//就是用户名登录  
			if(userService.loginisExitbyna(userInp)==0){
				model.addAttribute("error", "用户名不存在，请重新确认");
				return "error";
			}else{
				if(!verifyCodeValue.equals(imgCodeInp.toUpperCase())){
					model.addAttribute("error", "验证码错误，请重新确认");
					return("error"); 
				}else{  
					User name_member = null;  
					name_member = userService.getLoginUserbynauserInp(userInp, logPsw);
					session.setAttribute(Constants.USER_SESSION, name_member);
					return "findInfo";
				}  
			}
		}
	}

	@ResponseBody
	@RequestMapping(value="/sendme2")
	public String sendme2(@RequestParam(value="userTel") String userTel,
			@RequestParam(value="imgCodev") String imgCodev,
			Model model,HttpSession session) throws Exception{
		logger.debug(userTel+"========================================================"+imgCodev);
		HashMap<String, String> resultMap = new HashMap<String, String>();

		String verifyCodeValue=(String) session.getAttribute("verifyCodeValue");

		if(!verifyCodeValue.equals(imgCodev.toUpperCase())){  
			resultMap.put("result", "errorbyimg"); 
		}else { 
			HashMap<String, String> m = SendMessage.getMessageStatus(userTel); //应用发送短信接口  
			String result = m.get("result");   //获取到result值  
			if (result.trim().equals("1")) { 
				String code = m.get("code");
				logger.debug(code+"============================================================================");

				session.setAttribute("code", code);    //将短信验证码放到session中保存  
				session.setMaxInactiveInterval(60 * 3); //缓存设置3分钟

			}
		}
		return JSONArray.toJSONString(resultMap);
	}

	@ResponseBody
	@RequestMapping(value="/fpsw1")
	public Object userInfo2(
			@RequestParam(value="imgCodev")  String imgCodeInp,
			@RequestParam(value="sendFind")  String smscodeInp,
			Model model,
			HttpSession session,HttpServletRequest request) throws Exception{
		HashMap<String, String> resultMap = new HashMap<String, String>();
		logger.debug("==============="+imgCodeInp+"========="+smscodeInp);
		/*		 String imgCodeInp=request.getParameter("imgCodeInp");    
        logger.debug(userTel+"======"+userName+"============="+logPsw+"========="+imgCodeInp);*/
		String verifyCodeValue=(String) session.getAttribute("verifyCodeValue"); 
		/*String code=(String) session.getAttribute("code"); */
		logger.debug(verifyCodeValue+"===================");
		if(!verifyCodeValue.equals(imgCodeInp.toUpperCase())){  
			resultMap.put("result", "errorbycode");
		}/*else if(!code.equals(code.toUpperCase())){  
			resultMap.put("result", "errorbysms"); 
		}*/else{
			resultMap.put("result", "success");
		}
		return JSONArray.toJSONString(resultMap);  
	}

	@RequestMapping(value="/error")
	public String error(Model model){
		logger.debug("ForgetPasswordContronller welcome YDT==================");
		model.addAttribute("error", "短信验证码错误，请重新确认");
		return"error"; 
	}
	
	@RequestMapping(value="/fpsw2")
	public String forgetPassword2(){
		logger.debug("ForgetPasswordContronller welcome YDT==================");
		return "modifypsw";
	}
	
	/*public String */
	
}

