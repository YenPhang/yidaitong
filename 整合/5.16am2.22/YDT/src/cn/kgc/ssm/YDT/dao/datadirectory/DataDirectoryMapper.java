package cn.kgc.ssm.YDT.dao.datadirectory;
/**
 * @Description 数据字典的数据库操作方法
 * @author dhp667
 */

import java.util.List;

import cn.kgc.ssm.YDT.pojo.DataDirectory;

public interface DataDirectoryMapper {
	
	/**
	 * @Description 根据传入的数据表中的某些值获得数据集合
	 * @param dataDirectory
	 * @return
	 */
	public List<DataDirectory> getDataByDirectory(DataDirectory dataDirectory);

}
