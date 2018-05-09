package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;
/** 招标项目
 * 
 * @pdOid b6e07e7c-a510-4890-85f6-a38b837a2c38 */
public class  BidItem implements Serializable {  
	/** 招标项目id
	 * 
	 * @pdOid 874cf032-db11-4a7e-a556-ea5fdff00635 */
	private int bidItemId;
	/** 信用等级
	 * 
	 * @pdOid fae03101-4cc7-46e5-b011-83427af683c4 */
	private String creditLevel;
	/** 剩余募集期限
	 * 
	 * @pdOid 329a854f-3588-4399-af6c-f31d767f4f08 */
	private Date raiseDays;
	/** 起息日/申请日期
	 * 
	 * @pdOid e290b9fe-9e6c-4da9-a2b2-81faf42cf756 */
	private Date applyDate;
	/** 结束日期
	 * 
	 * @pdOid 518ef9c4-cd98-41af-90fc-c933ada98471 */
	private Date endDate;
	/** 可投金额
	 * 
	 * @pdOid affacdee-b90a-4cc6-90d6-7b5c9c63127f */
	private float canInvestCash;
	/** 借款用途
	 * 
	 * @pdOid e212f020-08ec-4a50-a50f-670ed2e7ef47 */
	private String loanUse;
	/** 还款来源
	 * 
	 * @pdOid 0b470716-15c7-4a3a-8be4-045970295ad7 */
	private String repaymentResource;
	/** 抵押物情况
	 * 
	 * @pdOid 15425de6-cb6a-4eeb-b1d2-29671c7f5c1f */
	private String pawnInfo;
	/** 企业背景
	 * 
	 * @pdOid 22ab9ebe-39bc-4b77-bf93-3b85601069a7 */
	private String factoryBackground;
	/** 抵押物处置措施
	 * 
	 * @pdOid 666355a7-41e6-43bc-a13c-616f7b0aee02 */
	private String pawnDealMethod;
	/** 风控措施
	 * 
	 * @pdOid 7272e060-0f66-4e9d-b5bf-a20f3ba9b1f0 */
	private String riskControlMethod;
	/** 项目通用信息id
	 * 
	 * @pdOid ec7af5e7-1c47-4575-880f-dfd0a3f1e2c6 */
	private int itemCommonId;
	/** 状态
	 * 
	 * @pdOid 39bb89de-c975-4ba8-8846-394ec2ff143e */
	private String itemStatus;



	@Override
	public String toString() {
		return "BidItem [bidItemId=" + bidItemId + ", creditLevel="
				+ creditLevel + ", raiseDays=" + raiseDays + ", applyDate="
				+ applyDate + ", endDate=" + endDate + ", canInvestCash="
				+ canInvestCash + ", loanUse=" + loanUse
				+ ", repaymentResource=" + repaymentResource + ", pawnInfo="
				+ pawnInfo + ", factoryBackground=" + factoryBackground
				+ ", pawnDealMethod=" + pawnDealMethod + ", riskControlMethod="
				+ riskControlMethod + ", itemCommonId=" + itemCommonId
				+ ", itemStatus=" + itemStatus + "]";
	}

	public int getBidItemId() {
		return bidItemId;
	}

	public void setBidItemId(int bidItemId) {
		this.bidItemId = bidItemId;
	}

	public String getCreditLevel() {
		return creditLevel;
	}

	public void setCreditLevel(String creditLevel) {
		this.creditLevel = creditLevel;
	}

	public Date getRaiseDays() {
		return raiseDays;
	}

	public void setRaiseDays(Date raiseDays) {
		this.raiseDays = raiseDays;
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

	public float getCanInvestCash() {
		return canInvestCash;
	}

	public void setCanInvestCash(float canInvestCash) {
		this.canInvestCash = canInvestCash;
	}

	public String getLoanUse() {
		return loanUse;
	}

	public void setLoanUse(String loanUse) {
		this.loanUse = loanUse;
	}

	public String getRepaymentResource() {
		return repaymentResource;
	}

	public void setRepaymentResource(String repaymentResource) {
		this.repaymentResource = repaymentResource;
	}

	public String getPawnInfo() {
		return pawnInfo;
	}

	public void setPawnInfo(String pawnInfo) {
		this.pawnInfo = pawnInfo;
	}

	public String getFactoryBackground() {
		return factoryBackground;
	}

	public void setFactoryBackground(String factoryBackground) {
		this.factoryBackground = factoryBackground;
	}

	public String getPawnDealMethod() {
		return pawnDealMethod;
	}

	public void setPawnDealMethod(String pawnDealMethod) {
		this.pawnDealMethod = pawnDealMethod;
	}

	public String getRiskControlMethod() {
		return riskControlMethod;
	}

	public void setRiskControlMethod(String riskControlMethod) {
		this.riskControlMethod = riskControlMethod;
	}

	public int getItemCommonId() {
		return itemCommonId;
	}

	public void setItemCommonId(int itemCommonId) {
		this.itemCommonId = itemCommonId;
	}

	public String getItemStatus() {
		return itemStatus;
	}

	public void setItemStatus(String itemStatus) {
		this.itemStatus = itemStatus;
	}

	

}