package dao;

import java.util.List;

import entity.Perfume;

/**
 * dao层
 * 香水的dao层接口
 * @author 施余缘
 *
 */
public interface PerfumeDao {
	//显示所有香水的信息
	List<Perfume> getAllPerfume();
	
	//显示最新上市的八种香水信息
	List<Perfume> getEightPerfume();
	
	//显示单个香水信息
	Perfume getOnePerfume(Perfume perfume);

}
