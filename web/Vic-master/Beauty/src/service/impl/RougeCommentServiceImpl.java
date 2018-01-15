package service.impl;

import java.util.List;

import dao.RougeCommentDao;
import dao.impl.RougeCommentDaoImpl;
import entity.CommentDetail;
import entity.RougeComment;
import service.RougeCommentService;

/**
 * service层
 * 口红实现类
 * @author 施余缘
 *
 */
public class RougeCommentServiceImpl implements RougeCommentService{
	//
	RougeCommentDao pcd=new RougeCommentDaoImpl();

	/**
	 * 显示出所有关于该口红的评论
	 */
	@Override
	public List<CommentDetail> showAllRougeComment(Integer rcomment) {
		List<CommentDetail> selectAllComment = pcd.selectAllRougeComment(rcomment);
		return selectAllComment;
	}

	/**
	 * 增加关于该口红的评价
	 */
	@Override
	public boolean addRougeComment(CommentDetail rcomment) {
		return pcd.addRougeComment(rcomment)!=0;
	}
	

}
