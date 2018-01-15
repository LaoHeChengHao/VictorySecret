package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import entity.Comment;
import entity.CommentDetail;
import entity.Detail;
import entity.Perfume;
import entity.PerfumeComment;
import entity.Rouge;
import entity.RougeComment;
import entity.Skin;
import entity.SkinComment;
import entity.User;
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

/*@WebServlet("/CommentServlet")*/
public class CommentServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	//三种商品评论的方法
	PerfumeCommentService pcs=new PerfumeCommentServiceImpl();
	SkinCommentService scs=new SkinCommentServiceImpl();
	RougeCommentService rcs=new RougeCommentServiceImpl();
	
	//
	
	//三种商品操作的方法
	PerfumeService per = new PerfumeServiceImpl();
	RougeService rou = new RougeServiceImpl();
	SkinService ski = new SkinServiceImpl();
	
	/**
	 * 添加评论
	 */
	protected void addComment(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("login");
		Detail detail = (Detail)session.getAttribute("oneGood");
		CommentDetail comment = new CommentDetail();
		comment.setContent(request.getParameter("content"));
		comment.setgId(detail.getId());
		comment.setuId(user.getId());
		//保存评论
		Integer gid = detail.getId();
		//4.查看该id属于哪类商品
		Rouge findRById = rou.findRById(gid);
		Skin findSById = ski.findSById(gid);
		Perfume findPById = per.findPById(gid);
		/**
		 * 判断
		 */
		//口红
		if(findRById!=null){
			rcs.addRougeComment(comment);
		}//护肤品
		else if(findSById!=null){
			scs.addSkinComment(comment);
		}//香水
		else if(findPById!=null){
			pcs.addPerfumeComment(comment);
		}else{
			System.out.println("该商品不存在");
		}
		
		request.getRequestDispatcher("GoodServlet?method=showOneGood&id="+detail.getId()).forward(request, response);
		
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * 显示香水的所有评价
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 *//*
	protected void showAllComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//1.实例化总评论类、香水评论、口红评论、护肤品评论
				Comment comment= new Comment();
				PerfumeComment pComment=new PerfumeComment();
				RougeComment rComment=new RougeComment();
				SkinComment sComment=new SkinComment();
				//2.从页面读取id
				String Id = request.getParameter("id");
				//3.将id转化为int型
				int gid=Integer.parseInt(Id);
				//4.查看该id属于哪类商品
				Rouge findRById = rou.findRById(gid);
				Skin findSById = ski.findSById(gid);
				Perfume findPById = per.findPById(gid);
				*//**
				 * 判断
				 *//*
				//口红
				if(findRById!=null){
					//根据商品id查询出指定的评价集合
					rComment.setgId(gid);
					//从方法中获取商品id为gid的所有口红评价
					List<RougeComment> showAllRougeComment = rcs.showAllRougeComment(rComment);
					//将评价放入
					comment.setrComment(showAllRougeComment);
				}//护肤品
				else if(findSById!=null){
					//根据商品id查询出指定的评价集合
					sComment.setgId(gid);
					//从方法中获取商品id为gid的所有口红评价
					List<SkinComment> showAllSkinComment = scs.showAllSkinComment(sComment);
					//将护肤品评价放入
					comment.setsComment(showAllSkinComment);
				}//香水
				else if(findPById!=null){
					//根据商品id查询出指定的评价集合
					pComment.setgId(gid);
					//从方法中获取商品id为gid的所有口红评价
					List<PerfumeComment> showAllPerfumeComment = pcs.showAllPerfumeComment(pComment);
					//将香水评价放入
					comment.setpComment(showAllPerfumeComment);
				}else{
					System.out.println("该商品不存在");
				}
				//使用gson对象
				Gson gson=new Gson();
				//将gson转换成json形式
				String json = gson.toJson(comment);
				//向界面传输值
				response.getWriter().print(json);
	}
*/
	/**
	 * 显示香水的所有评价
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	/*protected void showAllComment2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//1.实例化总评论类、香水评论、口红评论、护肤品评论
				CommentDetail comment= new CommentDetail();
				PerfumeComment pComment=new PerfumeComment();
				RougeComment rComment=new RougeComment();
				SkinComment sComment=new SkinComment();
				//2.从页面读取id
				String Id = request.getParameter("id");
				//3.将id转化为int型
				int gid=Integer.parseInt(Id);
				//4.查看该id属于哪类商品
				Rouge findRById = rou.findRById(gid);
				Skin findSById = ski.findSById(gid);
				Perfume findPById = per.findPById(gid);
				*//**
				 * 判断
				 *//*
				//口红
				if(findRById!=null){
					//根据商品id查询出指定的评价集合
					rComment.setgId(gid);
					//
					comment.setcId(rComment.getcId());//评论标号
					comment.setContent(rComment.getContent());
					comment.setcId(gid);//评论商品的标号
					comment.setTime(rComment.getTime());
					comment.setuId(rComment.getuId());//用户id
				}//护肤品
				else if(findSById!=null){
					comment.setcId(sComment.getcId());//评论标号
					comment.setContent(sComment.getContent());
					comment.setcId(gid);//评论商品的标号
					comment.setTime(sComment.getTime());
					comment.setuId(sComment.getuId());//用户id
				}//香水
				else if(findPById!=null){
					comment.setcId(pComment.getcId());//评论标号
					comment.setContent(pComment.getContent());
					comment.setcId(gid);//评论商品的标号
					comment.setTime(pComment.getTime());
					comment.setuId(pComment.getuId());//用户id
				}else{
					System.out.println("该商品不存在");
				}
				//7.将添加了各类商品的评价列表放进域中
				request.setAttribute("showAllComment", comment);
				//8.转发到页面
				request.getRequestDispatcher("/comment.jsp").forward(request, response);
				//写入Ajax流中
				PrintWriter out = response.getWriter();
				out.print(JSON.toJSONString(comment));
				out.flush();
				out.close();
				Gson gson=new Gson();
				String json = gson.toJson(comment);
				response.getWriter().print(json);
	}
*/
	

}
