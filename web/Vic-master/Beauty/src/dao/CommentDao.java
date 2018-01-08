package dao;

import java.util.List;

import entity.Comment;

/**
 * 
 * @author 施余缘
 *
 */
public interface CommentDao {
	//查找出指定商品的所有评论信息
	List<Comment> selectAllComment(Comment comment);
	
	//增加评论信息
	int addComment(Comment comment);
}
