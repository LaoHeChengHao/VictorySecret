package dao.impl;

import java.util.List;

import dao.BaseDao;
import dao.SkinCommentDao;
import entity.CommentDetail;
import entity.SkinComment;

/**
 * DAO层
 * 护肤实现类
 * @author 施余缘
 *
 */
public class SkinCommentDaoImpl	extends BaseDao<CommentDetail> implements SkinCommentDao{

	/**
	 * 查找出关于护肤的评论
	 * 
	 */
	@Override
	public List<CommentDetail> selectAllSkinComment(Integer scomment) {
		String sql="select * from scomment where gid=?";
		List<CommentDetail> listBean = this.getListBean(sql, scomment);
		return listBean;
	}

	/**
	 * 新增护肤的评论
	 */
	@Override
	public int addSkinComment(CommentDetail scomment) {
		String sql="insert into scomment(Content,uId,gId) values (?,?,?)";
		int addSkinComment = this.update(sql,scomment.getContent(),scomment.getuId(), scomment.getgId());
		return addSkinComment;
	}

}
