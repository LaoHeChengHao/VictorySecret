package servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BaseServlet")
public class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String methodName = request.getParameter("method");
		/**
		 * getDeclaredMethod()方法
		 * 获取当前类的方法--反射中的方法
		 * 两个参数:(String name, Class<?>... parameterTypes)
		 * 第一个参数是方法名,第二个参数是参数数组--类的类型数组
		 */
		try {
			Method method = this.getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			//设置访问权限为true
			method.setAccessible(true);
			//调用
			method.invoke(this, request,response);
			
		} catch (Exception e) {
			e.printStackTrace();
		} 

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
