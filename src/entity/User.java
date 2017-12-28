package entity;

public class User {
    //会员编号
    private Integer id;
    //会员姓名
    private String userName;
    //会员邮箱
    private String email;
    //会员手机号码
    private String telephone;
    //会员创建时间
    private String createTime;
    //是否会员账号已经激活，激活为1，未激活为0
    private Integer activate;


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", email='" + email + '\'' +
                ", telephone='" + telephone + '\'' +
                ", createTime='" + createTime + '\'' +
                ", activate=" + activate +
                '}';
    }

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

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public Integer getActivate() {
        return activate;
    }

    public void setActivate(Integer activate) {
        this.activate = activate;
    }

    public User(Integer id, String userName, String email, String telephone, String createTime,Integer activate) {

        this.id = id;
        this.userName = userName;
        this.email = email;
        this.telephone = telephone;
        this.createTime = createTime;
        this.activate = activate;
    }

    public User() {

    }
}
