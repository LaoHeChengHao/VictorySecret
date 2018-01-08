package dao.impl;

import java.util.Date;

import dao.BaseDao;
import dao.UserDao;
import entity.User;
/**
 * 
 * dao层
 * 实现用户登录和注册
 * @author 施余缘
 *
 */
public class UserDaoImpl extends BaseDao<User> implements UserDao{


	/**
	 * 用户登录
	 */
	@Override
	public User getUserByTwo(User user) {
		String sql="select * from user where userName= ? and password=? ";
		User bean = this.getBean(sql, user.getUserName(),user.getPassword());
		return bean;
	}
	
	/**
	 * 用户登录前查询数据库中用户名是否存在
	 */
	
	public User getUserByOne(String userName) {
		String sql="select * from user where userName=?";
		User bean = this.getBean(sql, userName);
		return bean;
	}

	@Override
	public int saveUser(User user) {
		String sql=" INSERT INTO victoria.user (userName,PASSWORD,email, telephone, createTime) "+
				" VALUES (?, ?, ?,?,?)";
		int result = this.update(sql, user.getUserName(),user.getPassword(),user.getEmail(),user.getTelephone(),new Date());
		return result;
	}

}
