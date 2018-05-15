package cn.kgc.ssm.YDT.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Random;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.kgc.ssm.YDT.service.user.UserService;
import cn.kgc.ssm.YDT.tool.Constants;
import cn.kgc.ssm.YDT.tool.SendImgCode;
import cn.kgc.ssm.YDT.tool.SendMessage;


@Controller
public class RegisterController {
private Logger logger = Logger.getLogger(RegisterController.class);
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/register.html")
	public String register(){
		logger.debug("RegisterController welcome SMBMS==================");
		return "register";
	}
	
	/** 
     * 获取验证码 
     *  
     * @param response 
     * @param session 
     */  
    @RequestMapping("/getVerifyCode")  
    public void generate(HttpServletResponse response, HttpSession session) {  
        ByteArrayOutputStream output = new ByteArrayOutputStream();  
        String verifyCodeValue = SendImgCode.drawImg(output);  
  
        session.setAttribute("verifyCodeValue", verifyCodeValue);  
  
        try {  
            ServletOutputStream out = response.getOutputStream();  
            output.writeTo(out);  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
  

    
    @ResponseBody
   	@RequestMapping(value="/sendme" ,method = RequestMethod.GET)
   	public Object sendme(@RequestParam(value="userTel") String userTel,HttpSession session) throws Exception{
       	HashMap<String, String> resultMap = new HashMap<String, String>();
       	if(userService.registerisExitbyph(userTel)==1){
           	resultMap.put("result", "existbyph");
       	}else{
   		HashMap<String, String> m = SendMessage.getMessageStatus(userTel); //应用发送短信接口  
   		String result = m.get("result");   //获取到result值  
   		if (result.trim().equals("1")) {  
   			String code = m.get("code");
   			logger.debug(code+"============================================================================");

   			session.setAttribute("code", code);    //将短信验证码放到session中保存  
   			/*session.setMaxInactiveInterval(60 * 3);*/ //缓存设置3分钟
   			
   			resultMap.put("result", "success");
   		}else{
   			resultMap.put("result", "error");
   		}
   	}
   		return JSONArray.toJSONString(resultMap);
      }    	
    
	@RequestMapping(value = "/register" )
	@ResponseBody
	public Object register(@RequestParam(value="userTel") String userTel,
			               @RequestParam(value="userName") String userName,
			               @RequestParam(value="logPsw") String logPsw,
			               @RequestParam(value="imgCodeInp")  String imgCodeInp,
			               @RequestParam(value="smscodeInp")  String smscodeInp,
			               HttpSession session,HttpServletRequest request) throws Exception{
		HashMap<String, String> resultMap = new HashMap<String, String>();
		logger.debug(userTel+"======"+userName+"============="+logPsw+"========="+imgCodeInp+"========="+smscodeInp);
/*		 String imgCodeInp=request.getParameter("imgCodeInp");    
			logger.debug(userTel+"======"+userName+"============="+logPsw+"========="+imgCodeInp);*/
	        String verifyCodeValue=(String) session.getAttribute("verifyCodeValue"); 
	        String code=(String) session.getAttribute("code"); 
	        logger.debug(verifyCodeValue+"===================");
	        if(userService.registerisExitbyph(userTel)==1){
	        	resultMap.put("result", "existbyph");
	        }else if(userService.registerisExitbyna(userName)==1){
	        	resultMap.put("result", "existbyna");
	        }else if(!verifyCodeValue.equals(imgCodeInp.toUpperCase())){  
	        	resultMap.put("result", "errorbyimg"); 
	        }else if(!code.equals(code.toUpperCase())){  
	        	resultMap.put("result", "errorbysms"); 
	        }else{
	        	userService.adduser(userTel, userName, logPsw);
	        	resultMap.put("result", "success");
	        }  
		 return JSONArray.toJSONString(resultMap); 
	}

}
