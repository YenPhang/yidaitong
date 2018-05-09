package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 还款项目
 * 
 * @pdOid 9da04acb-a638-44df-b7c6-04feda6dfa7a */ 
public class  RepaymentItem implements Serializable 
{  
	/** 还款项目id
	 * 
	 * @pdOid 0f12d9c0-9067-41cc-8e4c-fef52d9d92a6 */
	private int repaymentItemId;
	/** 起息日/申请日期
	 * 
	 * @pdOid ac2976ef-6cc1-4fdf-81a7-53d781d3784d */
	private Date applicationDate;
	/** 结束日期
	 * 
	 * @pdOid 2d3db3d2-343e-4af8-abcc-75509395f52e */
	private Date endDate;
	/** 项目通用信息id
	 * 
	 * @pdOid 1589555e-749d-49af-a7fc-0d213e286baf */
	private int itemCommonId;
	/** 状态
	 * 
	 * @pdOid b623d846-5404-42f6-8a31-dc21f19ed2da */
	private String itemStatus;
	/** 还款期限
	 * 
	 * @pdOid dda95df0-3ddd-4b43-b2a4-0df86c1707f1 */
	private int repaymentTerm;
	@Override
	public String toString() {
		return "RepaymentItem [repaymentItemId=" + repaymentItemId
				+ ", applicationDate=" + applicationDate + ", endDate=" + endDate
				+ ", itemCommonId=" + itemCommonId + ", itemStatus=" + itemStatus
				+ ", repaymentTerm=" + repaymentTerm + "]";
	}
	public int getRepaymentItemId() {
		return repaymentItemId;
	}
	public void setRepaymentItemId(int repaymentItemId) {
		this.repaymentItemId = repaymentItemId;
	}
	public Date getApplicationDate() {
		return applicationDate;
	}
	public void setApplicationDate(Date applicationDate) {
		this.applicationDate = applicationDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
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
	public int getRepaymentTerm() {
		return repaymentTerm;
	}
	public void setRepaymentTerm(int repaymentTerm) {
		this.repaymentTerm = repaymentTerm;
	}


}