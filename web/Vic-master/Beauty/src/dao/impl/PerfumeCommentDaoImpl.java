package dao.impl;

import java.util.List;

import dao.BaseDao;
import dao.PerfumeCommentDao;
import entity.CommentDetail;
import entity.PerfumeComment;

/**
 * DAO层
 * 香水实现类
 * @author 施余缘
 *
 */
public class PerfumeCommentDaoImpl	extends BaseDao<CommentDetail> implements PerfumeCommentDao{

	/**
	 * 根据商品id查找出关于香水的评论
	 * 
	 */
	@Override
	public List<CommentDetail> selectAllPerfumeComment(Integer pcomment) {
		String sql="select * from pcomment where gid= ?";
		List<CommentDetail> listBean = this.getListBean(sql, pcomment);
		return listBean;
	}

	/**
	 * 新增香水的评论
	 */
	@Override
	public int addPerfumeComment(CommentDetail pcomment) {
		String sql="insert into pcomment(Content,uId,gId) values (?,?,?)";
		int addPerfumeComment = this.update(sql,pcomment.getContent(),pcomment.getuId(), pcomment.getgId());
		return addPerfumeComment;
	}

}
