package entity;

/**
 * 评论实体类
 * @author 施余缘
 *
 */
public class Comment {
	private Integer cId;//评论编号
	private String content;//评论内容
	private Integer uId;//评论人的编号
	private Integer gId;//评论商品的编号
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
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(Integer cId, String content, Integer uId, Integer gId) {
		super();
		this.cId = cId;
		this.content = content;
		this.uId = uId;
		this.gId = gId;
	}
	@Override
	public String toString() {
		return "Comment [cId=" + cId + ", content=" + content + ", uId=" + uId + ", gId=" + gId + "]";
	}
	
}
