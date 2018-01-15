package service.impl;

import java.util.List;

import dao.SkinCommentDao;
import dao.impl.SkinCommentDaoImpl;
import entity.CommentDetail;
import entity.SkinComment;
import service.SkinCommentService;

public class SkinCommentServiceImpl implements SkinCommentService{
	//
	SkinCommentDao pcd=new SkinCommentDaoImpl();

	/**
	 * 显示出所有关于该香水的评论
	 */
	@Override
	public List<CommentDetail> showAllSkinComment(Integer scomment) {
		List<CommentDetail> selectAllComment = pcd.selectAllSkinComment(scomment);
		return selectAllComment;
	}

	/**
	 * 增加关于该香水的评价
	 */
	@Override
	public boolean addSkinComment(CommentDetail scomment) {
		return pcd.addSkinComment(scomment)!=0;
	}
	

}
