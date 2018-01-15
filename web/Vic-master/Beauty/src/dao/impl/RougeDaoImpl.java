package dao.impl;

import java.util.List;

import dao.BaseDao;
import dao.RougeDao;
import entity.Perfume;
import entity.Rouge;

/**
 * dao层
 * 口红的dao层实现类
 * @author 施余缘
 *
 */
public class RougeDaoImpl extends BaseDao<Rouge> implements RougeDao{

	/**
	 * 获取数据库中所有口红的信息
	 * 将其应用到口红的界面上，用分页显示出来
	 */
	@Override
	public List<Rouge> getAllRouge() {
		String sql="select * from rouge";
		List<Rouge> listBean = this.getListBean(sql);
		return listBean;
	}

	@Override
	public List<Rouge> getEightRouge() {
		String sql="SELECT * FROM rouge ORDER BY `time` DESC LIMIT 0,8";
		List<Rouge> listBean = this.getListBean(sql);
		return listBean;
	}

	@Override
	public Rouge getOneRouge(Rouge rouge) {
		String sql="select * from Rouge where rId=?";
		Rouge bean = this.getBean(sql, rouge.getrId());
		return bean;
	}

	/**
	 * 根据id查找出该口红信息
	 */
	@Override
	public Rouge getRougeById(int rid) {
		String sql="select * from Rouge where rId=?";
		Rouge rouge = this.getBean(sql, rid);
		return rouge;
	}

}
