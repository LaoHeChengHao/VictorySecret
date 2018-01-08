package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

import entity.Perfume;
import service.PerfumeService;
import service.impl.PerfumeServiceImpl;

//@WebServlet("/PerfumeServlet")
public class PerfumeServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	//使用service层的方法
	PerfumeService per=new PerfumeServiceImpl();
	
	/**
	 * 在香水界面显示所有香水信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void showAllPerfume(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//使用service层中的方法，获取所有香水信息
		List<Perfume> allPerfume = per.showAllPerfume();
		//将获取的信息放入域中
		request.setAttribute("allPerfume",allPerfume);
		//将结果转发到页面去
		request.getRequestDispatcher("/xiang.jsp").forward(request, response);
	}


	/**
	 * 取消
	 * 获取最新的八件香水商品
	 * 显示在首页index
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void showNewPerfume(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * 显示单个香水信息
	 * 转发至详情页
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void showOnePerfume(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//1.创建一个香水对象
		Perfume perfume=new Perfume();
		//2.从页面表单中获取出指定的id
		String pIdS = request.getParameter("id");
		//3.将获得的id转换成int型
		int pId = Integer.parseInt(pIdS);
		//4.设置对象的id
		perfume.setpId(pId);
		//5.使用service层的方法，查找指定的商品信息
		Perfume onePerfume = per.showOnePerfume(perfume);
		//6.将获得的对象存入域中
		request.setAttribute("onePerfume", onePerfume);
		//7.转发详情页面
		request.getRequestDispatcher("/single.jsp").forward(request, response);
		
	}
}
