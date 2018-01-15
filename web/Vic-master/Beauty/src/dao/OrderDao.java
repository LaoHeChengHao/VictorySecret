package dao;

import java.util.List;

import entity.Order;

/**
 * 订单接口
 * 指向三种商品的订单
 * 订单属于个人信息的一部分，需关联到用户
 *   增删改查都需要围绕用户id
 * @author 施余缘
 *
 */
public interface OrderDao {
	//显示出该用户的所有订单
	List<Order> getAllOrder(Integer uId);
	
	//为指定用户添加订单
	int addOrder(Integer uId);
	
	/**
	 * 显示该用户某一具体订单的信息
	 * //具体订单需靠订单号获取
	 * @param uId
	 * @param gId
	 * @return
	 */
	//1.香水
	Order getOnePerfumeOrder(Integer uId,Integer gId);
	
	//2.护肤品
	Order getOneSkinOrder(Integer uId,Integer gId);
	
	//3.口红
	Order getOneRougeOrder(Integer uId,Integer gId);
	
	
	
	
	
	
	
	
}
