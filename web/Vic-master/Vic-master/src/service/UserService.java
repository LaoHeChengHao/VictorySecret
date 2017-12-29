package service;

import entity.User;

/**
 * service层
 * 用户登录注册
 * @author 施余缘
 *
 */
public interface UserService {

	/**
	 * 登录
	 * @return
	 */
	User login(User user);
	
	
}
