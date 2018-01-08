package dao.impl;

import java.util.List;

import dao.BaseDao;
import dao.CommentDao;
import entity.Comment;
import entity.Perfume;

/**
 * DAO层
 * 香水实现类
 * @author 施余缘
 *
 */
public class PerfumeCommentDaoImpl	extends BaseDao<Comment> implements CommentDao{

	/**
	 * 查找出关于香水的评论
	 * 
	 */
	@Override
	public List<Comment> selectAllComment(Comment comment) {
		String sql="select * from pcomment where gid=?";
		List<Comment> listBean = this.getListBean(sql, comment.getgId());
		return listBean;
	}

	/**
	 * 新增香水的评论
	 */
	@Override
	public int addComment(Comment comment) {
		String sql="insert into pcomment(cId,Content,uId,gId) values (?,?,?,?)";
		int addPerfumeComment = this.update(sql,comment.getcId(),comment.getContent(),comment.getuId(), comment.getgId());
		return addPerfumeComment;
	}

}
