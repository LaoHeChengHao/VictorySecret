package dao.impl;

import java.util.List;

import dao.BaseDao;
import dao.PerfumeDao;
import entity.Perfume;

public class PerfumeDaoImpl extends BaseDao<Perfume> implements PerfumeDao{

	/**
	 * 获取所有的香水信息
	 * 显示在香水页面，需要使用分页
	 */
	@Override
	public List<Perfume> getAllPerfume() {
		String sql="select * from perfume";
		List<Perfume> listBean = this.getListBean(sql);
		return listBean;
	}

	/**
	 * 获取最新上市的八件香水信息
	 * 使用在首页，展示最新产品
	 */
	@Override
	public List<Perfume> getEightPerfume() {
		String sql="SELECT * FROM perfume ORDER BY `time` DESC LIMIT 0,8";
		List<Perfume> listBean = this.getListBean(sql);
		return listBean;
	}

	/**
	 * 获取单个商品信息
	 * 使用在详情页
	 */
	@Override
	public Perfume getOnePerfume(Perfume perfume) {
		String sql="select * from perfume where pId=?";
		Perfume bean = this.getBean(sql, perfume.getpId());
		return bean;
	}

}
