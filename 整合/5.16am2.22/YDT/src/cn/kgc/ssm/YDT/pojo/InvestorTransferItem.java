package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 投资人债权转让项目
 * 
 * @pdOid 0ef85ac3-9a78-4fb3-85e7-55ad85b94337 */ 
public class  InvestorTransferItem implements Serializable 
{  
	/** 投资人债权转让项目id
	 * 
	 * @pdOid 5bcc2494-30d6-45bc-a91b-b9c3071efa3e */
	private int investorTransferId;
	/** 申请日期
	 * 
	 * @pdOid cabee2f0-1d5b-4ba4-b0bc-e9e5857945e1 */
	private Date applyDate;
	/** 结束日期
	 * 
	 * @pdOid 012c4524-bbd7-40b5-9289-790a8f5b45d4 */
	private Date endDate;
	/** 转让价格/受让价格/承接价格
	 * 
	 * @pdOid 75dfe144-0515-4cbc-b39d-48bb79798c30 */
	private float transferPrice;
	/** 项目状态
	 * 
	 * @pdOid d249ecfb-394e-44f2-852c-788ca8b5b6d3 */
	private String itemStatus;
	/** 备注
	 * 
	 * @pdOid e4090b72-2e87-4472-adc2-66a3befafe9a */
	private String note;
	/** 剩余还款日
	 * 
	 * @pdOid 12c4ce17-2fbb-4cd3-bf65-8f33e212c48a */
	private int restRepayDays;
	/** 剩余承接日
	 * 
	 * @pdOid e9050a0a-b395-451a-8520-9c715b1572a8 */
	private int resetPickedUpDays;
	/** 承接人ID
	 * 
	 * @pdOid 8bc6e2d0-81f1-4385-b36a-5a8d3866a217 */
	private int pickedUpUserId;
	/** 投资人回款项目id
	 * 
	 * @pdOid 5289d1e8-f866-41d1-9619-e0875fc27bac */
	private int investorRefundId;
	@Override
	public String toString() {
		return "InvestorTransferItem [investorTransferId=" + investorTransferId
				+ ", applyDate=" + applyDate + ", endDate=" + endDate
				+ ", transferPrice=" + transferPrice + ", itemStatus=" + itemStatus
				+ ", note=" + note + ", restRepayDays=" + restRepayDays
				+ ", resetPickedUpDays=" + resetPickedUpDays + ", pickedUpUserId="
				+ pickedUpUserId + ", investorRefundId=" + investorRefundId + "]";
	}
	public int getInvestorTransferId() {
		return investorTransferId;
	}
	public void setInvestorTransferId(int investorTransferId) {
		this.investorTransferId = investorTransferId;
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
	public float getTransferPrice() {
		return transferPrice;
	}
	public void setTransferPrice(float transferPrice) {
		this.transferPrice = transferPrice;
	}
	public String getItemStatus() {
		return itemStatus;
	}
	public void setItemStatus(String itemStatus) {
		this.itemStatus = itemStatus;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getRestRepayDays() {
		return restRepayDays;
	}
	public void setRestRepayDays(int restRepayDays) {
		this.restRepayDays = restRepayDays;
	}
	public int getResetPickedUpDays() {
		return resetPickedUpDays;
	}
	public void setResetPickedUpDays(int resetPickedUpDays) {
		this.resetPickedUpDays = resetPickedUpDays;
	}
	public int getPickedUpUserId() {
		return pickedUpUserId;
	}
	public void setPickedUpUserId(int pickedUpUserId) {
		this.pickedUpUserId = pickedUpUserId;
	}
	public int getInvestorRefundId() {
		return investorRefundId;
	}
	public void setInvestorRefundId(int investorRefundId) {
		this.investorRefundId = investorRefundId;
	}


}