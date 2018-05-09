package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 抵押贷款申请项目
 * 
 * @pdOid afc63677-a969-407f-8c27-8a50b5c493de */
public class  LoanItem implements Serializable 
{  
	/** 抵押贷款申请项目id
	 * 
	 * @pdOid b267e6ad-c957-4b8d-b1b2-a35210bf9b31 */
	private int itemCommonId;
	/** 申请日期
	 * 
	 * @pdOid c7b4c27f-271c-4b5e-8247-a8aeed6c04c5 */
	private Date applyDate;
	/** 结束日期
	 * 
	 * @pdOid a3f72659-bff1-459d-91c1-d35c9f0a1e50 */
	private Date endDate;
	/** 状态
	 * 
	 * @pdOid a86d77c9-7bc9-4b0c-888b-11c9307e0d55 */
	private String itemStatus;
	@Override
	public String toString() {
		return "LoanItem [itemCommonId=" + itemCommonId + ", applyDate="
				+ applyDate + ", endDate=" + endDate + ", itemStatus=" + itemStatus
				+ "]";
	}
	public int getItemCommonId() {
		return itemCommonId;
	}
	public void setItemCommonId(int itemCommonId) {
		this.itemCommonId = itemCommonId;
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
	public String getItemStatus() {
		return itemStatus;
	}
	public void setItemStatus(String itemStatus) {
		this.itemStatus = itemStatus;
	}


}