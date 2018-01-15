package cn.bdqn.dao.impl;



import java.util.Date;

import cn.bdqn.dao.BaseDao;
import cn.bdqn.dao.UserDao;
import cn.bdqn.entity.User;

public class UserDaoImpl extends BaseDao<User> implements UserDao{


	/**
	 * 用户登录
	 */
	@Override
	public User getUserByTwo(User user) {
		String sql="select * from user where userName= ? and password=? ";
		User bean = this.getBean(sql, user.getUsername(),user.getPassword());
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
		String sql=" INSERT INTO user (id,userName,password,email,address,telephone) "+
				" VALUES (?,?, ?, ?,?,?)";
		int result = this.update(sql,user.getUid(), user.getUsername(),user.getPassword(),user.getEmail(),user.getClass(),user.getTelephone());
		return result;
	}

	@Override
	public User getUserByUserNameAndPassword(User user) {
		// TODO Auto-generated method stub
		return null;
	}

}
