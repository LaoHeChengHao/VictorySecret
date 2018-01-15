package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.CommentDetail;
import entity.Detail;
import entity.Good;
import entity.Perfume;
import entity.Rouge;
import entity.Skin;
import service.PerfumeCommentService;
import service.PerfumeService;
import service.RougeCommentService;
import service.RougeService;
import service.SkinCommentService;
import service.SkinService;
import service.impl.PerfumeCommentServiceImpl;
import service.impl.PerfumeServiceImpl;
import service.impl.RougeCommentServiceImpl;
import service.impl.RougeServiceImpl;
import service.impl.SkinCommentServiceImpl;
import service.impl.SkinServiceImpl;

/*@WebServlet("/GoodServlet")*/
/**
 * 有关商品的处理Servlet
 * @author 施余缘
 *
 */
public class GoodServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * 使用service层的方法 使用香水、唇部、护肤的service方法
	 */
	PerfumeService per = new PerfumeServiceImpl();
	RougeService rou = new RougeServiceImpl();
	SkinService ski = new SkinServiceImpl();
	
	//三种商品评论的方法
		PerfumeCommentService pcs=new PerfumeCommentServiceImpl();
		SkinCommentService scs=new SkinCommentServiceImpl();
		RougeCommentService rcs=new RougeCommentServiceImpl();
	
	/**
	 * 获取所有符合条件的三种商品的信息
	 * 再封装到一个对象中，
	 * 将其放入域中 并转发到index页面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void showNewGood(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.使用service层的方法，获取最新上架的八种商品
		List<Perfume> eightPerfume = per.showEightPerfume();
		List<Rouge> eightRouge = rou.showEightRouge();
		List<Skin> eightSkin = ski.showEightSkin();

		// 2.实例化一个商品对象
		Good good = new Good();

		// 3.将获取的三种商品set到对象中
		good.setPerfume(eightPerfume);
		good.setRouge(eightRouge);
		good.setSkin(eightSkin);

		// 4.将从承载着三种商品的数据，放入域中
		request.setAttribute("good", good);

		// 5.转发到首页
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * 根据id显示出对应的商品信息
	 * 并显示出对应的商品评论
	 * 此方法使用到两次传值
	 * 在【single】页面显示
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void showOneGood(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.创建一个公共的实体类对象
		Detail detail=new Detail();
		// 2.从页面表单中获取出指定的id
		String ids = request.getParameter("id");
		// 3.将获得的id转换成int型
		int Id = Integer.parseInt(ids);
		// 4.从数据库中查找三种商品的id是否包含这个id，判断属于哪类商品
		boolean findRougeById = rou.findRougeById(Id);
		boolean findSkinById = ski.findSkinById(Id);
		boolean findPerfumeById = per.findPerfumeById(Id);
		//5.根据id查出数据
		Rouge findRById = rou.findRById(Id);
		Skin findSById = ski.findSById(Id);
		Perfume findPById = per.findPById(Id);
		//定义评价集合
		List<CommentDetail> comments = null;
		if (findRougeById) {
			/**
			 * 将找到的口红信息对应到detail中
			 * 方便页面取值时保持一致性
			 */
			detail.setId(Id);//1
			detail.setName(findRById.getrName());//2
			detail.setStyleName(findRById.getStyleName());//3
			detail.setInventory(findRById.getInventory());//4
			detail.setNetWeight(findRById.getNetWeight());//5
			detail.setPicturesId(findRById.getPicturesId());//6
			detail.setPrice(findRById.getPrice());//7
			detail.setSale(findRById.getSale());//8
			detail.setTime(findRById.getTime());//9
			detail.setTypeEffect(findRById.getEffect());//10口红为功效
			detail.setColour(findRById.getColour());//11
			detail.setPicture(findRById.getPicture());//12
			// 6.将获得的对象存入域中
			request.getSession().setAttribute("oneGood", detail);
			//7.获取口红的评论
			 comments = rcs.showAllRougeComment(detail.getId());
		} else if (findSkinById) {
			/**
			 * 将找到的护肤品信息对应到detail中
			 * 方便页面取值时保持一致性
			 */
			detail.setId(Id);//1
			detail.setName(findSById.getsName());//2
			detail.setStyleName(findSById.getStyleName());//3
			detail.setInventory(findSById.getInventory());//4
			detail.setNetWeight(findSById.getNetWeight());//5
			detail.setPicturesId(findSById.getPicturesId());//6
			detail.setPrice(findSById.getPrice());//7
			detail.setSale(findSById.getSale());//8
			detail.setTime(findSById.getTime());//9
			detail.setTypeEffect(findSById.getEffect());//10护肤品为功效
			detail.setColour(findSById.getColour());//11
			detail.setPicture(findSById.getPicture());//12
			// 6.将获得的对象存入域中
			request.getSession().setAttribute("oneGood", detail);
			//7.读取出指定的护肤品的评论
		     comments = scs.showAllSkinComment(detail.getId());
		} else if (findPerfumeById) {
			/**
			 * 将找到的香水信息对应到detail中
			 * 方便页面取值时保持一致性
			 */
			detail.setId(Id);//1
			detail.setName(findPById.getpName());//2
			detail.setStyleName(findPById.getStyleName());//3
			detail.setInventory(findPById.getInventory());//4
			detail.setNetWeight(findPById.getNetWeight());//5
			detail.setPicturesId(findPById.getPicturesId());//6.
			detail.setPrice(findPById.getPrice());//7
			detail.setSale(findPById.getSale());//8
			detail.setTime(findPById.getTime());//9
			detail.setTypeEffect(findPById.getType());//10香水为香型
			detail.setColour(findPById.getColour());//11
			detail.setPicture(findPById.getPicture());//12
			// 6.将获得的对象存入域中
			request.getSession().setAttribute("oneGood", detail);
			//7.获取指定的香水评论信息
			comments = pcs.showAllPerfumeComment(detail.getId());
		}
		//8.将评论集合放入session域中，方便跳转，保证再次跳转时不需要在域中赋值
		request.getSession().setAttribute("comments", comments);
		// 9.转发详情页面
		request.getRequestDispatcher("/single.jsp").forward(request, response);
	}

}
