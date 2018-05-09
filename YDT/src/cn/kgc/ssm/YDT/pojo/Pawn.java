package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 抵押物
 * 
 * @pdOid 1f36d424-ea0d-4840-8934-931f8e7a9559 */
public class  Pawn implements Serializable 
{  
	/** 用户id
	 * 
	 * @pdOid 2e464bf2-8589-4901-9ffc-5f689068f10d */
	private int loanerId;
	/** 抵押物
	 * 
	 * @pdOid cfbe55c3-b8ed-4dc8-b981-aa95f02436e5 */
	private String pawnId;
	/** 状态
	 * 
	 * @pdOid 0f0a8480-6486-4389-8c56-26a9023a1f6d */
	private String status;
	/** 占用项目编号
	 * 
	 * @pdOid 9ae08f06-3376-422f-9751-3a679ab2cfc0 */
	private int itemCommonId;
	/** 抵押物名称
	 * 
	 * @pdOid a8b4f209-486e-4dc8-a898-2fc5f534c3c1 */
	private int titleName;
	/** 抵押物信息
	 * 
	 * @pdOid b4505e6f-f8b3-4ce4-855f-c931f31dc049 */
	private int itdContent;
	/** 图片1
	 * 
	 * @pdOid 17e2edbe-46ad-485e-a1b6-bd18739c8cff */
	private int picture1;
	/** 图片2
	 * 
	 * @pdOid ba5e53eb-8acb-4693-83fc-dbc419cdcac4 */
	private int picture2;
	/** 图片3
	 * 
	 * @pdOid 6f7e7a37-3430-4134-b15b-dcfed0d46c6b */
	private int picture3;
	/** 图片4
	 * 
	 * @pdOid 722b56c3-51d9-4aa3-823c-24c5556f84bc */
	private int picture4;
	/** 图片5
	 * 
	 * @pdOid 5727889c-0597-4210-a9ab-dd1fd01d7daf */
	private int picture5;
	@Override
	public String toString() {
		return "Pawn [loanerId=" + loanerId + ", pawnId=" + pawnId + ", status="
				+ status + ", itemCommonId=" + itemCommonId + ", titleName="
				+ titleName + ", itdContent=" + itdContent + ", picture1="
				+ picture1 + ", picture2=" + picture2 + ", picture3=" + picture3
				+ ", picture4=" + picture4 + ", picture5=" + picture5 + "]";
	}
	public int getLoanerId() {
		return loanerId;
	}
	public void setLoanerId(int loanerId) {
		this.loanerId = loanerId;
	}
	public String getPawnId() {
		return pawnId;
	}
	public void setPawnId(String pawnId) {
		this.pawnId = pawnId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getItemCommonId() {
		return itemCommonId;
	}
	public void setItemCommonId(int itemCommonId) {
		this.itemCommonId = itemCommonId;
	}
	public int getTitleName() {
		return titleName;
	}
	public void setTitleName(int titleName) {
		this.titleName = titleName;
	}
	public int getItdContent() {
		return itdContent;
	}
	public void setItdContent(int itdContent) {
		this.itdContent = itdContent;
	}
	public int getPicture1() {
		return picture1;
	}
	public void setPicture1(int picture1) {
		this.picture1 = picture1;
	}
	public int getPicture2() {
		return picture2;
	}
	public void setPicture2(int picture2) {
		this.picture2 = picture2;
	}
	public int getPicture3() {
		return picture3;
	}
	public void setPicture3(int picture3) {
		this.picture3 = picture3;
	}
	public int getPicture4() {
		return picture4;
	}
	public void setPicture4(int picture4) {
		this.picture4 = picture4;
	}
	public int getPicture5() {
		return picture5;
	}
	public void setPicture5(int picture5) {
		this.picture5 = picture5;
	}


}