package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/** 公告信息
 * 
 * @pdOid 2431167f-3764-4324-9f3f-521db30357f2 */ 
public class  Notice implements Serializable 
{  
	/** 公告id
	 * 
	 * @pdOid 55e3fea2-9ae8-4c0c-9f3f-13b874653d28 */
	private int noticeId;
	/** 公告标题
	 * 
	 * @pdOid 9366e0e3-3b2f-477a-9450-8e1d027297d8 */
	private String noticeTitle;
	/** 发表时间
	 * 
	 * @pdOid ffca2d6b-4e84-47c7-9cc2-c92d876a05c0 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date noticeTime;

	/** 文章来源
	 * 
	 * @pdOid 93741183-791f-4b9f-9799-aa14615d4b66 */
	private String noticeFrom;
	/** 文章正文
	 * 
	 * @pdOid 00343e7b-b0c3-4ee5-888b-4e5efaef2716 */
	private String noticeContent;
	/** 公告板块Id
	 * 
	 * @pdOid a4699dd2-ef01-4839-8fae-fef124a46743 */
	private int noticeTypeId;
	/**
	 * 公告板块名称
	 */
	private String noticeTypeName;
	public String getNoticeTypeName() {
		return noticeTypeName;
	}
	public void setNoticeTypeName(String noticeTypeName) {
		this.noticeTypeName = noticeTypeName;
	}
	@Override
	public String toString() {
		return "Notice [noticeId=" + noticeId + ", noticeTitle=" + noticeTitle
				+ ", noticeTime=" + noticeTime 
				+ ", noticeFrom=" + noticeFrom + ", noticeContent=" + noticeContent
				+ ", noticeTypeId=" + noticeTypeId + "]";
	}
	public int getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public Date getNoticeTime() {
		return noticeTime;
	}
	public void setNoticeTime(Date noticeTime) {
		/*SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String time = simpleDateFormat.format(noticeTime);
		
		try {
			this.noticeTime = simpleDateFormat.parse(time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		this.noticeTime = noticeTime;
	}

	public String getNoticeFrom() {
		return noticeFrom;
	}
	public void setNoticeFrom(String noticeFrom) {
		this.noticeFrom = noticeFrom;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public int getNoticeTypeId() {
		return noticeTypeId;
	}
	public void setNoticeTypeId(int noticeTypeId) {
		this.noticeTypeId = noticeTypeId;
	}


}