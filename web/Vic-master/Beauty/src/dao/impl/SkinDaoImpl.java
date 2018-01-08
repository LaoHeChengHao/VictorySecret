package dao.impl;

import java.util.List;

import dao.BaseDao;
import dao.SkinDao;
import entity.Rouge;
import entity.Skin;

/**
 * dao层
 * 护肤品的实现类
 * @author 施余缘
 *
 */
public class SkinDaoImpl extends BaseDao<Skin> implements SkinDao{

	/**
	 * 实现查询所有护肤品的信息
	 */
	@Override
	public List<Skin> getAllSkin() {
		String sql="select * from Skin";
		List<Skin> listBean = this.getListBean(sql);
		return listBean;
	}

	/**
	 * 实现查询最新护肤品的信息
	 */
	@Override
	public List<Skin> getEightSkin() {
		String sql="SELECT * FROM Skin ORDER BY `time` DESC LIMIT 0,8";
		List<Skin> listBean = this.getListBean(sql);
		return listBean;
	}

	/**
	 * 实现查询单个护肤品信息
	 */
	@Override
	public Skin getOneSkin(Skin skin) {
		String sql="select * from Rouge where pId=?";
		Skin bean = this.getBean(sql, skin.getsId());
		return bean;
	}

}