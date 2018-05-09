package cn.kgc.ssm.YDT.pojo;

import java.io.Serializable;
import java.util.Date;

/** 资金流记录
 * 
 * @pdOid d5175866-75a1-44c9-a236-fc4916474706 */
public class  Fund implements Serializable 
{  
	/** 资金流记录id
	 * 
	 * @pdOid 4e3d3bcb-87dd-4755-8c7b-aaeead704ac2 */
	private int fundId;
	/** 用户ID
	 * 
	 * @pdOid fcba5bb2-e38a-4c6b-9ce2-8d1350d20ee7 */
	private int userId;
	/** 资金流数值
	 * 
	 * @pdOid b038e47d-62d8-4c37-a9fd-c7ad536eddf1 */
	private float fund;
	/** 交易时间
	 * 
	 * @pdOid 6b9533f4-7983-48f3-ba53-33f29add7e38 */
	private Date tradeTime;
	/** 资金流种类
	 * 
	 * @pdOid fb22f481-d891-4656-83aa-7de0619c09ce */
	private int fundTypeId;
	/** 说明
	 * 
	 * @pdOid d0754067-5821-41fc-a38d-629900170353 */
	private String statement;
	/** 当前账户总资产
	 * 
	 * @pdOid 80fe73a7-b049-4cdc-ab39-e6e52d46cb81 */
	private float curTotalMoney;
	/** 当前可用余额
	 * 
	 * @pdOid a6ed5560-138c-46be-9ace-fc817c8e58fc */
	private float curAbleMoney;
	/** 当前冻结资金
	 * 
	 * @pdOid bcc31c5d-753f-4191-b286-2fbdcecf07a3 */
	private float curUnableMoney;
	
	@Override
	public String toString() {
		return "Fund [fundId=" + fundId + ", userId=" + userId + ", fund=" + fund
				+ ", tradeTime=" + tradeTime + ", fundTypeId=" + fundTypeId
				+ ", statement=" + statement + ", curTotalMoney=" + curTotalMoney
				+ ", curAbleMoney=" + curAbleMoney + ", curUnableMoney="
				+ curUnableMoney + "]";
	}
	public int getFundId() {
		return fundId;
	}
	public void setFundId(int fundId) {
		this.fundId = fundId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public float getFund() {
		return fund;
	}
	public void setFund(float fund) {
		this.fund = fund;
	}
	public Date getTradeTime() {
		return tradeTime;
	}
	public void setTradeTime(Date tradeTime) {
		this.tradeTime = tradeTime;
	}
	public int getFundTypeId() {
		return fundTypeId;
	}
	public void setFundTypeId(int fundTypeId) {
		this.fundTypeId = fundTypeId;
	}
	public String getStatement() {
		return statement;
	}
	public void setStatement(String statement) {
		this.statement = statement;
	}
	public float getCurTotalMoney() {
		return curTotalMoney;
	}
	public void setCurTotalMoney(float curTotalMoney) {
		this.curTotalMoney = curTotalMoney;
	}
	public float getCurAbleMoney() {
		return curAbleMoney;
	}
	public void setCurAbleMoney(float curAbleMoney) {
		this.curAbleMoney = curAbleMoney;
	}
	public float getCurUnableMoney() {
		return curUnableMoney;
	}
	public void setCurUnableMoney(float curUnableMoney) {
		this.curUnableMoney = curUnableMoney;
	} 



}