package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;


/** 基本资料
 * 
 * @pdOid b5f6bd44-91c6-415e-9326-c2e22bad3f8e */
public class  BasicInfo implements Serializable 
{  
	/** 基本资料id
	 * 
	 * @pdOid 04ceacb9-e798-45bc-8a7f-4f47b81128c2 */
	private int basicInfoId;
	/** 真实姓名
	 * 
	 * @pdOid b97faaae-b357-4a38-bce3-3d2e4aadea64 */
	private String name;
	/** 身份证号
	 * 
	 * @pdOid 371bf7a0-0d75-41fc-9c50-f3d5506486cb */
	private String idNumber;
	/** 婚姻状况
	 * 
	 * @pdOid 061b9221-bf2a-44f4-b2c5-e1fe7918a7bf */
	private String maritalStatus;
	/** 邮箱
	 * 
	 * @pdOid b82520e2-caf2-4744-bf1f-7f3f58e5bc9c */
	private String email;
	/** 户籍所在地
	 * 
	 * @pdOid 116223a2-8e6b-41f5-ace9-1fe9672a9512 */
	private String householdRegister;
	/** 户籍详细地址
	 * 
	 * @pdOid 477afd73-6b2a-44df-a3fd-95b76d211d3b */
	private String householdRegisterAddresss;
	/** 居住地-省份
	 * 
	 * @pdOid 4b71d2c3-53d1-4634-8111-fb489d9c1464 */
	private String liveProvince;
	/** 现居住地详细信息
	 * 
	 * @pdOid 5c0226be-8d92-416d-aaf6-952344ff32f5 */
	private String liveAddress;
	/** 现居住地状况
	 * 
	 * @pdOid b27ce7bf-8b7b-4131-bc8a-b70dad9cd2a4 */
	private String currentResidenceStatus;
	/** 月租金
	 * 
	 * @pdOid b02d35dd-0226-436d-b441-bab1bc00be26 */
	private float monthlyRent;
	/** 月还款金额
	 * 
	 * @pdOid 492612f6-305f-4d11-8991-5c9afe7a783e */
	private float monthlyRepaymentAmount;
	/** 有无护照
	 * 
	 * @pdOid aff48843-310c-40a2-b86f-b1ee03a46e17 */
	private int hvPassport;
	/** 是否有驾驶证
	 * 
	 * @pdOid b8a58d43-4235-421a-b0e4-60c2b5a8553c */
	private int hvDriverLicense;
	/** 有无社保、公积金资料
	 * 
	 * @pdOid 9e46db63-5243-4ddb-b70b-bf1192bfa22e */
	private int hvSocialSecurity;
	/** 资料附件id
	 * 
	 * @pdOid a2bb52f6-ab20-47fb-9d4b-ddff7faf9874 */
	private int dataAttachmentId;
	/** 资料完善状态
	 * 
	 * @pdOid a89bb95b-b051-4716-8701-499458dee44a */
	private int dataCompleteStatus;

	@Override
	public String toString() {
		return "BasicInfo [basicInfoId=" + basicInfoId + ", name=" + name
				+ ", idNumber=" + idNumber + ", maritalStatus=" + maritalStatus
				+ ", email=" + email + ", householdRegister="
				+ householdRegister + ", householdRegisterAddresss="
				+ householdRegisterAddresss + ", liveProvince=" + liveProvince
				+ ", liveAddress=" + liveAddress + ", currentResidenceStatus="
				+ currentResidenceStatus + ", monthlyRent=" + monthlyRent
				+ ", monthlyRepaymentAmount=" + monthlyRepaymentAmount
				+ ", hvPassport=" + hvPassport + ", hvDriverLicense="
				+ hvDriverLicense + ", hvSocialSecurity=" + hvSocialSecurity
				+ ", dataAttachmentId=" + dataAttachmentId
				+ ", dataCompleteStatus=" + dataCompleteStatus + "]";
	}
	
	public int getBasicInfoId() {
		return basicInfoId;
	}
	public void setBasicInfoId(int basicInfoId) {
		this.basicInfoId = basicInfoId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHouseholdRegister() {
		return householdRegister;
	}
	public void setHouseholdRegister(String householdRegister) {
		this.householdRegister = householdRegister;
	}
	public String getHouseholdRegisterAddresss() {
		return householdRegisterAddresss;
	}
	public void setHouseholdRegisterAddresss(String householdRegisterAddresss) {
		this.householdRegisterAddresss = householdRegisterAddresss;
	}
	public String getLiveProvince() {
		return liveProvince;
	}
	public void setLiveProvince(String liveProvince) {
		this.liveProvince = liveProvince;
	}
	public String getLiveAddress() {
		return liveAddress;
	}
	public void setLiveAddress(String liveAddress) {
		this.liveAddress = liveAddress;
	}
	public String getCurrentResidenceStatus() {
		return currentResidenceStatus;
	}
	public void setCurrentResidenceStatus(String currentResidenceStatus) {
		this.currentResidenceStatus = currentResidenceStatus;
	}
	public float getMonthlyRent() {
		return monthlyRent;
	}
	public void setMonthlyRent(float monthlyRent) {
		this.monthlyRent = monthlyRent;
	}
	public float getMonthlyRepaymentAmount() {
		return monthlyRepaymentAmount;
	}
	public void setMonthlyRepaymentAmount(float monthlyRepaymentAmount) {
		this.monthlyRepaymentAmount = monthlyRepaymentAmount;
	}
	public int getHvPassport() {
		return hvPassport;
	}
	public void setHvPassport(int hvPassport) {
		this.hvPassport = hvPassport;
	}
	public int getHvDriverLicense() {
		return hvDriverLicense;
	}
	public void setHvDriverLicense(int hvDriverLicense) {
		this.hvDriverLicense = hvDriverLicense;
	}
	public int getHvSocialSecurity() {
		return hvSocialSecurity;
	}
	public void setHvSocialSecurity(int hvSocialSecurity) {
		this.hvSocialSecurity = hvSocialSecurity;
	}
	public int getDataAttachmentId() {
		return dataAttachmentId;
	}
	public void setDataAttachmentId(int dataAttachmentId) {
		this.dataAttachmentId = dataAttachmentId;
	}
	public int getDataCompleteStatus() {
		return dataCompleteStatus;
	}
	public void setDataCompleteStatus(int dataCompleteStatus) {
		this.dataCompleteStatus = dataCompleteStatus;
	}


}