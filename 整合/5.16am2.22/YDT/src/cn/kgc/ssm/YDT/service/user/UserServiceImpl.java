package cn.kgc.ssm.YDT.service.user;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import cn.kgc.ssm.YDT.dao.user.UserMapper;
import cn.kgc.ssm.YDT.pojo.User;
import cn.kgc.ssm.YDT.service.user.UserService;

@Service("UserServiceImpl")
public class UserServiceImpl implements UserService{

	@Resource
	private  UserMapper userMapper;

	public User getLoginUserbyphuserInp(@Param("userTel")String userInp,@Param("logPsw")String logPsw)throws Exception{
		return userMapper.getLoginUserbyphuserInp(userInp, logPsw);
	}
	
	public User getLoginUserbyemuserInp(@Param("email")String userInp,@Param("logPsw")String logPsw)throws Exception{
		return userMapper.getLoginUserbyemuserInp(userInp, logPsw);
	}

	public User getLoginUserbynauserInp(@Param("userName")String userInp,@Param("logPsw")String logPsw)throws Exception{
		return userMapper.getLoginUserbynauserInp(userInp, logPsw);
	}
	
	public int loginisExitbyph(@Param("userTel")String userInp) throws Exception {
		return userMapper.loginisExitbyph(userInp);
	}

	public int loginisExitbyna(@Param("userName")String userInp)throws Exception{
		return userMapper.loginisExitbyna(userInp);
	}
	
	public int loginisExitbyem(@Param("emial")String userInp)throws Exception{
		return userMapper.loginisExitbyem(userInp);
	}
	
	public int modifyUser(User user) throws Exception {
		return userMapper.modifyUser(user);
	}

	public int adduser(@Param("userTel") String userTel, @Param("userName") String userName,@Param("logPsw") String logPsw)throws Exception{
		return userMapper.adduser(userTel,userName,logPsw);
	}

	public int registerisExitbyph(@Param("userTel")String userTel) throws Exception {
		return userMapper.registerisExitbyph(userTel);
	}

	public int registerisExitbyna(@Param("userName")String userName) throws Exception {
		return userMapper.registerisExitbyna(userName);
	}







}
