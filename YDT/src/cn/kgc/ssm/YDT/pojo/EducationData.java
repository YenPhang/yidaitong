package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 教育背景
 * 
 * @pdOid c54cf44b-1756-4760-b697-6a9d4996a87d */
public class  EducationData implements Serializable 
{  
	/** 教育背景id
	 * 
	 * @pdOid 8532fe9d-05eb-4a72-a2cd-323a492b9b01 */
	private int educationData;
	/** 入学年份
	 * 
	 * @pdOid 5d47f7b7-dcee-4800-8d81-5ea35fcb4924 */
	private Date entranceYear;
	/** 毕业年份
	 * 
	 * @pdOid 09e4fcbc-83ea-45a0-824d-4574982d673a */
	private Date graduateYear;
	/** 学校
	 * 
	 * @pdOid 426cf588-72dc-4ffb-b76c-3326ede54bf7 */
	private String schoolName;
	/** 学历
	 * 
	 * @pdOid f413e0ad-13cd-4202-976f-4b467f85b243 */
	private String recordOfFormalSchooling;
	/** 专业
	 * 
	 * @pdOid f8e4c084-849a-48ed-99cc-1b3c34971871 */
	private String major;
	/** 备注
	 * 
	 * @pdOid 2906312d-64d3-491f-94cc-22b0c2b04755 */
	private String note;
	/** 资料附件id
	 * 
	 * @pdOid 6e933c08-591b-4edd-9434-9b205f6e9fbd */
	private long dataAttachmentId;
	/** 资料完善状态
	 * 
	 * @pdOid cf3eab97-eed2-4fe0-9344-4abaac102c40 */
	private int dataCompleteStatus;
	
	@Override
	public String toString() {
		return "EducationData [educationData=" + educationData + ", entranceYear="
				+ entranceYear + ", graduateYear=" + graduateYear + ", schoolName="
				+ schoolName + ", recordOfFormalSchooling="
				+ recordOfFormalSchooling + ", major=" + major + ", note=" + note
				+ ", dataAttachmentId=" + dataAttachmentId
				+ ", dataCompleteStatus=" + dataCompleteStatus + "]";
	}
	public int getEducationData() {
		return educationData;
	}
	public void setEducationData(int educationData) {
		this.educationData = educationData;
	}
	public Date getEntranceYear() {
		return entranceYear;
	}
	public void setEntranceYear(Date entranceYear) {
		this.entranceYear = entranceYear;
	}
	public Date getGraduateYear() {
		return graduateYear;
	}
	public void setGraduateYear(Date graduateYear) {
		this.graduateYear = graduateYear;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getRecordOfFormalSchooling() {
		return recordOfFormalSchooling;
	}
	public void setRecordOfFormalSchooling(String recordOfFormalSchooling) {
		this.recordOfFormalSchooling = recordOfFormalSchooling;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public long getDataAttachmentId() {
		return dataAttachmentId;
	}
	public void setDataAttachmentId(long dataAttachmentId) {
		this.dataAttachmentId = dataAttachmentId;
	}
	public int getDataCompleteStatus() {
		return dataCompleteStatus;
	}
	public void setDataCompleteStatus(int dataCompleteStatus) {
		this.dataCompleteStatus = dataCompleteStatus;
	} 


}