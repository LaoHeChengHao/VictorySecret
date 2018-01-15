package service;

import java.util.List;

import entity.CommentDetail;
import entity.PerfumeComment;

/**
 * service层
 * 香水
 * @author 施余缘
 *
 */
public interface PerfumeCommentService {
		//查找出指定商品的所有评论信息
		List<CommentDetail> showAllPerfumeComment(Integer gId);
		
		//增加评论信息
		boolean addPerfumeComment(CommentDetail pComment);
}
