package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 配偶资料
 * 
 * @pdOid f3e999cd-c757-48f8-8b2f-af7d1c849b2e */ 
public class  SpouseData implements Serializable 
{  
	/** 配偶资料id
	 * 
	 * @pdOid 879ec778-35a4-411e-ace4-ac411ee3b737 */
	private int spouseDataId;
	/** 配偶姓名
	 * 
	 * @pdOid a2bf07ad-c817-4a62-8f1a-e1a059a36094 */
	private String spouseName;
	/** 每月薪金
	 * 
	 * @pdOid 1f603986-2107-4143-9acb-a9eeb1f3d28d */
	private String spouseSalary;
	/** 配偶电话
	 * 
	 * @pdOid e47be327-ed9f-4559-be72-a0473de6fa12 */
	private int spouseTel;
	/** 配偶单位电话
	 * 
	 * @pdOid 54fe8bb8-1685-4c62-9572-ec10f9eb3fd3 */
	private int spouseWorkTel;
	/** 配偶工作单位
	 * 
	 * @pdOid 72aae6fc-810e-433d-88e9-c5ae4f10a738 */
	private String spouseCompany;
	/** 配偶职位
	 * 
	 * @pdOid 354df82b-53c6-4cb4-86cc-e44836f0a4a1 */
	private String spousePosition;
	/** 单位地址
	 * 
	 * @pdOid e5a69543-b9e0-4ffc-a718-f79a3d9f2d03 */
	private String spouseCompanyAddress;
	/** 资料附件id
	 * 
	 * @pdOid ea118f16-f6ef-4973-8233-9b3b8b586752 */
	private int dataAttachmentId;
	/** 资料完善状态
	 * 
	 * @pdOid 3aeefe5d-d68f-43ff-8157-3476f9499542 */
	private int dataCompleteStatus;
	@Override
	public String toString() {
		return "SpouseData [spouseDataId=" + spouseDataId + ", spouseName="
				+ spouseName + ", spouseSalary=" + spouseSalary + ", spouseTel="
				+ spouseTel + ", spouseWorkTel=" + spouseWorkTel
				+ ", spouseCompany=" + spouseCompany + ", spousePosition="
				+ spousePosition + ", spouseCompanyAddress=" + spouseCompanyAddress
				+ ", dataAttachmentId=" + dataAttachmentId
				+ ", dataCompleteStatus=" + dataCompleteStatus + "]";
	}
	public int getSpouseDataId() {
		return spouseDataId;
	}
	public void setSpouseDataId(int spouseDataId) {
		this.spouseDataId = spouseDataId;
	}
	public String getSpouseName() {
		return spouseName;
	}
	public void setSpouseName(String spouseName) {
		this.spouseName = spouseName;
	}
	public String getSpouseSalary() {
		return spouseSalary;
	}
	public void setSpouseSalary(String spouseSalary) {
		this.spouseSalary = spouseSalary;
	}
	public int getSpouseTel() {
		return spouseTel;
	}
	public void setSpouseTel(int spouseTel) {
		this.spouseTel = spouseTel;
	}
	public int getSpouseWorkTel() {
		return spouseWorkTel;
	}
	public void setSpouseWorkTel(int spouseWorkTel) {
		this.spouseWorkTel = spouseWorkTel;
	}
	public String getSpouseCompany() {
		return spouseCompany;
	}
	public void setSpouseCompany(String spouseCompany) {
		this.spouseCompany = spouseCompany;
	}
	public String getSpousePosition() {
		return spousePosition;
	}
	public void setSpousePosition(String spousePosition) {
		this.spousePosition = spousePosition;
	}
	public String getSpouseCompanyAddress() {
		return spouseCompanyAddress;
	}
	public void setSpouseCompanyAddress(String spouseCompanyAddress) {
		this.spouseCompanyAddress = spouseCompanyAddress;
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