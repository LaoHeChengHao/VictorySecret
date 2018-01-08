package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import service.UserService;
import service.impl.UserServiceImpl;
import servlet.BaseServlet;
import utils.WebUtils;

/**
 * 用户Servlet
 * 经过判断进行登录或注册
 * 将原先loginServlet和registServlet中的操作方法复制过来
 * 在doGet或doPost方法中进行判断调用
 */
public class UsersServlet  extends BaseServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService=new UserServiceImpl();   
	/**
	 * 登录的方法
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//动态获取元素
		//User user=WebUtils.param2Bean(request,new User());
		User user = new User(request.getParameter("userName"),request.getParameter("password"));
		User login = userService.login(user);
		/*System.out.println(login);*/
		//3.判断
		if(login!=null){
			request.getSession().setAttribute("login", login);
			//找到对象,登录成功,重定向到Login_Success.jsp
			//使用getContextPath()动态的获取网页的路径
			response.sendRedirect("index.jsp");
		}else{
			
			request.setAttribute("msg", "用户名或密码错误");
			//登录失败,转发到本页面
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}
	
	/**
	 * 注销操作
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void lognOut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().removeAttribute("login");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	/**
	 * 处理用户注册请求
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void register(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User(
				request.getParameter("userName"),
				request.getParameter("password"),
				request.getParameter("email"),
				request.getParameter("telephone")
				);
		int saveUser = userService.saveUser(user);
		
		if(saveUser == 0)
		{
			//保存用户失败
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
		else
		{
			request.getSession().setAttribute("login", user);
			response.sendRedirect("index.jsp");
		}
	}
	
	
	
	/**
	 * 判断用户名是否已经存在
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void checkUserName(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("userName");
		User userByOne = userService.getUserByOne(userName);
		System.out.println("显示："+userByOne);
		String tag = "";
		if(userByOne.getUserName()== null)
		{
			//用户名不存在，可以使用
			tag = "true";
		}
		else
		{
			//用户名存在，不可以使用
			tag = "false";
		}
		
		PrintWriter out = response.getWriter();
		out.print(tag);
		out.flush();
		out.close();
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
