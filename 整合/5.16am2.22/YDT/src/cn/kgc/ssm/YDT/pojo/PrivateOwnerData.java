package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 私营业主资料
 * 
 * @pdOid 97cc90aa-b5b8-4794-b771-3e67654f5da1 */
public class  PrivateOwnerData implements Serializable 
{  
	/** 私营业主资料id
	 * 
	 * @pdOid db182bb1-84d4-48d6-a7f3-8a4db5304814 */
	private int privateOwnerDataId;
	/** 私营业主类型
	 * 
	 * @pdOid c256ea7b-77bb-4732-a0c2-4ddb94e2f875 */
	private String privateOwnerType;
	/** 成立日期
	 * 
	 * @pdOid 43d476f8-fbfb-4259-a313-b4d3f9444335 */
	private Date setUpDate;
	/** 经营场所
	 * 
	 * @pdOid e3db3ff9-3352-4793-a33f-682285c1f173 */
	private String premises;
	/** 租金
	 * 
	 * @pdOid fb7bda6c-e225-4555-bf3a-b973a26f45c7 */
	private float rent;
	/** 租期
	 * 
	 * @pdOid 17b3bbd2-d8e5-4757-943e-5ec53dcca5fa */
	private String lease;
	/** 税务编号
	 * 
	 * @pdOid e502a252-2735-4194-b4aa-eef9877ca59f */
	private String taxNumber;
	/** 工商登记号
	 * 
	 * @pdOid 9070ddfb-80e7-4659-86ad-b286487d3aae */
	private int businessRegistrationNumber;
	/** 全年盈利
	 * 
	 * @pdOid 648e5cae-3b23-4394-9fb9-a64f52e4d85d */
	private float fullYearEarnings;
	/** 雇佣人数
	 * 
	 * @pdOid e091b47e-9d62-402c-9a81-9b8888570253 */
	private int employment;
	/** 资料附件id
	 * 
	 * @pdOid ceb38ceb-d7df-46f2-b280-a614efc3172c */
	private int dataAttachmentId;
	/** 资料完善状态
	 * 
	 * @pdOid cc5cdc02-fa06-416f-833b-2edd55bafcc3 */
	private String dataCompleteStatus;
	@Override
	public String toString() {
		return "PrivateOwnerData [privateOwnerDataId=" + privateOwnerDataId
				+ ", privateOwnerType=" + privateOwnerType + ", setUpDate="
				+ setUpDate + ", premises=" + premises + ", rent=" + rent
				+ ", lease=" + lease + ", taxNumber=" + taxNumber
				+ ", businessRegistrationNumber=" + businessRegistrationNumber
				+ ", fullYearEarnings=" + fullYearEarnings + ", employment="
				+ employment + ", dataAttachmentId=" + dataAttachmentId
				+ ", dataCompleteStatus=" + dataCompleteStatus + "]";
	}
	public int getPrivateOwnerDataId() {
		return privateOwnerDataId;
	}
	public void setPrivateOwnerDataId(int privateOwnerDataId) {
		this.privateOwnerDataId = privateOwnerDataId;
	}
	public String getPrivateOwnerType() {
		return privateOwnerType;
	}
	public void setPrivateOwnerType(String privateOwnerType) {
		this.privateOwnerType = privateOwnerType;
	}
	public Date getSetUpDate() {
		return setUpDate;
	}
	public void setSetUpDate(Date setUpDate) {
		this.setUpDate = setUpDate;
	}
	public String getPremises() {
		return premises;
	}
	public void setPremises(String premises) {
		this.premises = premises;
	}
	public float getRent() {
		return rent;
	}
	public void setRent(float rent) {
		this.rent = rent;
	}
	public String getLease() {
		return lease;
	}
	public void setLease(String lease) {
		this.lease = lease;
	}
	public String getTaxNumber() {
		return taxNumber;
	}
	public void setTaxNumber(String taxNumber) {
		this.taxNumber = taxNumber;
	}
	public int getBusinessRegistrationNumber() {
		return businessRegistrationNumber;
	}
	public void setBusinessRegistrationNumber(int businessRegistrationNumber) {
		this.businessRegistrationNumber = businessRegistrationNumber;
	}
	public float getFullYearEarnings() {
		return fullYearEarnings;
	}
	public void setFullYearEarnings(float fullYearEarnings) {
		this.fullYearEarnings = fullYearEarnings;
	}
	public int getEmployment() {
		return employment;
	}
	public void setEmployment(int employment) {
		this.employment = employment;
	}
	public int getDataAttachmentId() {
		return dataAttachmentId;
	}
	public void setDataAttachmentId(int dataAttachmentId) {
		this.dataAttachmentId = dataAttachmentId;
	}
	public String getDataCompleteStatus() {
		return dataCompleteStatus;
	}
	public void setDataCompleteStatus(String dataCompleteStatus) {
		this.dataCompleteStatus = dataCompleteStatus;
	}


}