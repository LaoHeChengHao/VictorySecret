package service;

import java.util.List;

import entity.CommentDetail;
import entity.SkinComment;

/**
 * service层
 * 香水
 * @author 施余缘
 *
 */
public interface SkinCommentService {
		//查找出指定商品的所有评论信息
		List<CommentDetail> showAllSkinComment(Integer sComment);
		
		//增加评论信息
		boolean addSkinComment(CommentDetail sComment);
}
