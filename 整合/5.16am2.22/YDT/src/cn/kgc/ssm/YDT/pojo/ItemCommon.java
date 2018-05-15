package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 项目通用信息
 * 
 * @pdOid 416a15a7-f463-451e-9a8c-0fa471b0d925
 */
public class ItemCommon implements Serializable {
	/**
	 * 项目通用信息ID
	 * 
	 * @pdOid 2fe642f8-6cb2-4c44-8b62-24f3c285a502
	 */
	private int itemCommonId;
	/**
	 * 借款金额
	 * 
	 * @pdOid 9077c3c1-0b66-4896-8dc4-5c6859557199
	 */
	private int iteLimitYuan;
	/**
	 * 借款目的
	 * 
	 * @pdOid 4db31b10-2e34-4e9a-85ec-94105a38a6b9
	 */
	private String iteReason;
	/**
	 * 申请日期
	 * 
	 * @pdOid 268e9ec1-ee3d-4e73-aa6a-54c5a05b450d
	 */
	@JSONField(format="yyyy-MM-dd")
	private Date applyDate;
	/**
	 * 结束日期
	 * 
	 * @pdOid 14c06565-2d21-499f-95a0-944bc64320fb
	 */
	private Date endDate;
	/**
	 * 最低投资金额
	 * 
	 * @pdOid afd2ffd3-d014-4a06-8c97-6b076b080897
	 */
	private float iteBidMin;
	/**
	 * 有效时间
	 * 
	 * @pdOid 14ed113b-f69b-4099-9e55-f3937c05ac30
	 */
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private int iteBidDate;
	/**
	 * 预期投资回报率
	 * 
	 * @pdOid 2312a6e4-7d16-4cd3-a18a-57c14b6ee3f8
	 */
	private float iteYearRate;
	/**
	 * 期限种类
	 * 
	 * @pdOid 1c14d6ab-e651-4245-8cc7-dd31e61cb6f5
	 */
	private String iteRepayInterval;
	/**
	 * 期限数量
	 * 
	 * @pdOid e0d8aa7c-0f8d-4c15-a417-085d35f92a46
	 */
	private int iteRepayCount;
	/**
	 * 投资总额
	 * 
	 * @pdOid f3429250-8aac-4097-965d-fb66c3b0d082
	 */
	private int iteBidSum;
	/**
	 * 还款方式
	 * 
	 * @pdOid 84bedea7-503d-4724-bb59-1f41e741fdfd
	 */
	private String iteRepayType;
	/**
	 * 借款标题/项目名称
	 * 
	 * @pdOid 7c4a8079-0733-4357-ba2d-4daef5782655
	 */
	private String iteTitle;
	/**
	 * 借款说明
	 * 
	 * @pdOid 8fdff85b-7351-4f78-bfb7-8d4fefe4667a
	 */
	private String itdContent;
	/**
	 * 借款者用户id
	 * 
	 * @pdOid c384ebfe-5e05-411c-924a-0a42a3f03e62
	 */
	private int loanerId;
	/**
	 * 到期还款总金额
	 * 
	 * @pdOid 3cba8b8c-d9e9-479d-b2b7-67b7b51ed333
	 */
	private float repayTotalMoney;
	/**
	 * 借款项目等级
	 * 
	 * @pdOid d7ac220d-3ced-4103-87e6-dc26f28295cd
	 */
	private String loanItemLevel;
	/**
	 * 是否是新手标
	 * 
	 * @pdOid fdf32f62-69d5-43ee-ad48-6297e2ac71e7
	 */
	private int isNewItem;
	/**
	 * 总逾期天数
	 * 
	 * @pdOid 47e7dc8e-32d9-41cb-9677-ad1170b896e3
	 */
	private int totalOverDueDays;
	/**
	 * 逾期罚息
	 * 
	 * @pdOid 8b5f565b-d4fe-4bc6-9146-79fda6b5c85f
	 */
	private float overDueInterests;
	/**
	 * 逾期金额
	 * 
	 * @pdOid dffec656-b643-4c0b-9cda-11dfd36facde
	 */
	private float overDueCapital;
	/**
	 * 每期还款金额
	 * 
	 * @pdOid c2f5fc2f-317a-47c1-9205-e0a05c79811b
	 */
	private float termRepay;
	/**
	 * 当前逾期天数
	 * 
	 * @pdOid 9ef7f0a0-2dc5-4463-a8e4-b697123e6b03
	 */
	private int currentOverDueDays;
	/**
	 * 新增一个对象(还款项目)，用来使用resultMap进行数据的绑定
	 * 
	 * @pdOid 9ef7f0a0-2dc5-4463-a8e4-b697123e6b03
	 */
	private RepaymentItem repaymentItem;

	// 是否是申请贷款项目，默认值是1，代表是
	private String isApplyLoan;

	/** 项目状态，默认是-1，代表未审核
	 * 
	 * @pdOid d249ecfb-394e-44f2-852c-788ca8b5b6d3 */
	private String iteStatus;
	
	

	//项目状态名称
	private String iteStatusName;
	


	public String getIteStatus() {
		return iteStatus;
	}

	public void setIteStatus(String iteStatus) {
		this.iteStatus = iteStatus;
	}

	public String getIteStatusName() {
		return iteStatusName;
	}

	public void setIteStatusName(String iteStatusName) {
		this.iteStatusName = iteStatusName;
	}

	public String getIsApplyLoan() {
		return isApplyLoan;
	}

	public void setIsApplyLoan(String isApplyLoan) {
		this.isApplyLoan = isApplyLoan;
	}

	public RepaymentItem getRepaymentItem() {
		return repaymentItem;
	}

	public void setRepaymentItem(RepaymentItem repaymentItem) {
		this.repaymentItem = repaymentItem;
	}

	@Override
	public String toString() {
		return "ItemCommon [itemCommonId=" + itemCommonId + ", iteLimitYuan=" + iteLimitYuan + ", iteReason="
				+ iteReason + ", applyDate=" + applyDate + ", endDate=" + endDate + ", iteBidMin=" + iteBidMin
				+ ", iteBidDate=" + iteBidDate + ", iteYearRate=" + iteYearRate + ", iteRepayInterval="
				+ iteRepayInterval + ", iteRepayCount=" + iteRepayCount + ", iteBidSum=" + iteBidSum + ", iteRepayType="
				+ iteRepayType + ", iteTitle=" + iteTitle + ", itdContent=" + itdContent + ", loanerId=" + loanerId
				+ ", repayTotalMoney=" + repayTotalMoney + ", loanItemLevel=" + loanItemLevel + ", isNewItem="
				+ isNewItem + ", totalOverDueDays=" + totalOverDueDays + ", overDueInterests=" + overDueInterests
				+ ", overDueCapital=" + overDueCapital + ", termRepay=" + termRepay + ", currentOverDueDays="
				+ currentOverDueDays + "]";
	}

	public int getItemCommonId() {
		return itemCommonId;
	}

	public void setItemCommonId(int itemCommonId) {
		this.itemCommonId = itemCommonId;
	}

	public int getIteLimitYuan() {
		return iteLimitYuan;
	}

	public void setIteLimitYuan(int iteLimitYuan) {
		this.iteLimitYuan = iteLimitYuan;
	}

	public String getIteReason() {
		return iteReason;
	}

	public void setIteReason(String iteReason) {
		this.iteReason = iteReason;
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

	public float getIteBidMin() {
		return iteBidMin;
	}

	public void setIteBidMin(float iteBidMin) {
		this.iteBidMin = iteBidMin;
	}

	public int getIteBidDate() {
		return iteBidDate;
	}

	public void setIteBidDate(int iteBidDate) {
		this.iteBidDate = iteBidDate;
	}

	public float getIteYearRate() {
		return iteYearRate;
	}

	public void setIteYearRate(float iteYearRate) {
		this.iteYearRate = iteYearRate;
	}

	public String getIteRepayInterval() {
		return iteRepayInterval;
	}

	public void setIteRepayInterval(String iteRepayInterval) {
		this.iteRepayInterval = iteRepayInterval;
	}

	public int getIteRepayCount() {
		return iteRepayCount;
	}

	public void setIteRepayCount(int iteRepayCount) {
		this.iteRepayCount = iteRepayCount;
	}

	public int getIteBidSum() {
		return iteBidSum;
	}

	public void setIteBidSum(int iteBidSum) {
		this.iteBidSum = iteBidSum;
	}

	public String getIteRepayType() {
		return iteRepayType;
	}

	public void setIteRepayType(String iteRepayType) {
		this.iteRepayType = iteRepayType;
	}

	public String getIteTitle() {
		return iteTitle;
	}

	public void setIteTitle(String iteTitle) {
		this.iteTitle = iteTitle;
	}

	public String getItdContent() {
		return itdContent;
	}

	public void setItdContent(String itdContent) {
		this.itdContent = itdContent;
	}

	public int getLoanerId() {
		return loanerId;
	}

	public void setLoanerId(int loanerId) {
		this.loanerId = loanerId;
	}

	public float getRepayTotalMoney() {
		return repayTotalMoney;
	}

	public void setRepayTotalMoney(float repayTotalMoney) {
		this.repayTotalMoney = repayTotalMoney;
	}

	public String getLoanItemLevel() {
		return loanItemLevel;
	}

	public void setLoanItemLevel(String loanItemLevel) {
		this.loanItemLevel = loanItemLevel;
	}

	public int getIsNewItem() {
		return isNewItem;
	}

	public void setIsNewItem(int isNewItem) {
		this.isNewItem = isNewItem;
	}

	public int getTotalOverDueDays() {
		return totalOverDueDays;
	}

	public void setTotalOverDueDays(int totalOverDueDays) {
		this.totalOverDueDays = totalOverDueDays;
	}

	public float getOverDueInterests() {
		return overDueInterests;
	}

	public void setOverDueInterests(float overDueInterests) {
		this.overDueInterests = overDueInterests;
	}

	public float getOverDueCapital() {
		return overDueCapital;
	}

	public void setOverDueCapital(float overDueCapital) {
		this.overDueCapital = overDueCapital;
	}

	public float getTermRepay() {
		return termRepay;
	}

	public void setTermRepay(float termRepay) {
		this.termRepay = termRepay;
	}

	public int getCurrentOverDueDays() {
		return currentOverDueDays;
	}

	public void setCurrentOverDueDays(int currentOverDueDays) {
		this.currentOverDueDays = currentOverDueDays;
	}

}