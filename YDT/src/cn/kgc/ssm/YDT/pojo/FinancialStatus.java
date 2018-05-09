package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;

/** 财务状况
 * 
 * @pdOid de224baf-89b6-433c-86b6-cd967664805f */
public class  FinancialStatus implements Serializable 
{  
	/** 财务状况id
	 * 
	 * @pdOid 143fa129-3e41-40da-bf75-8c223c64b44a */
	private int financialStatusId;
	/** 每月无抵押还款金额
	 * 
	 * @pdOid b4877eee-07b0-4d58-a417-c16901a592ab */
	private float monthUnpledgeRepayMoney;
	/** 自有房产
	 * 
	 * @pdOid 16611043-19f5-41a7-9f60-02d6c29bce56 */
	private String houseStatus;
	/** 房屋按揭金额
	 * 
	 * @pdOid 118c17d7-a022-4ffe-8c40-a0177d7f3c6f */
	private float mortgageAmount;
	/** 自有汽车
	 * 
	 * @pdOid 96514a6f-1a4f-43c2-ae4b-a48c445827a0 */
	private String carStatus;
	/** 汽车按揭金额
	 * 
	 * @pdOid 127584ea-2ea9-4378-b495-4557166a1ab6 */
	private float carMortgageAmount;
	/** 信用卡还款金额
	 * 
	 * @pdOid 95cf857d-1f37-4b45-9620-aec4069f2e6d */
	private float creditcardRepayAmount;
	/** 资料附件id
	 * 
	 * @pdOid b98e91a4-ce9d-42a0-8289-95cffbae6489 */
	private long dataAttachmentId;
	/** 资料完善状态
	 * 
	 * @pdOid 6f30f7d8-7055-4f45-94cd-5ef23726a386 */
	private String dataCompleteStatus;
	
	@Override
	public String toString() {
		return "FinancialStatus [financialStatusId=" + financialStatusId
				+ ", monthUnpledgeRepayMoney=" + monthUnpledgeRepayMoney
				+ ", houseStatus=" + houseStatus + ", mortgageAmount="
				+ mortgageAmount + ", carStatus=" + carStatus
				+ ", carMortgageAmount=" + carMortgageAmount
				+ ", creditcardRepayAmount=" + creditcardRepayAmount
				+ ", dataAttachmentId=" + dataAttachmentId
				+ ", dataCompleteStatus=" + dataCompleteStatus + "]";
	}
	public int getFinancialStatusId() {
		return financialStatusId;
	}
	public void setFinancialStatusId(int financialStatusId) {
		this.financialStatusId = financialStatusId;
	}
	public float getMonthUnpledgeRepayMoney() {
		return monthUnpledgeRepayMoney;
	}
	public void setMonthUnpledgeRepayMoney(float monthUnpledgeRepayMoney) {
		this.monthUnpledgeRepayMoney = monthUnpledgeRepayMoney;
	}
	public String getHouseStatus() {
		return houseStatus;
	}
	public void setHouseStatus(String houseStatus) {
		this.houseStatus = houseStatus;
	}
	public float getMortgageAmount() {
		return mortgageAmount;
	}
	public void setMortgageAmount(float mortgageAmount) {
		this.mortgageAmount = mortgageAmount;
	}
	public String getCarStatus() {
		return carStatus;
	}
	public void setCarStatus(String carStatus) {
		this.carStatus = carStatus;
	}
	public float getCarMortgageAmount() {
		return carMortgageAmount;
	}
	public void setCarMortgageAmount(float carMortgageAmount) {
		this.carMortgageAmount = carMortgageAmount;
	}
	public float getCreditcardRepayAmount() {
		return creditcardRepayAmount;
	}
	public void setCreditcardRepayAmount(float creditcardRepayAmount) {
		this.creditcardRepayAmount = creditcardRepayAmount;
	}
	public long getDataAttachmentId() {
		return dataAttachmentId;
	}
	public void setDataAttachmentId(long dataAttachmentId) {
		this.dataAttachmentId = dataAttachmentId;
	}
	public String getDataCompleteStatus() {
		return dataCompleteStatus;
	}
	public void setDataCompleteStatus(String dataCompleteStatus) {
		this.dataCompleteStatus = dataCompleteStatus;
	}


}