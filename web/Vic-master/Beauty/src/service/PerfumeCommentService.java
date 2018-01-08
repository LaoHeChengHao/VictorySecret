package service;

import java.util.List;

import entity.Comment;

/**
 * service层
 * 香水
 * @author 施余缘
 *
 */
public interface PerfumeCommentService {
		//查找出指定商品的所有评论信息
		List<Comment> showAllComment(Comment comment);
		
		//增加评论信息
		boolean addComment(Comment comment);
}
