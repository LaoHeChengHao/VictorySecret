package service.impl;

import java.util.List;

import dao.CommentDao;
import dao.impl.PerfumeCommentDaoImpl;
import entity.Comment;
import service.PerfumeCommentService;

public class PerfumeCommentServiceImpl implements PerfumeCommentService{
	//
	CommentDao pcd=new PerfumeCommentDaoImpl();

	/**
	 * 显示出所有关于该香水的评论
	 */
	@Override
	public List<Comment> showAllComment(Comment comment) {
		List<Comment> selectAllComment = pcd.selectAllComment(comment);
		return selectAllComment;
	}

	/**
	 * 增加关于该香水的评价
	 */
	@Override
	public boolean addComment(Comment comment) {
		return pcd.addComment(comment)!=0;
	}
	

}
