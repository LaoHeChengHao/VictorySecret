package service.impl;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import entity.User;
import service.UserService;

/**
 * UserService层的实现类
 * 实现用户登录
 * @author 施余缘
 *
 */
public class UserServiceImpl implements UserService{

	UserDao userdao=new UserDaoImpl();
	/**
	 * 用户登录
	 */
	@Override
	public User login(User user) {
		return userdao.getUserByTwo(user);
	}

	
}
