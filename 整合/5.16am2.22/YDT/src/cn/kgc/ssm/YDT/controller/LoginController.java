package cn.kgc.ssm.YDT.controller;



import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mysql.jdbc.StringUtils;

import cn.kgc.ssm.YDT.pojo.User;
import cn.kgc.ssm.YDT.service.user.UserService;
import cn.kgc.ssm.YDT.tool.Constants;


@Controller
public class LoginController {
	private Logger logger = Logger.getLogger(LoginController.class);

	@Resource(name="UserServiceImpl")
	private UserService userService;

	@RequestMapping(value="/login.html")
	public String login(){
		logger.debug("LoginController welcome YDT==================");
		return "loginydt";
	}

	@RequestMapping(value = "/login" )
	@ResponseBody
	public Object login(@RequestParam String userInp,@RequestParam String logPsw,HttpSession session) throws Exception{  
		logger.debug(userInp+"==================="+logPsw);
		HashMap<String, String> resultMap = new HashMap<String, String>();
		//判断是邮箱还是手机号的正则表达式  
		String em = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";  
		String ph = "^[1][34578]\\d{9}$";  

		if(userInp.matches(ph)){//手机号登录  
			if(userService.loginisExitbyph(userInp)==0){
				resultMap.put("result", "nologincode");
			}else{
				User ph_member = null;  
				ph_member = userService.getLoginUserbyphuserInp(userInp, logPsw);  
				if(ph_member == null){  
					resultMap.put("result", "pwderror");  
				}else{  
					session.setAttribute(Constants.USER_SESSION, ph_member);
/*					User updateLoginTimeUser =new User();
					updateLoginTimeUser.setUserId(ph_member.getUserId());
					updateLoginTimeUser.setLastLoginTime(new Date());
					userService.modifyUser(updateLoginTimeUser);*/
					resultMap.put("result", "success");   
				}  
			}
		}else if(userInp.matches(em)){//邮箱登录   
			if(userService.loginisExitbyem(userInp)==0){
				resultMap.put("result", "nologincode");
			}else{
				User em_member = null;  
				em_member = userService.getLoginUserbyemuserInp(userInp, logPsw);  
				if(em_member == null){  
					resultMap.put("result", "pwderror");  
				}else{  
					session.setAttribute(Constants.USER_SESSION, em_member);
/*					User updateLoginTimeUser =new User();
					updateLoginTimeUser.setUserId(em_member.getUserId());
					updateLoginTimeUser.setLastLoginTime(new Date());
					userService.modifyUser(updateLoginTimeUser);*/
					resultMap.put("result", "success");    
				}  
			}
		}else{//就是用户名登录  
			if(userService.loginisExitbyna(userInp)==0){
				resultMap.put("result", "nologincode");
			}else{
				User name_member = null;  
				name_member = userService.getLoginUserbynauserInp(userInp, logPsw);  
				if(name_member == null){  
					resultMap.put("result", "pwderror");    
				}else{     
					session.setAttribute(Constants.USER_SESSION, name_member);
/*					User updateLoginTimeUser =new User();
					updateLoginTimeUser.setUserId(name_member.getUserId());
					updateLoginTimeUser.setLastLoginTime(new Date());
					userService.modifyUser(updateLoginTimeUser);*/
					resultMap.put("result", "success");   
				}  
			}
		}
		return JSONArray.toJSONString(resultMap);  
	}

	@RequestMapping(value="/main.html")
	public String main(HttpSession session){
		User currentUser=(User)session.getAttribute(Constants.USER_SESSION);
		logger.debug("main=============="+currentUser.getUserTel());
		return "totalview";
	}
	
	@RequestMapping(value="/logout.html")
	public String logout(HttpSession session){
		//清除session
		session.removeAttribute(Constants.USER_SESSION);
		return "login";
	}


}
