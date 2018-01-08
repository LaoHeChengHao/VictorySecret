package entity;

import java.util.Date;

/**
 * 用户实体类
 * @author 施余缘
 *
 */
public class User {
	private Integer id;//
	private String  userName;//用户名
	private String password;//密码
	private String email;//
	private String telephone;//
	public User(String userName, String password, String email, String telephone) {
		super();
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.telephone = telephone;
	}
	private Date createTime;//
	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", password=" + password + ", email=" + email
				+ ", telephone=" + telephone + ", createTime=" + createTime + "]";
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * getset
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
	public User(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
