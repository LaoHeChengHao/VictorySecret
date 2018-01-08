package dao;

import java.util.List;

import entity.Rouge;

/**
 * dao层
 * 口红的dao层接口
 * @author 施余缘
 *
 */
public interface RougeDao {
		//显示所有口红的信息
		List<Rouge> getAllRouge();
		
		//显示最新上市的八种口红信息
		List<Rouge> getEightRouge();
		
		//显示单个香水信息
		Rouge getOneRouge(Rouge rouge);

}
