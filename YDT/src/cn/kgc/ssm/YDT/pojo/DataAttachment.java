package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;


/** 资料附件
 * 
 * @pdOid cd8e0e8a-f1b4-49a5-9ce3-3f7182511925 */
public class  DataAttachment implements Serializable 
{  
	/** 资料附件id
	 * 
	 * @pdOid c12eda86-daa9-44af-b94c-b3d8183b7859 */
	private int dataAttachmentId;
	/** 资料上传
	 * 
	 * @pdOid ca8d8b8c-15ad-4ca3-83c1-62cdaa78fd5b */
	private String dataUpload;
	/** 资料名称
	 * 
	 * @pdOid 1975ee1d-ab66-42ec-b135-900b12c5930d */
	private String dataName;
	/** 资料类型
	 * 
	 * @pdOid f8fc5217-f8f4-448f-9a58-89a7a1fa4de6 */
	private String dataType;
	/** 资料说明
	 * 
	 * @pdOid f625d735-ef2e-4035-ac08-1d244a1c9525 */
	private String dataExplain;
	/** 资料id
	 * 
	 * @pdOid 4683943d-867a-4941-b194-04ed428b1a66 */
	public int dataId;
	
	@Override
	public String toString() {
		return "DataAttachment [dataAttachmentId=" + dataAttachmentId
				+ ", dataUpload=" + dataUpload + ", dataName=" + dataName
				+ ", dataType=" + dataType + ", dataExplain=" + dataExplain
				+ ", dataId=" + dataId + "]";
	}
	public int getDataAttachmentId() {
		return dataAttachmentId;
	}
	public void setDataAttachmentId(int dataAttachmentId) {
		this.dataAttachmentId = dataAttachmentId;
	}
	public String getDataUpload() {
		return dataUpload;
	}
	public void setDataUpload(String dataUpload) {
		this.dataUpload = dataUpload;
	}
	public String getDataName() {
		return dataName;
	}
	public void setDataName(String dataName) {
		this.dataName = dataName;
	}
	public String getDataType() {
		return dataType;
	}
	public void setDataType(String dataType) {
		this.dataType = dataType;
	}
	public String getDataExplain() {
		return dataExplain;
	}
	public void setDataExplain(String dataExplain) {
		this.dataExplain = dataExplain;
	}
	public int getDataId() {
		return dataId;
	}
	public void setDataId(int dataId) {
		this.dataId = dataId;
	}




}