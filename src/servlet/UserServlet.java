package servlet;


import WEBUtils.MailUtils;
import WEBUtils.ParameterUtiles;
import entity.User;
import service.ServiceImpl.UserServiceImpl;
import service.UserService;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name = "UserServlet",urlPatterns = "/servlet/UserServlet")
public class UserServlet extends BaseServlet {

    UserService userService= new UserServiceImpl();

    protected void addUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user = ParameterUtiles.param2Bean(req, new User());

        boolean b = userService.addUser(user);

        if (b){
            try {
                MailUtils.sendMail(user.getEmail(),"http://192.168.10.184:6060/servlet/UserServlet?method=updateUser&id="+user.getEmail());
            } catch (MessagingException e) {
                e.printStackTrace();
            }
            req.getRequestDispatcher("/维多利亚/订阅成功.jsp").forward(req,resp);
        }else{
            req.getRequestDispatcher("/维多利亚/404错误.jsp").forward(req,resp);
        }

    }


    protected void updateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");
        User user = new User();
        user.setEmail(id);
        boolean b = userService.updateUser(user);

        if (b){
            req.getRequestDispatcher("/维多利亚/激活成功.jsp").forward(req,resp);
        }else{
            req.getRequestDispatcher("/维多利亚/404错误.jsp").forward(req,resp);
        }

    }




}
