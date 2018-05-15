package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;

/** 快递地址
 * 
 * @pdOid 9cf83e60-e52b-44a9-89cb-ff89142a09df */
public class  DeliveryAddress implements Serializable 
{  
	/** 快递地址管理id
	 * 
	 * @pdOid 032ca856-5bd1-4390-ac89-ffb08c4ba40f */
	private int deliveryAddressId;
	/** 姓名
	 * 
	 * @pdOid e59480a8-3ca9-4723-8329-0e00288db8f5 */
	private String name;
	/** 手机号码
	 * 
	 * @pdOid 0cfc5565-a910-4eb8-a7c6-8fd1a99a262c */
	private int phone;
	/** 所在地区
	 * 
	 * @pdOid 4e1721d9-4054-4ef5-b507-a78883452cf0 */
	private String inTheArea;
	/** 详细地址
	 * 
	 * @pdOid 0e342bab-d385-4847-be41-b754a5d784e3 */
	private String detailedAddress;
	
	@Override
	public String toString() {
		return "DeliveryAddress [deliveryAddressId=" + deliveryAddressId
				+ ", name=" + name + ", phone=" + phone + ", inTheArea="
				+ inTheArea + ", detailedAddress=" + detailedAddress + "]";
	}
	public int getDeliveryAddressId() {
		return deliveryAddressId;
	}
	public void setDeliveryAddressId(int deliveryAddressId) {
		this.deliveryAddressId = deliveryAddressId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getInTheArea() {
		return inTheArea;
	}
	public void setInTheArea(String inTheArea) {
		this.inTheArea = inTheArea;
	}
	public String getDetailedAddress() {
		return detailedAddress;
	}
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}


}