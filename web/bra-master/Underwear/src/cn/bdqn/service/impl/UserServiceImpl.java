package cn.bdqn.service.impl;

import cn.bdqn.dao.UserDao;
import cn.bdqn.dao.impl.UserDaoImpl;
import cn.bdqn.entity.User;
import cn.bdqn.service.UserService;

public class UserServiceImpl implements UserService{

	UserDao userdao=new UserDaoImpl();
	/**
	 * 用户登录
	 */
	@Override
	public User login(User user) {
		return userdao.getUserByTwo(user);
	}
	@Override
	public int saveUser(User user) {
		return userdao.saveUser(user);
	}
	@Override
	public User getUserByOne(String userName) {
		return userdao.getUserByOne(userName);
	}

	
}

