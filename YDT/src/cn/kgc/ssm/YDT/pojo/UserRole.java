package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 用户角色
 * 
 * @pdOid db1e64da-bb42-4881-a72a-0af2c4865559 */
public class  UserRole implements Serializable 
{  
	/** 用户角色id
	 * 
	 * @pdOid 754ac326-4e34-4640-b071-982b8f51a5c8 */
	private int userRoleId;
	/** 角色名称
	 * 
	 * @pdOid 20856132-2995-48c5-ad5c-a040b34b3147 */
	private String userRoleName;
	@Override
	public String toString() {
		return "UserRole [userRoleId=" + userRoleId + ", userRoleName="
				+ userRoleName + "]";
	}
	public int getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}
	public String getUserRoleName() {
		return userRoleName;
	}
	public void setUserRoleName(String userRoleName) {
		this.userRoleName = userRoleName;
	} 


}