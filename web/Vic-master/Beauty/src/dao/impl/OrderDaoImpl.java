package dao.impl;

import java.util.List;

import dao.BaseDao;
import dao.OrderDao;
import entity.Order;

/**
 * 香水订单
 * 实现订单接口
 * @author 施余缘
 *
 */
public class OrderDaoImpl extends BaseDao<Order> implements OrderDao{

	/**
	 * 实现获取数据库中指定用户的所有订单
	 */
	@Override
	public List<Order> getAllOrder(Integer uId) {
		String sql="select * from order where uId=?";
		List<Order> listBean = this.getListBean(sql, uId);
		return listBean;
	}
	
	
	/**
	 * 添加订单信息到数据库
	 */
	@Override
	public int addOrder(Integer uId) {
		String sql="insert into order () values() where uid=?";
		int add = this.update(sql, uId);
		return add;
	}


	/**
	 * 获取指定用户和指定香水商品的订单
	 * 香水id开头为1
	 */
	@Override
	public Order getOnePerfumeOrder(Integer uId, Integer gId) {
		String sql="select *  from `order` where uId=? and gId like?";
		Order bean = this.getBean(sql, uId,"1%");
		return bean;
	}

	/**
	 * 获取指定用户和指定口红商品的订单
	 * 护肤品id开头为2
	 */
	@Override
	public Order getOneSkinOrder(Integer uId, Integer gId) {
		String sql="select *  from `order` where uId=? and gId like?";
		Order bean = this.getBean(sql, uId,"2%");
		return bean;
	}

	/**
	 * 获取指定用户和指定口红商品的订单 
	 * 口红id开头为3
	 */
	@Override
	public Order getOneRougeOrder(Integer uId, Integer gId) {
		String sql="select *  from `order` where uId=? and gId like?";
		Order bean = this.getBean(sql, uId,"3%");
		return bean;
	}
	
	
	
	
	
	

}
