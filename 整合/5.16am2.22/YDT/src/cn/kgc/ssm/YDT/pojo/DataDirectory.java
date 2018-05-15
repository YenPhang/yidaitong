package cn.kgc.ssm.YDT.pojo;

public class DataDirectory {
	//数据字典id
	private int ddId;
	//字段类型编码
	private String typeCode;
	//字段类型名称
	private String typeName;
	//类型值id
	private String valueId;
	//类型值名称
	private String valueName;
	public int getDdId() {
		return ddId;
	}
	public void setDdId(int ddId) {
		this.ddId = ddId;
	}
	public String getTypeCode() {
		return typeCode;
	}
	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getValueId() {
		return valueId;
	}
	public void setValueId(String valueId) {
		this.valueId = valueId;
	}
	public String getValueName() {
		return valueName;
	}
	public void setValueName(String valueName) {
		this.valueName = valueName;
	}
	
}
