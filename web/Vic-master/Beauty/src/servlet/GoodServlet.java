package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Good;
import entity.Perfume;
import entity.Rouge;
import entity.Skin;
import service.PerfumeService;
import service.RougeService;
import service.SkinService;
import service.impl.PerfumeServiceImpl;
import service.impl.RougeServiceImpl;
import service.impl.SkinServiceImpl;

/*@WebServlet("/GoodServlet")*/
public class GoodServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * 使用service层的方法
	 * 使用香水、唇部、护肤的service方法
	 */
		PerfumeService per=new PerfumeServiceImpl();
		RougeService rou=new RougeServiceImpl();
		SkinService ski=new SkinServiceImpl();
		
		
   /**
    * 获取所有符合条件的三种商品的信息
    * 再封装到一个对象中，将其放入域中
    * 并转发到index页面
    * @param request
    * @param response
    * @throws ServletException
    * @throws IOException
    */
	protected void showNewGood(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//1.使用service层的方法，获取最新上架的八种商品
				List<Perfume> eightPerfume = per.showEightPerfume();
				List<Rouge> eightRouge = rou.showEightRouge();
				List<Skin> eightSkin = ski.showEightSkin();
				
				//2.实例化一个商品对象
				Good good = new Good();
				
				//3.将获取的三种商品set到对象中
				good.setPerfume(eightPerfume);
				good.setRouge(eightRouge);
				good.setSkin(eightSkin);
				System.out.println(good.getRouge());
				//4.将从承载着三种商品的数据，放入域中
				request.setAttribute("good", good);
		     
				//5.转发到首页
		        request.getRequestDispatcher("index.jsp").forward(request, response); 
	}

	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}*/

}
