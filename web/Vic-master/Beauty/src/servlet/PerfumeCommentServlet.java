package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Comment;
import service.PerfumeCommentService;
import service.impl.PerfumeCommentServiceImpl;

/*@WebServlet("/PerfumeCommentServlet")*/
public class PerfumeCommentServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	//
	PerfumeCommentService pcs=new PerfumeCommentServiceImpl();
	
	/**
	 * 在页面中显示所有关于指定香水的评论
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void showAllPerfumeComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.
		Comment comment= new Comment();
		//2.
		String parameter = request.getParameter("id");
		//3.
		int gid=Integer.parseInt(parameter);
		//4.
		comment.setgId(gid);
		//5.
		List<Comment> showAllComment = pcs.showAllComment(comment);
		//6.转发到页面
		request.getRequestDispatcher("/comment.jsp").forward(request, response);
		
		
	}

	/**
	 * 将页面增加的香水评论存入数据库
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void addPerfumeComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
