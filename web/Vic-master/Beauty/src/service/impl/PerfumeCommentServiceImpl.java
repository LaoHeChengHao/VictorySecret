package service.impl;

import java.util.List;

import dao.PerfumeCommentDao;
import dao.impl.PerfumeCommentDaoImpl;
import entity.CommentDetail;
import entity.PerfumeComment;
import service.PerfumeCommentService;

public class PerfumeCommentServiceImpl implements PerfumeCommentService{
	//
	PerfumeCommentDao pcd=new PerfumeCommentDaoImpl();

	/**
	 * 显示出所有关于该香水的评论
	 */
	@Override
	public List<CommentDetail> showAllPerfumeComment(Integer pcomment) {
		List<CommentDetail> selectAllComment = pcd.selectAllPerfumeComment(pcomment);
		return selectAllComment;
	}

	/**
	 * 增加关于该香水的评价
	 */
	@Override
	public boolean addPerfumeComment(CommentDetail pcomment) {
		return pcd.addPerfumeComment(pcomment)!=0;
	}
	

}
