package cn.bdqn.service;

import cn.bdqn.entity.User;

/**
 * 登录注册的业务接口
 * @author asus
 *
 */
public interface UserService {

	/**
	 * 登录
	 * @return
	 */
	User login(User user);
	/**
	 * 注册
	 * 增加 一个用户对象
	 */
	int saveUser(User user);
	
	/**
	 * 判断用户名是否存在
	 * @param user
	 * @return
	 */
	User getUserByOne(String userName);
	
}
