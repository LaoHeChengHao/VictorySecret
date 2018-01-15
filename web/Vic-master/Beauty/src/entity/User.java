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
	private String sex;//性别
	private String email;//邮箱
	private String telephone;//联系方式
	private Date createTime;//创建时间
	private String picture;//照片
	public User(String userName, String password, String email, String telephone) {
		super();
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.telephone = telephone;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", password=" + password + ", email=" + email
				+ ", telephone=" + telephone + ", createTime=" + createTime + "]";
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
   public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPicture() {
		if(picture.equals("")){
		if(sex.equals("男")){
			picture="images/user/user1.jpg";
		}else{
			picture="images/user/user2.jpg";
		}
		}
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	//带用户名和密码的构造函数
	public User(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	//无参构造，用于反射
	public User() {
		super();
	}
	
}
