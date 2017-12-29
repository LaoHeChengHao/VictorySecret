package dao.impl;

import dao.BaseDao;
import dao.UserDao;
import entity.User;
/**
 * 
 * dao层
 * 实现登录
 * @author 施余缘
 *
 */
public class UserDaoImpl extends BaseDao<User> implements UserDao{


	/**
	 * 登录功能
	 */
	@Override
	public User getUserByTwo(User user) {
		String sql="select * from user where userName=?and email=?";
		User bean = this.getBean(sql, user.getUserName(),user.getEmail());
		return bean;
	}

}
