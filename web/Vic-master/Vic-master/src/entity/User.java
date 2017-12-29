package entity;

import java.util.Date;

/**
 * 用户实体类
 * 
 * @author 施余缘
 *
 */
public class User {
	private Integer id;//会员编号,
	private String  userName;//会员姓名,
	private String email;//会员密码,
	private String telephone;//电话
	private Date createTime;//会员创建时间
	/**
	 * get和set方法
	 * @return
	 */
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
}
