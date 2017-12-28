package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class BaseServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            req.setCharacterEncoding("utf-8");
                 //响应转中文
                 resp.setHeader("Content-Type", "Textml;Charset=utf-8");
                 resp.setContentType("text/html;charset=utf-8");
                 resp.setCharacterEncoding("utf-8");

         //动态获取method整合
                 String method = req.getParameter("method");
                 Method declaredMethod = null;
                 try {
                     declaredMethod = this.getClass().getDeclaredMethod(method, HttpServletRequest.class, HttpServletResponse.class);
                     //打开权限
                     declaredMethod.setAccessible(true);
                     //调用方法
                     declaredMethod.invoke(this,req,resp);
                 } catch (NoSuchMethodException e) {
                     e.printStackTrace();
                 } catch (IllegalAccessException e) {
                     e.printStackTrace();
                 } catch (InvocationTargetException e) {
                     e.printStackTrace();
                 }
    }

}
