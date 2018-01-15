package dao;

import java.util.List;

import entity.CommentDetail;
import entity.PerfumeComment;

/**
 * Dao层
 * 香水接口
 * @author 施余缘
 *
 */
public interface PerfumeCommentDao {
	//查找出指定商品的所有评论信息
	List<CommentDetail> selectAllPerfumeComment(Integer pcomment);
	
	//增加评论信息
	int addPerfumeComment(CommentDetail pcomment);
}
