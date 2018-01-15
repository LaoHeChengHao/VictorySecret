package service.impl;

import java.util.List;

import dao.impl.PerfumeDaoImpl;
import entity.Perfume;
import entity.Rouge;
import service.PerfumeService;

public class PerfumeServiceImpl  implements PerfumeService{
	PerfumeDaoImpl pdi=new PerfumeDaoImpl();
	/**
	 *  显示所有的香水信息
	 * 显示在香水页面，需要使用分页
	 */
	@Override
	public List<Perfume> showAllPerfume() {
		return pdi.getAllPerfume();
	}

	/**
	 * 显示最新上市的八件香水信息
	 * 使用在首页，展示最新产品
	 */
	@Override
	public List<Perfume> showEightPerfume() {
		return pdi.getEightPerfume();
	}

	/**
	 * 显示指定香水信息
	 */
	@Override
	public Perfume showOnePerfume(Perfume perfume) {
		return pdi.getOnePerfume(perfume);
	}

	/**
	 * 实现根据id判断数据库中是否存在该id
	 */
	@Override
	public boolean findPerfumeById(int pId) {
		Perfume perfumeById = pdi.getPerfumeById(pId);
		return perfumeById!=null;//不等于null,表示数据库中有这个id
	}

	/**
	 * 实现根据id查找出数据
	 */
	@Override
	public Perfume findPById(int pId) {
		Perfume perfumeById = pdi.getPerfumeById(pId);
		return perfumeById ;
	}

}
