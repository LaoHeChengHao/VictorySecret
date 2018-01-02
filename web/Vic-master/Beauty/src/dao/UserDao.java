package dao;

import entity.User;

public interface UserDao {
	/**
	 * 用户登录
	 * 通过
	 */
	User getUserByTwo(User user);
	
	/**
	 * 判断用户名是否存在
	 * @param user
	 * @return
	 */
	User getUserByOne(String userName);
	
	/**
	 * 注册
	 * 增加 一个用户对象
	 */
	int saveUser(User user);
	
	
	
	
	
}
