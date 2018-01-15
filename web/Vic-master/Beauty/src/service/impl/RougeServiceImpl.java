package service.impl;

import java.util.List;

import dao.impl.RougeDaoImpl;
import entity.Rouge;
import service.RougeService;

/**
 * service层
 * 口红的实现类
 * @author 施余缘
 *
 */
public class RougeServiceImpl implements RougeService{
	RougeDaoImpl rdi=new RougeDaoImpl();
	/**
	 * 显示所有口红信息
	 */
	@Override
	public List<Rouge> showAllRouge() {
		return rdi.getAllRouge();
	}

	/**
	 * 显示最新八件口红
	 */
	@Override
	public List<Rouge> showEightRouge() {
		return rdi.getEightRouge();
	}

	/**
	 * 显示指定口红信息
	 */
	@Override
	public Rouge showOneRouge(Rouge rouge) {
		return rdi.getOneRouge(rouge);
	}

	/**
	 * 找指定id
	 */
	@Override
	public boolean findRougeById(int rId) {
		Rouge rougeById = rdi.getRougeById(rId);
		return rougeById!=null;//不等于null,表示数据库中有这个id
	}

	@Override
	public Rouge findRById(int rId) {
		return rdi.getRougeById(rId);
	}

}
