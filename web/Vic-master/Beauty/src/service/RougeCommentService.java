package service;

import java.util.List;

import entity.CommentDetail;
import entity.RougeComment;

/**
 * service层
 * 口红
 * @author 施余缘
 *
 */
public interface RougeCommentService {
		//查找出指定商品的所有评论信息
		List<CommentDetail> showAllRougeComment(Integer rComment);
		
		//增加评论信息
		boolean addRougeComment(CommentDetail rComment);
}
