package entity;

import java.util.List;

/**
 * 评论实体类
 * 承载三种商品的评论
 * 主要存放没类商品的全部评价
 * 在使用时，经过判断，取出不同商品的评价
 * 
 * @author 施余缘
 *
 */
public class Comment {
	private List<PerfumeComment> pComment;//获取所有香水评论
	private List<SkinComment> sComment;//获取所有护肤品评论
	private List<RougeComment> rComment;//获取所有口红评论
	public List<PerfumeComment> getpComment() {
		return pComment;
	}
	public void setpComment(List<PerfumeComment> pComment) {
		this.pComment = pComment;
	}
	public List<SkinComment> getsComment() {
		return sComment;
	}
	public void setsComment(List<SkinComment> sComment) {
		this.sComment = sComment;
	}
	public List<RougeComment> getrComment() {
		return rComment;
	}
	public void setrComment(List<RougeComment> rComment) {
		this.rComment = rComment;
	}
	public Comment(List<PerfumeComment> pComment, List<SkinComment> sComment, List<RougeComment> rComment) {
		super();
		this.pComment = pComment;
		this.sComment = sComment;
		this.rComment = rComment;
	}
	public Comment() {
		super();
	}
	@Override
	public String toString() {
		return "Comment [pComment=" + pComment + ", sComment=" + sComment + ", rComment=" + rComment + "]";
	}
	
	
}
