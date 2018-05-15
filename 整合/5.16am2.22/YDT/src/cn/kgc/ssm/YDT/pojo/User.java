package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 用户
 * 
 * @pdOid 5b159d94-7a6a-4e96-a33c-eb1124de6363 */
public class  User implements Serializable 
{  
	/** 用户id
	 * 
	 * @pdOid bae74e61-eebf-4904-b1f1-e8094c5fa941 */
	private int userId;
	/** 用户名
	 * 
	 * @pdOid 850681c9-b95f-47de-9041-b3e57129746a */
	private String userName;
	/** 手机号
	 * 
	 * @pdOid a97eee46-9ede-464d-91b0-47e48d97f243 */
	private String userTel;
	/** 登录密码
	 * 
	 * @pdOid 9fd359db-dde8-4c69-b3c5-301af5273db8 */
	private String logPsw;
	/** 交易密码
	 * 
	 * @pdOid 18bdd392-1716-4fb5-97f4-aa3d6db05954 */
	private int tradePsw;
	/** 账户总资产
	 * 
	 * @pdOid c458a091-a00c-47b9-b306-be26b55e53a4 */
	private float totalMoney;
	/** 可用余额
	 * 
	 * @pdOid ffe9131f-3742-45ea-8df4-1f382828bef2 */
	private float availableMoney;
	/** 冻结资金
	 * 
	 * @pdOid 5e824186-8147-451f-8866-fda940ebe475 */
	private float unavailableMoney;
	/** 代收总额
	 * 
	 * @pdOid d642b6a0-c9f9-4d7f-9618-ab1fcb5b853f */
	private float futureMoney;
	/** 用户角色id
	 * 
	 * @pdOid bc5d3268-df2a-4daa-8028-8356b7751f54 */
	private int userRoleId;
	/** 基本资料id
	 * 
	 * @pdOid 3b6e6032-2f57-42db-9cf6-af54d23c9bdc */
	private int basicInfoId;
	/** 房产资料id
	 * 
	 * @pdOid 067c0d5e-838c-45e6-973b-b43f2cba66df */
	private int houseDataId;
	/** 单位资料id
	 * 
	 * @pdOid ca72af88-581f-485a-a04c-1db074a0e3dd */
	private int companyDataId;
	/** 私营业主资料id
	 * 
	 * @pdOid cdfc923b-95c3-47a4-be25-7c96a5dab37c */
	private int privateOwnerDataId;
	/** 财务状况id
	 * 
	 * @pdOid a62ab20a-cdcc-46ec-a979-87c8a4f2bdaa */
	private int financialStatusId;
	/** 联系方式id
	 * 
	 * @pdOid 4eec4c10-48aa-4ff4-8cb2-07c4ec1749b8 */
	private int contactInfoId;
	/** 配偶资料id
	 * 
	 * @pdOid 4d413139-1f31-4bd3-9abc-8ff669ccd96d */
	private int spouseDataId;
	/** 教育背景id
	 * 
	 * @pdOid 1682941d-febd-4986-963d-be587f405ac5 */
	private int educationDataId;
	/** 快递地址id
	 * 
	 * @pdOid 30c0f8f3-c07f-4743-b3d8-3b56b445d710 */
	private int deliveryAddressId;
	/** 认证信息id
	 * 
	 * @pdOid fc4a355c-5818-4646-b1fb-8a70b696936b */
	private int verifyDataId;
	/** 逾期记录id
	 * 
	 * @pdOid f131eb4c-60c6-42fb-8dba-aa83c7db98cd */
	private int overdueId;
	/** 平台历史逾期次数
	 * 
	 * @pdOid ca013256-f4e7-4a93-922d-6104f64612a1 */
	private String overdueTimes;
	/** 是否是新手投资
	 * 
	 * @pdOid bee3538e-7bbf-45fa-9540-8a7ccd5680e7 */
	private boolean isNewCutsomer;
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userTel="
				+ userTel + ", logPsw=" + logPsw + ", tradePsw=" + tradePsw
				+ ", totalMoney=" + totalMoney + ", availableMoney="
				+ availableMoney + ", unavailableMoney=" + unavailableMoney
				+ ", futureMoney=" + futureMoney + ", userRoleId=" + userRoleId
				+ ", basicInfoId=" + basicInfoId + ", houseDataId=" + houseDataId
				+ ", companyDataId=" + companyDataId + ", privateOwnerDataId="
				+ privateOwnerDataId + ", financialStatusId=" + financialStatusId
				+ ", contactInfoId=" + contactInfoId + ", spouseDataId="
				+ spouseDataId + ", educationDataId=" + educationDataId
				+ ", deliveryAddressId=" + deliveryAddressId + ", verifyDataId="
				+ verifyDataId + ", overdueId=" + overdueId + ", overdueTimes="
				+ overdueTimes + ", isNewCutsomer=" + isNewCutsomer + "]";
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getTradePsw() {
		return tradePsw;
	}
	public void setTradePsw(int tradePsw) {
		this.tradePsw = tradePsw;
	}
	public float getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(float totalMoney) {
		this.totalMoney = totalMoney;
	}
	public float getAvailableMoney() {
		return availableMoney;
	}
	public void setAvailableMoney(float availableMoney) {
		this.availableMoney = availableMoney;
	}
	public float getUnavailableMoney() {
		return unavailableMoney;
	}
	public void setUnavailableMoney(float unavailableMoney) {
		this.unavailableMoney = unavailableMoney;
	}
	public float getFutureMoney() {
		return futureMoney;
	}
	public void setFutureMoney(float futureMoney) {
		this.futureMoney = futureMoney;
	}
	public int getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}
	public int getBasicInfoId() {
		return basicInfoId;
	}
	public void setBasicInfoId(int basicInfoId) {
		this.basicInfoId = basicInfoId;
	}
	public int getHouseDataId() {
		return houseDataId;
	}
	public void setHouseDataId(int houseDataId) {
		this.houseDataId = houseDataId;
	}
	public int getCompanyDataId() {
		return companyDataId;
	}
	public void setCompanyDataId(int companyDataId) {
		this.companyDataId = companyDataId;
	}
	public int getPrivateOwnerDataId() {
		return privateOwnerDataId;
	}
	public void setPrivateOwnerDataId(int privateOwnerDataId) {
		this.privateOwnerDataId = privateOwnerDataId;
	}
	public int getFinancialStatusId() {
		return financialStatusId;
	}
	public void setFinancialStatusId(int financialStatusId) {
		this.financialStatusId = financialStatusId;
	}
	public int getContactInfoId() {
		return contactInfoId;
	}
	public void setContactInfoId(int contactInfoId) {
		this.contactInfoId = contactInfoId;
	}
	public int getSpouseDataId() {
		return spouseDataId;
	}
	public void setSpouseDataId(int spouseDataId) {
		this.spouseDataId = spouseDataId;
	}
	public int getEducationDataId() {
		return educationDataId;
	}
	public void setEducationDataId(int educationDataId) {
		this.educationDataId = educationDataId;
	}
	public int getDeliveryAddressId() {
		return deliveryAddressId;
	}
	public void setDeliveryAddressId(int deliveryAddressId) {
		this.deliveryAddressId = deliveryAddressId;
	}
	public int getVerifyDataId() {
		return verifyDataId;
	}
	public void setVerifyDataId(int verifyDataId) {
		this.verifyDataId = verifyDataId;
	}
	public int getOverdueId() {
		return overdueId;
	}
	public void setOverdueId(int overdueId) {
		this.overdueId = overdueId;
	}

	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getLogPsw() {
		return logPsw;
	}
	public void setLogPsw(String logPsw) {
		this.logPsw = logPsw;
	}
	public String getOverdueTimes() {
		return overdueTimes;
	}
	public void setOverdueTimes(String overdueTimes) {
		this.overdueTimes = overdueTimes;
	}
	public boolean isNewCutsomer() {
		return isNewCutsomer;
	}
	public void setNewCutsomer(boolean isNewCutsomer) {
		this.isNewCutsomer = isNewCutsomer;
	} 



}