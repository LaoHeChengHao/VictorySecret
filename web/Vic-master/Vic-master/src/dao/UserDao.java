package dao;

import entity.User;

public interface UserDao {
	/**
	 * 用户登录的方法
	 * 根据用户名和密码的匹配进行用户登录
	 * 返回一个User对象,以便检验
	 */
	User getUserByTwo(User user);
}
