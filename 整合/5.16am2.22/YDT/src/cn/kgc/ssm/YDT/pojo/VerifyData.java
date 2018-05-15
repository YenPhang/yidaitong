package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;

/** @pdOid e6fa2162-68b8-4056-84b3-e1587dedd01b */
public class  VerifyData implements Serializable 
{  
	/**
	 * 
	 */
	/** 认证信息id
	 * 
	 * @pdOid 156907e0-d144-42b6-93f5-bf45a33ef8e0 */
	private int verifyDataId;
	/** 手机号码  吗，  
	 * 
	 * @pdOid be35bff9-c0c4-44f6-92fb-ad09e672d093 */
	private int tel;
	/** 实名认证
	 * 
	 * @pdOid 47f991c6-4c76-4ff4-a05b-e08b3f8b906a */
	private String realNameVerify;
	/** 银行卡
	 * 
	 * @pdOid 74ec7e61-953d-4491-a789-293c2fe323b6 */
	private int bankCard;
	/** 电子邮箱
	 * 
	 * @pdOid 7eeac693-b3f0-4b8e-8d18-3a9ca025b4ac */
	private String email;
	/** 认证状态
	 * 
	 * @pdOid 786e4565-75bd-451c-a7bf-774cfd3f3f3f */
	private int verifyStatus;
	@Override
	public String toString() {
		return "VerifyData [verifyDataId=" + verifyDataId + ", tel=" + tel
				+ ", realNameVerify=" + realNameVerify + ", bankCard=" + bankCard
				+ ", email=" + email + ", verifyStatus=" + verifyStatus + "]";
	}
	public int getVerifyDataId() {
		return verifyDataId;
	}
	public void setVerifyDataId(int verifyDataId) {
		this.verifyDataId = verifyDataId;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getRealNameVerify() {
		return realNameVerify;
	}
	public void setRealNameVerify(String realNameVerify) {
		this.realNameVerify = realNameVerify;
	}
	public int getBankCard() {
		return bankCard;
	}
	public void setBankCard(int bankCard) {
		this.bankCard = bankCard;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getVerifyStatus() {
		return verifyStatus;
	}
	public void setVerifyStatus(int verifyStatus) {
		this.verifyStatus = verifyStatus;
	}


}