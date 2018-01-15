package entity;

import java.util.Date;

/**
 * 评价表--主要结构信息
 * 主要是对应评论表信息
 * 因为存在三类商品的评论，在同一页面取值时，会出现不同的情况
 * 因此，统一三个评论表的信息
 */
public class CommentDetail {
	private Integer cId;//评论编号
	private String content;//评论内容
	private Integer uId;//评论人的编号
	private Integer gId;//评论商品的编号
	private Date time;//评论时间
	public Integer getcId() {
		return cId;
	}
	public void setcId(Integer cId) {
		this.cId = cId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getuId() {
		return uId;
	}
	public void setuId(Integer uId) {
		this.uId = uId;
	}
	public Integer getgId() {
		return gId;
	}
	public void setgId(Integer gId) {
		this.gId = gId;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public CommentDetail(Integer cId, String content, Integer uId, Integer gId, Date time) {
		super();
		this.cId = cId;
		this.content = content;
		this.uId = uId;
		this.gId = gId;
		this.time = time;
	}
	public CommentDetail() {
		super();
	}
	@Override
	public String toString() {
		return "Comment [cId=" + cId + ", content=" + content + ", uId=" + uId + ", gId=" + gId + ", time=" + time
				+ "]";
	}
}
