package cn.kgc.ssm.YDT.service.user;

import org.apache.ibatis.annotations.Param;

import cn.kgc.ssm.YDT.pojo.User;


public interface UserService {

	public User getLoginUserbyphuserInp(@Param("userTel")String userInp,@Param("logPsw")String logPsw)throws Exception;
	
	public User getLoginUserbyemuserInp(@Param("email")String userInp,@Param("logPsw")String logPsw)throws Exception;
	
	public User getLoginUserbynauserInp(@Param("userName")String userInp,@Param("logPsw")String logPsw)throws Exception;
	
	public int loginisExitbyph(@Param("userTel")String userInp)throws Exception;
	
	public int loginisExitbyna(@Param("userName")String userInp)throws Exception;
	
	public int loginisExitbyem(@Param("emial")String userInp)throws Exception;
	
	public int modifyUser(User user)throws Exception;
	
	public int adduser(@Param("userTel") String userTel, @Param("userName") String userName,@Param("logPsw") String logPsw)throws Exception;
	
	public int registerisExitbyph(@Param("userTel")String userTel)throws Exception;
	
	public int registerisExitbyna(@Param("userName")String userName)throws Exception;
}
