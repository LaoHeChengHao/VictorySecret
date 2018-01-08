package service;

import java.util.List;

import entity.Perfume;

/**
 * Service层
 * 香水
 * @author 施余缘
 *
 */
public interface PerfumeService {
		//显示所有香水的信息
		List<Perfume> showAllPerfume();
		
		//显示最新上市的八种香水信息
		List<Perfume> showEightPerfume();
		
		//显示单个香水信息
		Perfume showOnePerfume(Perfume perfume);
}
