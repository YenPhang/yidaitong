package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 投资人回款项目
 * 
 * @pdOid 997a8158-b1c5-4d12-8566-217d1765d4b1 */
public class  InvestorRefundItem implements Serializable 
{  
	/** 投资人回款项目id
	 * 
	 * @pdOid 4278eb40-86d2-49c2-a0f9-717db6663e5a */
	private int investorRefundId;
	/** 投资人用户id
	 * 
	 * @pdOid 7fd09c8f-bcb1-4130-afc8-9d97308b2c84 */
	private int investorId;
	/** 收款期数/当前期数
	 * 
	 * @pdOid d5fbba82-9d82-44b8-b043-84d5904b4cca */
	private int periods;
	/** 应收利息
	 * 
	 * @pdOid 52349a7c-edb3-4a7c-8825-13f4d24a76e4 */
	private float promiseInterest;
	/** 申请日期
	 * 
	 * @pdOid 3179d7ce-dbbc-487e-909f-e50c3cfba5bc */
	private Date applyDate;
	/** 结束日期
	 * 
	 * @pdOid 47b50158-7974-4fbc-bf13-71665b63344f */
	private Date endDate;
	/** 利息管理费
	 * 
	 * @pdOid 159179db-1703-48c0-a218-12c86d2c258c */
	private float interestManageCost;
	/** 应收时间
	 * 
	 * @pdOid feee692c-3563-41c4-a3df-efb1b27b0979 */
	private Date promiseRefundDate;
	/** 实收时间
	 * 
	 * @pdOid f20b9c9e-cbaf-4c0b-8f44-980997e5e199 */
	private Date actualRefundDate;
	/** 应收本金
	 * 
	 * @pdOid 19702561-3a4a-433e-a533-f32a504324a3 */
	private float principal;
	/** 实收利息
	 * 
	 * @pdOid 99fbbe94-4a56-449a-9dd0-f18f7ee5570b */
	private float actualRefundInterest;
	/** 收款状态
	 * 
	 * @pdOid a99a6413-d75c-4a59-ac89-787ac2aef11d */
	private String refundStatus;
	/** 备注
	 * 
	 * @pdOid 6dc39265-e18d-445b-8fd1-fad43f431f22 */
	private String note;
	/** 是否满标状态
	 * 
	 * @pdOid 0d1b3e97-c7ba-4265-b08a-a87a7743326b */
	private boolean fullScaleOrNot;
	/** 项目通用信息id
	 * 
	 * @pdOid f3760ac8-5700-47c5-8211-9b0a25cf2ba8 */
	private int itemCommonId;
	/** 是否债权转让状态
	 * 
	 * @pdOid 9874ef78-52e2-4863-8e05-ef89d71dd7e3 */
	private int transferOrNot;
	/** 项目状态
	 * 
	 * @pdOid 3e2d6b99-d2e1-4f21-af7f-919dfb60e0c0 */
	private int itemStatus;
	
	@Override
	public String toString() {
		return "InvestorRefundItem [investorRefundId=" + investorRefundId
				+ ", investorId=" + investorId + ", periods=" + periods
				+ ", promiseInterest=" + promiseInterest + ", applyDate="
				+ applyDate + ", endDate=" + endDate + ", interestManageCost="
				+ interestManageCost + ", promiseRefundDate=" + promiseRefundDate
				+ ", actualRefundDate=" + actualRefundDate + ", principal="
				+ principal + ", actualRefundInterest=" + actualRefundInterest
				+ ", refundStatus=" + refundStatus + ", note=" + note
				+ ", fullScaleOrNot=" + fullScaleOrNot + ", itemCommonId="
				+ itemCommonId + ", transferOrNot=" + transferOrNot
				+ ", itemStatus=" + itemStatus + "]";
	}
	
	public int getInvestorRefundId() {
		return investorRefundId;
	}
	public void setInvestorRefundId(int investorRefundId) {
		this.investorRefundId = investorRefundId;
	}
	public int getInvestorId() {
		return investorId;
	}
	public void setInvestorId(int investorId) {
		this.investorId = investorId;
	}
	public int getPeriods() {
		return periods;
	}
	public void setPeriods(int periods) {
		this.periods = periods;
	}
	public float getPromiseInterest() {
		return promiseInterest;
	}
	public void setPromiseInterest(float promiseInterest) {
		this.promiseInterest = promiseInterest;
	}
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public float getInterestManageCost() {
		return interestManageCost;
	}
	public void setInterestManageCost(float interestManageCost) {
		this.interestManageCost = interestManageCost;
	}
	public Date getPromiseRefundDate() {
		return promiseRefundDate;
	}
	public void setPromiseRefundDate(Date promiseRefundDate) {
		this.promiseRefundDate = promiseRefundDate;
	}
	public Date getActualRefundDate() {
		return actualRefundDate;
	}
	public void setActualRefundDate(Date actualRefundDate) {
		this.actualRefundDate = actualRefundDate;
	}
	public float getPrincipal() {
		return principal;
	}
	public void setPrincipal(float principal) {
		this.principal = principal;
	}
	public float getActualRefundInterest() {
		return actualRefundInterest;
	}
	public void setActualRefundInterest(float actualRefundInterest) {
		this.actualRefundInterest = actualRefundInterest;
	}
	public String getRefundStatus() {
		return refundStatus;
	}
	public void setRefundStatus(String refundStatus) {
		this.refundStatus = refundStatus;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public boolean isFullScaleOrNot() {
		return fullScaleOrNot;
	}
	public void setFullScaleOrNot(boolean fullScaleOrNot) {
		this.fullScaleOrNot = fullScaleOrNot;
	}
	public int getItemCommonId() {
		return itemCommonId;
	}
	public void setItemCommonId(int itemCommonId) {
		this.itemCommonId = itemCommonId;
	}
	public int getTransferOrNot() {
		return transferOrNot;
	}
	public void setTransferOrNot(int transferOrNot) {
		this.transferOrNot = transferOrNot;
	}
	public int getItemStatus() {
		return itemStatus;
	}
	public void setItemStatus(int itemStatus) {
		this.itemStatus = itemStatus;
	}


}