package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 联系方式
 * 
 * @pdOid 191adeff-fa4a-4511-98bb-2e056c96b4cc */
public class  ContactInfo implements Serializable 
{  
	/** 联系方式id
	 * 
	 * @pdOid 4ebc1676-0567-45f2-bd21-d09c7d627a82 */
	private int contactInfoId;
	/** 家庭电话
	 * 
	 * @pdOid 31604400-b927-4ee4-ac05-e0bc06295404 */
	private int homeTel;
	/** 手机号码
	 * 
	 * @pdOid 541f0594-4407-4564-9f32-c95af68d826e */
	private int tel;
	/** 居住省份
	 * 
	 * @pdOid 21be01d7-1293-4589-a00a-4b372f6c0320 */
	private String liveProvince;
	/** 居地城市
	 * 
	 * @pdOid 87f31b47-9139-4692-bccb-d94f2869d45b */
	private String liveCity;
	/** 居住地地区
	 * 
	 * @pdOid a62108cb-40f0-4386-bb59-73f893c2db57 */
	private String livieDistrict;
	/** 居住地区详细地址
	 * 
	 * @pdOid 0047cd74-be4f-4ba9-804e-a8ddfcac505a */
	private String liveAddress;
	/** 居住地邮编
	 * 
	 * @pdOid 7fe72a3c-36eb-4243-9c58-de77adfacec8 */
	private int livePostcode;
	/** MSN
	 * 
	 * @pdOid dc17c43f-9f97-4dba-94b2-a2db2315c28a */
	private int msn2;
	/** QQ
	 * 
	 * @pdOid 663bd570-f2cb-4869-8b14-4ce83b0dfcfd */
	private int qq2;
	/** 旺旺
	 * 
	 * @pdOid 397aa9ec-7db9-48ee-979c-6bf83bfb0998 */
	private int aliwangwang;
	/** 第二联系人姓名
	 * 
	 * @pdOid b670be4f-5c02-4109-9b16-529e65796018 */
	private String partnerName;
	/** 第二联系人关系
	 * 
	 * @pdOid a09e7091-0826-4188-854d-c2ab6fe429f1 */
	private String partnerRelationship;
	/** 第二联系人电话
	 * 
	 * @pdOid 42796acc-6c80-426b-9648-527d105d588e */
	private int partnerHomeTel;
	/** 第二联系手机
	 * 
	 * @pdOid df12c6e1-d42a-4745-84b0-ebfeac124e53 */
	private int partnerTel;
	/** 资料附件id
	 * 
	 * @pdOid c3d07157-eb51-4ec2-8145-aa9663630c51 */
	private int dataAttachmentId;
	/** 资料完善状态
	 * 
	 * @pdOid 45e96faa-e658-43be-8462-45af66679a53 */
	private int dataCompleteStatus;
	
	@Override
	public String toString() {
		return "ContactInfo [contactInfoId=" + contactInfoId + ", homeTel="
				+ homeTel + ", tel=" + tel + ", liveProvince=" + liveProvince
				+ ", liveCity=" + liveCity + ", livieDistrict=" + livieDistrict
				+ ", liveAddress=" + liveAddress + ", livePostcode=" + livePostcode
				+ ", msn2=" + msn2 + ", qq2=" + qq2 + ", aliwangwang="
				+ aliwangwang + ", partnerName=" + partnerName
				+ ", partnerRelationship=" + partnerRelationship
				+ ", partnerHomeTel=" + partnerHomeTel + ", partnerTel="
				+ partnerTel + ", dataAttachmentId=" + dataAttachmentId
				+ ", dataCompleteStatus=" + dataCompleteStatus + "]";
	}
	
	public int getContactInfoId() {
		return contactInfoId;
	}
	public void setContactInfoId(int contactInfoId) {
		this.contactInfoId = contactInfoId;
	}
	public int getHomeTel() {
		return homeTel;
	}
	public void setHomeTel(int homeTel) {
		this.homeTel = homeTel;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getLiveProvince() {
		return liveProvince;
	}
	public void setLiveProvince(String liveProvince) {
		this.liveProvince = liveProvince;
	}
	public String getLiveCity() {
		return liveCity;
	}
	public void setLiveCity(String liveCity) {
		this.liveCity = liveCity;
	}
	public String getLivieDistrict() {
		return livieDistrict;
	}
	public void setLivieDistrict(String livieDistrict) {
		this.livieDistrict = livieDistrict;
	}
	public String getLiveAddress() {
		return liveAddress;
	}
	public void setLiveAddress(String liveAddress) {
		this.liveAddress = liveAddress;
	}
	public int getLivePostcode() {
		return livePostcode;
	}
	public void setLivePostcode(int livePostcode) {
		this.livePostcode = livePostcode;
	}
	public int getMsn2() {
		return msn2;
	}
	public void setMsn2(int msn2) {
		this.msn2 = msn2;
	}
	public int getQq2() {
		return qq2;
	}
	public void setQq2(int qq2) {
		this.qq2 = qq2;
	}
	public int getAliwangwang() {
		return aliwangwang;
	}
	public void setAliwangwang(int aliwangwang) {
		this.aliwangwang = aliwangwang;
	}
	public String getPartnerName() {
		return partnerName;
	}
	public void setPartnerName(String partnerName) {
		this.partnerName = partnerName;
	}
	public String getPartnerRelationship() {
		return partnerRelationship;
	}
	public void setPartnerRelationship(String partnerRelationship) {
		this.partnerRelationship = partnerRelationship;
	}
	public int getPartnerHomeTel() {
		return partnerHomeTel;
	}
	public void setPartnerHomeTel(int partnerHomeTel) {
		this.partnerHomeTel = partnerHomeTel;
	}
	public int getPartnerTel() {
		return partnerTel;
	}
	public void setPartnerTel(int partnerTel) {
		this.partnerTel = partnerTel;
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