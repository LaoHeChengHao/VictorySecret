package service.ServiceImpl;

import dao.UserDao;
import dao.UserDaoImpl.UserDaoImpl;
import entity.User;
import service.UserService;

public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();
    @Override
    public boolean addUser(User user) {
        int i = userDao.addUser(user);
        return i!=0;
    }

    @Override
    public boolean updateUser(User user) {
        int i = userDao.updateUser(user);
        return i!=0;
    }
}
