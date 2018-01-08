package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Rouge;
import service.RougeService;
import service.impl.RougeServiceImpl;
/*@WebServlet("/RougeServlet")*/
public class RougeServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
	//使用service层的方法
	RougeService rou=new RougeServiceImpl();
	
	/**
	 * 在界面显示所有口红的信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void showAllRouge(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//使用service层中的方法，获取所有香水信息
				List<Rouge> allRouge = rou.showAllRouge();
				//将获取的信息放入域中
				request.setAttribute("allRouge",allRouge);
				//将结果转发到页面去
				request.getRequestDispatcher("/chun.jsp").forward(request, response);
	}

	
	protected void showOneRouge(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.创建一个口红对象
		Rouge rouge=new Rouge();
		//2.从页面表单中获取出指定的id
		String rIdS = request.getParameter("id");
		//3.将获得的id转换成int型
		int rId = Integer.parseInt(rIdS);
		//4.设置对象的id
		rouge.setrId(rId);
		//5.使用service层的方法，查找指定的商品信息
		Rouge oneRouge = rou.showOneRouge(rouge);
		//6.将获得的对象存入域中
		request.setAttribute("oneRouge", oneRouge);
		//7.转发详情页面
		request.getRequestDispatcher("/single.jsp").forward(request, response);
	}

}
