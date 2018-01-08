package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Skin;
import service.SkinService;
import service.impl.SkinServiceImpl;

/*@WebServlet("/SkinServlet")*/
public class SkinServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	// 使用service层的方法
	SkinService ski = new SkinServiceImpl();

	/**
	 * 在界面显示所有护肤品
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void showAllSkin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.
		List<Skin> showAllSkin = ski.showAllSkin();
		System.out.println(showAllSkin);
		// 2.
		request.setAttribute("showAllSkin", showAllSkin);
		// 3.
		request.getRequestDispatcher("/body.jsp").forward(request, response);
	}

	/**
	 * 在详情页显示出单个商品信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void showOneSkin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				//1.创建一个护肤品对象
				Skin skin=new Skin();
				//2.从页面表单中获取出指定的id
				String sIdS = request.getParameter("id");
				//3.将获得的id转换成int型
				int sId = Integer.parseInt(sIdS);
				//4.设置对象的id
				skin.setsId(sId);
				//5.使用service层的方法，查找指定的商品信息
				Skin oneSkin = ski.showOneSkin(skin);
				//6.将获得的对象存入域中
				request.setAttribute("oneSkin", oneSkin);
				//7.转发详情页面
				request.getRequestDispatcher("/single.jsp").forward(request, response);
	}

}
