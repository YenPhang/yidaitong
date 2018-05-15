package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 单位资料
 * 
 * @pdOid 270852b8-bf3a-4b18-883e-3d9011e6ebbd */
public class  CompanyData implements Serializable 
{  
	/** 单位资料id
	 * 
	 * @pdOid f014ce80-f324-4fcf-baa2-9ce5256940b9 */
	private int companyDataId;
	/** 单位名称
	 * 
	 * @pdOid bd8d6603-3069-48e1-b067-dc177489c9a1 */
	private String companyName;
	/** 单位性质
	 * 
	 * @pdOid a95550bb-d560-494c-a934-7776397bc3f8 */
	private String companyNature;
	/** 单位行业
	 * 
	 * @pdOid f752ef33-3e81-4fd8-a25d-7d41e6c0b81d */
	private String companyIndustry;
	/** 工作级别
	 * 
	 * @pdOid 65921a08-59ab-4397-844b-aa74b4f8913c */
	private String workLevel;
	/** 职位
	 * 
	 * @pdOid 03b70fed-8fd8-4f72-b8b9-88eba65d66e7 */
	private String position;
	/** 服务时间
	 * 
	 * @pdOid 53bb4cdf-4856-40e8-abe1-04264dd3b757 */
	private Date serviceTime;
	/** 工作年限
	 * 
	 * @pdOid da0eff0f-c796-41a5-a8ab-42aeef6c8893 */
	private int workYears;
	/** 工作电话
	 * 
	 * @pdOid 9a65ec4d-98a8-4c21-921c-e46b150396c4 */
	private int workTel;
	/** 单位地址
	 * 
	 * @pdOid eb31d2ff-17bd-407f-a3b9-36e9cf08cb23 */
	private String companyAddress;
	/** 单位网址
	 * 
	 * @pdOid 00132b0c-d66f-457f-8b0c-43b33b53a321 */
	private String companySite;
	/** 资料附件id
	 * 
	 * @pdOid b757e933-3254-4f98-b7b9-407d17229985 */
	private int dataAttachmentId;
	/** 资料完善状态
	 * 
	 * @pdOid b2a71370-f91c-4d42-a54b-564089b278fc */
	private int dataCompleteStatus;

	
	@Override
	public String toString() {
		return "CompanyData [companyDataId=" + companyDataId + ", companyName="
				+ companyName + ", companyNature=" + companyNature
				+ ", companyIndustry=" + companyIndustry + ", workLevel="
				+ workLevel + ", position=" + position + ", serviceTime="
				+ serviceTime + ", workYears=" + workYears + ", workTel="
				+ workTel + ", companyAddress=" + companyAddress
				+ ", companySite=" + companySite + ", dataAttachmentId="
				+ dataAttachmentId + ", dataCompleteStatus="
				+ dataCompleteStatus + "]";
	}
	
	public int getCompanyDataId() {
		return companyDataId;
	}
	public void setCompanyDataId(int companyDataId) {
		this.companyDataId = companyDataId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyNature() {
		return companyNature;
	}
	public void setCompanyNature(String companyNature) {
		this.companyNature = companyNature;
	}
	public String getCompanyIndustry() {
		return companyIndustry;
	}
	public void setCompanyIndustry(String companyIndustry) {
		this.companyIndustry = companyIndustry;
	}
	public String getWorkLevel() {
		return workLevel;
	}
	public void setWorkLevel(String workLevel) {
		this.workLevel = workLevel;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Date getServiceTime() {
		return serviceTime;
	}
	public void setServiceTime(Date serviceTime) {
		this.serviceTime = serviceTime;
	}
	public int getWorkYears() {
		return workYears;
	}
	public void setWorkYears(int workYears) {
		this.workYears = workYears;
	}
	public int getWorkTel() {
		return workTel;
	}
	public void setWorkTel(int workTel) {
		this.workTel = workTel;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	public String getCompanySite() {
		return companySite;
	}
	public void setCompanySite(String companySite) {
		this.companySite = companySite;
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