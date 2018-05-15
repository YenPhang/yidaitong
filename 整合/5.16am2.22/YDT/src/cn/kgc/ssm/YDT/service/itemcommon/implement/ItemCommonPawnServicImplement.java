package cn.kgc.ssm.YDT.service.itemcommon.implement;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import cn.kgc.ssm.YDT.dao.itemcommon.ItemCommomMapper;
import cn.kgc.ssm.YDT.pojo.ItemCommon;
import cn.kgc.ssm.YDT.pojo.Pawn;
import cn.kgc.ssm.YDT.service.itemcommon.ItemCommonPawnService;


@Service("itemCommonPawnServic")
public class ItemCommonPawnServicImplement  implements ItemCommonPawnService{

	@Autowired
	@Qualifier("itemCommomMapper")
	private ItemCommomMapper itemCommomMapper;


	public ItemCommomMapper getItemCommomMapper() {
		return itemCommomMapper;
	}

	public void setItemCommomMapper(ItemCommomMapper itemCommomMapper) {
		this.itemCommomMapper = itemCommomMapper;
	}


	

	/**
	 * 根据前台传入的房产信息存在数据库中
	 * @param notice
	 * @param noticeType
	 * @return
	 */
	public boolean addItemCommom(ItemCommon itemCommon) {
		int i = itemCommomMapper.addItemCommom(itemCommon);
		if(i > 0) {
			return true;
		}else {
			return false;
		}
	}

	/**
	 * 根据前台传入的模糊查询进行匹配  
	 * @param notice
	 * @param noticeType
	 * @return
	 */
	public List<ItemCommon> getItemCommonList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		List<ItemCommon> itemCommons=itemCommomMapper.getItemCommonList(map);
	
		return itemCommons;
	}

	/**
	 * 根据前台传入的添加抵押物信息
	 * @param notice
	 * @param noticeType
	 * @return
	 */
	public boolean addItdPawn(Pawn pawn) {
		int i = itemCommomMapper.addItdPawn(pawn);
		if(i > 0) {
			return true;
		}else {
			return false;
		}
	}
	
	
		
		
	
}

