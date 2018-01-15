package dao.impl;

import java.util.List;

import dao.BaseDao;
import dao.RougeCommentDao;
import entity.CommentDetail;
import entity.RougeComment;

/**
 * DAO层
 * 口红实现类
 * @author 施余缘
 *
 */
public class RougeCommentDaoImpl extends BaseDao<CommentDetail> implements RougeCommentDao{

	/**
	 * 查找出关于香水的评论
	 * 
	 */
	@Override
	public List<CommentDetail> selectAllRougeComment(Integer rcomment) {
		String sql="select * from rcomment where gid=?";
		List<CommentDetail> listBean = this.getListBean(sql, rcomment);
		return listBean;
	}

	/**
	 * 新增香水的评论
	 */
	@Override
	public int addRougeComment(CommentDetail rcomment) {
		String sql="insert into rcomment(Content,uId,gId) values (?,?,?)";
		int addRougeComment = this.update(sql,rcomment.getContent(),rcomment.getuId(), rcomment.getgId());
		return addRougeComment;
	}

}
