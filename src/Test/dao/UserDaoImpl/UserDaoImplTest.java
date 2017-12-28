package dao.UserDaoImpl;


import dao.UserDao;
import entity.User;
import org.testng.annotations.Test;



public class UserDaoImplTest {

    UserDao userDao=new UserDaoImpl();
    @Test//Pass
    public void testAddUser() throws Exception {
        User user = new User(null,"何晨昊","279304739@qq.com","13851896954",null,0);
        int i = userDao.addUser(user);
        System.out.println(i);
    }

    @Test//Pass
    public void testUpdateUser() throws Exception {
        User user = new User();
        user.setId(1);
        int i = userDao.updateUser(user);
        System.out.println(i);
    }



}