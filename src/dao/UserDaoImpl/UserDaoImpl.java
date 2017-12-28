package dao.UserDaoImpl;

import dao.BaseDao;
import dao.UserDao;
import entity.User;

public class UserDaoImpl extends BaseDao<User> implements UserDao {

    @Override
    public int addUser(User user) {

        String sql="insert into user(userName,email,telephone,activate) values(?,?,?,0)";

        return this.update(sql,user.getUserName(),user.getEmail(),user.getTelephone());
    }

    @Override
    public int updateUser(User user) {
        String sql = "update user set activate=1 where email=?";

        return this.update(sql,user.getEmail());
    }
}
