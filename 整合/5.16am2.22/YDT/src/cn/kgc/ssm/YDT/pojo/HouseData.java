package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 房产资料
 * 
 * @pdOid 1b5bd12f-0af5-4924-a353-df31d899dc50 */
public class  HouseData implements Serializable 
{  
	/** 房产资料id
	 * 
	 * @pdOid 6c257cab-2165-4c5f-8cf4-e0bbecd114c8 */
	private int houseDataId;
	/** 房产地址
	 * 
	 * @pdOid 3ea818f1-cdf0-4fde-a616-10374997f823 */
	private String houseAddress;
	/** 建筑面积
	 * 
	 * @pdOid 876b8ff4-c2f7-44e4-8403-3ec35b4bbfbf */
	private float houseArea;
	/** 建筑年份
	 * 
	 * @pdOid 335347dc-0afc-4989-81c2-e6eb33e5185b */
	private Date yearsOfHouse;
	/** 供款状况
	 * 
	 * @pdOid 64b8dbd7-6226-425b-b46e-f13f3c685cf1 */
	private String houseRepayConditions;
	/** 所有权人1
	 * 
	 * @pdOid 61903fd5-2134-4640-90c0-5c5a6fffe797 */
	private String owner1;
	/** 所有权人1产权份额1
	 * 
	 * @pdOid b25a046d-76d4-437f-91a9-c991bd3a96d5 */
	private int owner1Rights;
	/** 所有权人2
	 * 
	 * @pdOid 131ee946-6405-466a-8f76-c7e315a76452 */
	private int owner2;
	/** 所有权人2产权份额2
	 * 
	 * @pdOid bb3c9ae6-7d79-443a-8ccd-4475498919bf */
	private String owner2Rights;
	/** 借款年限
	 * 
	 * @pdOid d503d4ca-619f-4543-a930-e92c7eecdfed */
	private int houseLoanYears;
	/** 每月供款
	 * 
	 * @pdOid 61cd3331-511e-4514-8d33-dabb72f257a5 */
	private float monthHouseRepay;
	/** 尚欠借款余额
	 * 
	 * @pdOid 0344fe89-fa4f-4ddd-a461-f4d126d522a2 */
	private float restLoan;
	/** 按揭银行
	 * 
	 * @pdOid fcf336f0-9438-4b3a-bd4c-c458e6bddc8c */
	private String mortgageBank;
	/** 资料附件id
	 * 
	 * @pdOid 82c21f03-2662-4918-923d-d2f26fe41de2 */
	private int dataAttachmentId;
	/** 资料完善状态
	 * 
	 * @pdOid ed66a623-4760-472c-b350-a9ed1d2c2198 */
	private int dataCompleteStatus;
	
	@Override
	public String toString() {
		return "HouseData [houseDataId=" + houseDataId + ", houseAddress="
				+ houseAddress + ", houseArea=" + houseArea + ", yearsOfHouse="
				+ yearsOfHouse + ", houseRepayConditions=" + houseRepayConditions
				+ ", owner1=" + owner1 + ", owner1Rights=" + owner1Rights
				+ ", owner2=" + owner2 + ", owner2Rights=" + owner2Rights
				+ ", houseLoanYears=" + houseLoanYears + ", monthHouseRepay="
				+ monthHouseRepay + ", restLoan=" + restLoan + ", mortgageBank="
				+ mortgageBank + ", dataAttachmentId=" + dataAttachmentId
				+ ", dataCompleteStatus=" + dataCompleteStatus + "]";
	}
	public int getHouseDataId() {
		return houseDataId;
	}
	public void setHouseDataId(int houseDataId) {
		this.houseDataId = houseDataId;
	}
	public String getHouseAddress() {
		return houseAddress;
	}
	public void setHouseAddress(String houseAddress) {
		this.houseAddress = houseAddress;
	}
	public float getHouseArea() {
		return houseArea;
	}
	public void setHouseArea(float houseArea) {
		this.houseArea = houseArea;
	}
	public Date getYearsOfHouse() {
		return yearsOfHouse;
	}
	public void setYearsOfHouse(Date yearsOfHouse) {
		this.yearsOfHouse = yearsOfHouse;
	}
	public String getHouseRepayConditions() {
		return houseRepayConditions;
	}
	public void setHouseRepayConditions(String houseRepayConditions) {
		this.houseRepayConditions = houseRepayConditions;
	}
	public String getOwner1() {
		return owner1;
	}
	public void setOwner1(String owner1) {
		this.owner1 = owner1;
	}
	public int getOwner1Rights() {
		return owner1Rights;
	}
	public void setOwner1Rights(int owner1Rights) {
		this.owner1Rights = owner1Rights;
	}
	public int getOwner2() {
		return owner2;
	}
	public void setOwner2(int owner2) {
		this.owner2 = owner2;
	}
	public String getOwner2Rights() {
		return owner2Rights;
	}
	public void setOwner2Rights(String owner2Rights) {
		this.owner2Rights = owner2Rights;
	}
	public int getHouseLoanYears() {
		return houseLoanYears;
	}
	public void setHouseLoanYears(int houseLoanYears) {
		this.houseLoanYears = houseLoanYears;
	}
	public float getMonthHouseRepay() {
		return monthHouseRepay;
	}
	public void setMonthHouseRepay(float monthHouseRepay) {
		this.monthHouseRepay = monthHouseRepay;
	}
	public float getRestLoan() {
		return restLoan;
	}
	public void setRestLoan(float restLoan) {
		this.restLoan = restLoan;
	}
	public String getMortgageBank() {
		return mortgageBank;
	}
	public void setMortgageBank(String mortgageBank) {
		this.mortgageBank = mortgageBank;
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