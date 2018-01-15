package dao;

import java.util.List;

import entity.CommentDetail;
import entity.RougeComment;

/**
 * Dao层
 * 口红接口
 * @author 施余缘
 *
 */
public interface RougeCommentDao {
	//查找出指定商品的所有评论信息
	List<CommentDetail> selectAllRougeComment(Integer pcomment);
	
	//增加评论信息
	int addRougeComment(CommentDetail rcomment);
}
