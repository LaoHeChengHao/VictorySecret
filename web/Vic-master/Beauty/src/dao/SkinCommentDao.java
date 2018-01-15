package dao;

import java.util.List;

import entity.CommentDetail;
import entity.SkinComment;

/**
 * 
 * @author 施余缘
 *
 */
public interface SkinCommentDao {
	//查找出护肤品商品的所有评论信息
	List<CommentDetail> selectAllSkinComment(Integer scomment);
	
	//增加评论信息
	int addSkinComment(CommentDetail scomment);
}
